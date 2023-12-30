classdef SimulinkAddOne < matlab.System & matlab.system.mixin.Propagates ...
        & matlab.system.mixin.CustomIcon
    % Simple System Object example
    %
    % NOTE: When renaming the class name Untitled, the file name
    % and constructor name must be updated to use the class name.
    %
    % This template includes most, but not all, possible properties, attributes,
    % and methods that you can implement for a System object in Simulink.

    % Public, tunable properties
    properties
        % Set the initial condition
        initCondition = 10;
    end

    % Public, non-tunable properties
    properties(Nontunable)

    end

    properties(DiscreteState)
       
    end

    % Pre-computed constants
    properties(Access = private)
         StateVariable = 0;
    end

    methods
        % Constructor
        function obj = SimulinkAddOne(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
    end

    methods(Access = protected)
        %% Common functions
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
            obj.StateVariable = obj.initCondition;
        end

        function y = stepImpl(obj,u)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            y = u  + 1  + obj.StateVariable;
            obj.StateVariable = y;
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties            
        end
        
        function releaseImpl(obj)
             
            if coder.target('matlab')
                fprintf('block terminate \n');
            else
                str_msg = coder.const(['block terminate',uint8(10),uint8(0)]);
                coder.ceval('printf',coder.rref(str_msg));
            end
        end

        %% Backup/restore functions
        function s = saveObjectImpl(obj)
            % Set properties in structure s to values in object obj

            % Set public properties and states
            s = saveObjectImpl@matlab.System(obj);

            % Set private and protected properties
            %s.myproperty = obj.myproperty;
        end

        function loadObjectImpl(obj,s,wasLocked)
            % Set properties in object obj to values in structure s

            % Set private and protected properties
            % obj.myproperty = s.myproperty; 

            % Set public properties and states
            loadObjectImpl@matlab.System(obj,s,wasLocked);
        end

        %% Simulink functions
        function ds = getDiscreteStateImpl(obj)
            % Return structure of properties with DiscreteState attribute
            ds = struct([]);
        end

        function flag = isInputSizeLockedImpl(obj,index)
            % Return true if input size is not allowed to change while
            % system is running
            flag = true;
        end

        function out = getOutputSizeImpl(obj)
            % Return size for each output port
            out = [1 1];

            % Example: inherit size from first input port
            % out = propagatedInputSize(obj,1);
        end

        function icon = getIconImpl(obj)
            % Define icon for System block
            icon = mfilename('class'); % Use class name
            % icon = 'My System'; % Example: text icon
            % icon = {'My','System'}; % Example: multi-line text icon
            % icon = matlab.system.display.Icon('myicon.jpg'); % Example: image file icon
        end
    end

    methods(Static, Access = protected)
        %% Simulink customization functions
        function header = getHeaderImpl
            % Define header panel for System block dialog
            header = matlab.system.display.Header(mfilename('class'));
        end

        function group = getPropertyGroupsImpl
            % Define property section(s) for System block dialog
            group = matlab.system.display.Section(mfilename('class'));
        end
    end
end
