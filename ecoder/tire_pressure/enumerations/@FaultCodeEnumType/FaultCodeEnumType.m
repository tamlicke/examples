classdef ( ...
        ConstructOnLoad = false, ...
        HandleCompatible = false, ...
        Hidden = false, ...
        InferiorClasses = {},  ...
        Sealed = false ...
        ) ...
        FaultCodeEnumType < Simulink.IntEnumType

        % Copyright 2021 MathWorks, Inc.

    enumeration
        
        NO_FAULT_CODE_EN              (0)
        HIGH_PRESSURE_FAULT_CODE_EN   (1)
        LOW_PRESSURE_FAULT_CODE_EN    (2)
        RECEPTION_LOSS_FAULT_CODE_EN  (3)
        
    end
    
    methods ( ...
            Abstract = false, ...
            Access = public, ...
            Hidden = false, ...
            Static = true, ...
            Sealed = true ...
            )
        
        function [defaultEnumerationValue] = getDefaultValue( )
            
            defaultEnumerationValue = FaultCodeEnumType.NO_FAULT_CODE_EN;
            
            return;
            
        end
        
        function [descriptionString] = getDescription( )
            
            descriptionString = ...
                'This defines an enumerated type for fault codes.';
            
            return;
            
        end
        
        function [headerFileShortName] = getHeaderFile( )
            
            headerFileShortName = '';
            
            return;
            
        end
        
        function [dataScope] = getDataScope( )
            
            dataScope = 'Exported';
            
            return;
            
        end
        
        function [classNameShouldBeAdded] = addClassNameToEnumNames( )
            
            classNameShouldBeAdded = true;
            
            return;
            
        end
        
    end
    
end