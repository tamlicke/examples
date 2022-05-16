classdef ( ...
        ConstructOnLoad = false, ...
        HandleCompatible = true, ...
        Hidden = false, ...
        InferiorClasses = {},  ...
        Sealed = false ...
        ) ...
        SensorTargetSpecificCodeExternalDependency < coder.ExternalDependency

        % Copyright 2021 Mathworks, Inc.
    
    %#codegen
    
    properties( ...
            AbortSet = false, ...
            Abstract = false, ...
            Constant = true, ...
            Dependent = false, ...
            GetAccess = private, ...
            GetObservable = false, ...
            Hidden = true, ...
            SetObservable = false, ...
            Transient = false ...
            )
        HEADER_FILE_SHORT_NAME = 'sensor_hand_code_header.h';
        SOURCE_FILE_SHORT_NAME = 'sensor_hand_code_source.c';
    end
    
    methods( ...
            Abstract = false, ...
            Access = public, ...
            Hidden = false, ...
            Static = true, ...
            Sealed = true ...
            )
        
        function [populatedVariable] = sensorReadNVMMatlabWrapper(nvmSourceAddressAsUint32,exampleVariableDataTypeAndDims)

            coder.cinclude('stddef.h');
            
            coder.cinclude(SensorTargetSpecificCodeExternalDependency.HEADER_FILE_SHORT_NAME);
            
            assert((true == isa(nvmSourceAddressAsUint32,'uint32')), ...
                'The source address must be a "uint32".');
            
            assert((true == isscalar(nvmSourceAddressAsUint32)), ...
                'The source address must be a scalar.');
            
            populatedVariable = exampleVariableDataTypeAndDims;
            
            elementSize = coder.opaque('size_t','0');
            
            elementSize = coder.ceval('sizeof',exampleVariableDataTypeAndDims);
            
            elementQuantity = cast(numel(exampleVariableDataTypeAndDims),'like',coder.opaque('size_t','0'));
            
            sourceAddress = ...
                cast(nvmSourceAddressAsUint32,'like',coder.opaque('void *','NULL'));
            
            coder.ceval('sensor_read_nvm',sourceAddress,coder.wref(populatedVariable),elementSize,elementQuantity);
            
            return;
        end
        
        
        function [pressure] = sensorReadPressureMATLABWrapper( )
            %#codegen
            pressure = double(0);
            
            pressure = coder.ceval('sensor_read_pressure');
            
            return;
        end
        
        function [ ] = sensorTransmitDataMATLABWrapper(variableToSend)
            
            elementSize = coder.opaque('size_t','0');
            
            elementSize = coder.ceval('sizeof',variableToSend);
            
            elementQuantity = cast(numel(variableToSend),'like',coder.opaque('size_t','0'));
            
            coder.ceval('sensor_transmit_data',coder.rref(variableToSend),elementSize,elementQuantity);
            
            return;
        end
        
        function [descriptiveName] = getDescriptiveName(buildConfigurationObjectHandle)
            
            descriptiveName = ...
                [ ...
                'This class manages the interface to all of the functions in "', ...
                SensorTargetSpecificCodeExternalDependency.HEADER_FILE_SHORT_NAME, ...
                '".' ...
                ];
            
            return;
            
        end
        
        function [supportedContext] = isSupportedContext(buildConfigurationObjectHandle)
            
            supportedContext = true;
            
            return;
        end
        
        function [ ] = updateBuildInfo(buildInfo,buildContext)
            
            externalCodeRootDirectoryAbsolutePath = ...
                SensorTargetSpecificCodeExternalDependency.getHandCodeRootDirectoryAbsolutePath( );
            
            headerFileDirectoryAbsolutePath = ...
                fullfile(externalCodeRootDirectoryAbsolutePath,'include');
            
            buildInfo.addIncludePaths(headerFileDirectoryAbsolutePath);
            
            sourceFileDirectoryAbsolutePath = ...
                fullfile(externalCodeRootDirectoryAbsolutePath,'source');
            
            buildInfo.addSourceFiles(SensorTargetSpecificCodeExternalDependency.SOURCE_FILE_SHORT_NAME);
            
            buildInfo.addSourcePaths(sourceFileDirectoryAbsolutePath);
            
            return;
            
        end
        
    end
    
    methods( ...
            Abstract = false, ...
            Access = private, ...
            Hidden = false, ...
            Static = true, ...
            Sealed = true ...
            )
        
        function [ handCodeRootDirectoryAbsolutePath ] = getHandCodeRootDirectoryAbsolutePath( )
            
            thisFilesFullName = mfilename('fullpath');
            
            thisFilesAbsolutePath = fileparts(thisFilesFullName);
            
            handCodeRootDirectoryRelativePath = ...
                fullfile(thisFilesAbsolutePath,'..');
            
            assert((true == isfolder(handCodeRootDirectoryRelativePath)), ...
                ['The proposed path, "',handCodeRootDirectoryRelativePath,'" does not exist.']);
            
            originalDirectory = pwd( );
            
            cd(handCodeRootDirectoryRelativePath);
            
            handCodeRootDirectoryAbsolutePath = pwd( );
            
            cd(originalDirectory);
            
            return;
        end
        
    end
end

