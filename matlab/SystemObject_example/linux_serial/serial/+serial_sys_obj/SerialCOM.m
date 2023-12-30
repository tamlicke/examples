%UART serial port System Object

classdef SerialCOM < matlab.System & coder.ExternalDependency & matlab.system.mixin.CustomIcon & matlab.system.mixin.Propagates
    %Serial communication block to allow reading and writing to device.
    %Specify device name and read or write options.
    %#codegen
    
    properties (Nontunable)
        % Device Name
        DeviceName = '/dev/ttyPS0';
        
        %Read or Write to serial
        ReadOrWrite = 'Writing';
        
        % Baud Rate
        BaudRateStr = '115200';
    end
    
    properties (Nontunable,Logical)
        % Blocking
        block = false
        
        % Output Number of Bytes Receive
        WriteStatus = true;
        
        % Enable Terminator
        Terminator = false;

        % Enable Header
        Header = false;
    end
    
    properties (Nontunable)
        % Number of bytes to read
        NumBytesRead = 4;
    end
    
    properties (Nontunable,Logical,Hidden)
        % Enable Write Port
        inputEnable = true;
        
        % Enable Read Port
        outputEnable = true;
    end
    
    properties (Nontunable)
        % Terminator Character
        TerminatorChar = '\n';
        % Header Data
        HeaderData = [uint8(hex2dec('DE')) uint8(hex2dec('AD')) uint8(hex2dec('C0')) uint8(hex2dec('DE'))];
    end
    
    properties (Constant, Hidden)
        ReadOrWriteSet = matlab.system.StringSet({'Reading','Writing'});
        BaudRateStrSet = matlab.system.StringSet({...
            '9600',...
            '19200',...
            '48000',...
            '57600',...
            '115200',...
            });
    end
    
    properties (Hidden, Access = private)
        fh_index
    end
    
    properties (Dependent, Hidden)
        ntDeviceName
        SampleRate
        BaudRate
        NumBytesWrite
        ntTerminatorChar
        ntHeaderData
    end
    
    methods
    
        function val = get.inputEnable(obj)
            if strcmp(obj.ReadOrWrite,'Writing')
                val = true;
            else
                val = false;
            end
        end
        
        function val = get.outputEnable(obj)
            if strcmp(obj.ReadOrWrite,'Reading')
                val = true;
            else
                val = false;
            end
        end
        
        function val = get.ntDeviceName(obj)
            val = coder.const(obj.nullTermStr(obj.DeviceName));
        end
        
        function val = get.BaudRate(obj)
            val = coder.const(real(str2double(obj.BaudRateStr))); %str2double returns a complex
        end
        
        function val = get.ReadOrWrite(obj)
            val = coder.const((obj.ReadOrWrite)); %str2double returns a complex
        end
        
        function val = get.ntTerminatorChar(obj)
            % TerminatorChar
            coder.extrinsic('sprintf');
            val = uint8(0);
            val = coder.const(uint8(sprintf(obj.TerminatorChar)));
        end
    end
    
    methods (Access = protected)
        
        function [varargout] = isOutputFixedSizeImpl(obj)
            %Both outputs are always variable-sized
            if obj.outputEnable
                varargout{1} = true;
                if obj.WriteStatus
                    varargout{2} = true;
                end
            elseif obj.WriteStatus
                varargout{1} = true;
            end
        end
        
        function flag = isInactivePropertyImpl(obj,propertyName)
            switch propertyName
                case 'WriteStatus'
                    flag = obj.inputEnable; %only hide if we are input-only
                case 'NumBytesRead'
                    flag = obj.inputEnable; %false;
                case 'Terminator'
                    flag = obj.inputEnable;
                case 'TerminatorChar'
                    flag = ~obj.Terminator || obj.inputEnable;
                case 'block'
                    flag = obj.Terminator;
                case 'Header'
                    flag = ~obj.inputEnable;
                case 'HeaderData'
                    flag = (~obj.inputEnable) || (~obj.Header);
                otherwise
                    flag = false;
            end
        end
        
        function varargout = getOutputSizeImpl(obj)
            if obj.outputEnable
                varargout{1} = double(obj.NumBytesRead);
                if obj.WriteStatus
                    varargout{2} = 1;
                end
            end
        end
        
        function varargout = getOutputDataTypeImpl(obj)
            if obj.outputEnable
                varargout{1} = 'uint8';
                if obj.WriteStatus
                    varargout{2} = 'int32';
                end
            end
        end
        
        function varargout = isOutputComplexImpl(obj)
            if obj.outputEnable
                varargout{1} = false;
                if obj.WriteStatus
                    varargout{2} = false;
                end
            end
        end
        
        function setupImpl(obj)
            devName = obj.ntDeviceName;
            BaudRate_Select = coder.const(obj.BaudRate);
            blockFlag = obj.block;
            if obj.Terminator % force block to be TRUE if using TermChar
                blockFlag = true;
            end
            if coder.target('Rtw')
                fh_index_tmp = coder.nullcopy(int32(0));
                obj.fh_index = coder.nullcopy(int32(0));
                coder.ceval('MW_openSerialPort', ...
                    coder.rref(devName),...
                    uint32(BaudRate_Select),...
                    blockFlag,...
                    coder.wref(fh_index_tmp));
                obj.fh_index = fh_index_tmp;
            end
        end
        
        function  varargout = stepImpl(obj,varargin)
            if coder.target('Rtw')
                if obj.outputEnable
                    MsgLength = int32(0);
                    ReadSize = coder.const(uint32(obj.NumBytesRead));
                    Rx_Out = uint8(zeros(obj.NumBytesRead,1));
                    if ~obj.Terminator
                        coder.ceval('MW_readSerial',obj.fh_index,coder.wref(Rx_Out),ReadSize,coder.wref(MsgLength));
                    else
                        TermChar = coder.const(uint8(obj.ntTerminatorChar));
                        coder.ceval('MW_readSerial_TermCheck',obj.fh_index,coder.wref(Rx_Out),TermChar,ReadSize,coder.wref(MsgLength));
                    end
                    varargout{1} = Rx_Out;
                    if obj.WriteStatus
                        varargout{2} = MsgLength;
                    end
                end
                if obj.inputEnable
                    u = varargin{1};
                    elemSize = obj.get_elem_size(u(1));
                    WriteSize = coder.const(uint32(length(u)*elemSize));
                    if ~obj.Header
                        coder.ceval('MW_writeSerial', obj.fh_index, coder.rref(u), WriteSize);
                    else
                        HeadSize = coder.const(int32(length(obj.HeaderData)));
                        coder.ceval('MW_writeSerial_Header', obj.fh_index, coder.rref(u), WriteSize, obj.HeaderData, HeadSize);
                    end
                end
            else
                if obj.outputEnable
                    MsgLength = int32(0);
                    output = uint8(zeros(obj.NumBytesRead,1));
                    varargout{1} = output;
                    if obj.WriteStatus
                        varargout{2} = MsgLength;
                    end
                end
            end
        end
        
        function resetImpl(obj) %#ok<MANU>
            % Initialize discrete-state properties.
        end
        
        function releaseImpl(obj)
            if coder.target('Rtw')
                devName = obj.ntDeviceName;
                DeviceElement = obj.fh_index;
                coder.ceval('MW_closeSerialPort', coder.rref(devName),DeviceElement);
            end
        end
        
        function icon = getIconImpl(obj)
            devName = obj.ntDeviceName;
            icon = sprintf('Serial UART \n %s', devName);
        end
        
        function N = getNumInputsImpl(obj)
            if obj.inputEnable
                N = 1;
            else
                N = 0;
            end
        end
        
        function N = getNumOutputsImpl(obj)
            N = 0;
            if obj.outputEnable
                N = N + 1;
                if obj.WriteStatus
                    N = N + 1;
                end
            end
        end
        
        function varargout = getInputNamesImpl(obj)
            if obj.inputEnable
                varargout{1} = 'Tx';
            end
        end
        
        function varargout = getOutputNamesImpl(obj)
            if obj.outputEnable
                varargout{1} = 'Rx';
                if obj.WriteStatus
                    varargout{2} = 'Num of Bytes';
                end
            end            
        end
        
    end
    
    methods (Static)
        
        function b = isSupportedContext(context)
            b = context.isCodeGenTarget('rtw');
        end
        
        function ntStr = nullTermStr(str)
            ntStr = coder.nullcopy(uint8(zeros(1,numel(str)+1)));
            ntStr(1:end-1) = uint8(str);
            ntStr(end) = 0;
        end
        
        % Update the build-time buildInfo
        function updateBuildInfo(buildInfo, context)
            if context.isCodeGenTarget('rtw')
                pathStr = fileparts(mfilename('fullpath'));
                buildInfo.addIncludePaths(pathStr);
                buildInfo.addSourcePaths(pathStr);
                
                libRoot = fileparts(strtok(mfilename('fullpath'), '+'));
                inc_path = fullfile(libRoot,'include');
                src_path = fullfile(libRoot,'src');
                
                % Header Files
                coder.cinclude('serial.h');
                buildInfo.addIncludePaths(inc_path);
                % Source Files
                buildInfo.addSourcePaths(src_path);
                buildInfo.addSourceFiles('serial.c');
            end
        end
        
        function name = getDescriptiveName()
            name = 'Serial UART';
        end

        % return the size of the element in bytes
        function [elem_size, dtype] = get_elem_size(data)
            switch(class(data))
                case 'double'
                    elem_size = 8;
                    dtype = 1;
                case 'single'
                    elem_size = 4;
                    dtype = 2;
                case 'int32'
                    elem_size = 4;
                    dtype = 3;
                case 'uint32'
                    elem_size = 4;
                    dtype = 4;
                case 'int16'
                    elem_size = 2;
                    dtype = 5;
                case 'uint16'
                    elem_size = 2;
                    dtype = 6;
                case 'int8'
                    elem_size = 1;
                    dtype = 7;
                case 'uint8'
                    elem_size = 1;
                    dtype = 8;
                case 'logical'
                    elem_size = 1;
                    dtype = 9;
                case 'embedded.fi'
                    nt = numerictype(data);
                    elem_size = 2^ceil(log2(ceil(nt.WordLength / 8)));
                    dtype = 10;
            end
            if ~isreal(data)
                elem_size = elem_size*2;
            end

            elem_size = uint16(elem_size);
            dtype = uint8(dtype);
        end
    end
end
