classdef ( ...
        ConstructOnLoad = false, ...
        HandleCompatible = true, ...
        Hidden = false, ...
        InferiorClasses = {},  ...
        Sealed = false ...
        ) ...
        ControllerTargetSpecificCodeExternalDependency < coder.ExternalDependency
    
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
        HEADER_FILE_SHORT_NAME = 'controller_hand_code_header.h';
        SOURCE_FILE_SHORT_NAME = 'controller_hand_code_source.c';
    end
    
    methods( ...
            Abstract = false, ...
            Access = public, ...
            Hidden = false, ...
            Static = true, ...
            Sealed = true ...
            )
        
        function [populatedVariable] = nvmReadMatlabWrapper(nvmSourceAddressAsUint32,exampleVariableDataTypeAndDims)
                        
            assert((true == isa(nvmSourceAddressAsUint32,'uint32')), ...
                'The source address must be a "uint32".');
            
            assert((true == isscalar(nvmSourceAddressAsUint32)), ...
                'The source address must be a scalar.');
            
            coder.cinclude('stddef.h');
            
            coder.cinclude(ControllerTargetSpecificCodeExternalDependency.HEADER_FILE_SHORT_NAME);
            
            populatedVariable = exampleVariableDataTypeAndDims;
            
            elementSize = coder.opaque('size_t','0');
            
            elementSize = coder.ceval('sizeof',exampleVariableDataTypeAndDims);
            
            elementQuantity = ...
                cast(numel(exampleVariableDataTypeAndDims),'like',coder.opaque('size_t','0'));
            
            nvmSourceAddress = ...
                cast(nvmSourceAddressAsUint32,'like',coder.opaque('void*','NULL'));
            
            coder.ceval('controller_nvm_read',nvmSourceAddress,coder.wref(populatedVariable),elementSize,elementQuantity);
            
            return;
        end
        
        function [ ] = nvmWriteMatlabWrapper(nvmDestinationAddressAsUint32,variableToWrite)

            coder.extrinsic('warning');
            
            assert((true == isa(nvmDestinationAddressAsUint32,'uint32')), ...
                'The source address must be a "uint32".');
            
            assert((true == isscalar(nvmDestinationAddressAsUint32)), ...
                'The source address must be a scalar.');
            
            coder.cinclude('stddef.h');
            coder.cinclude(ControllerTargetSpecificCodeExternalDependency.HEADER_FILE_SHORT_NAME);
            
            elementSize = coder.opaque('size_t','0');
            
            elementSize = ...
                coder.ceval('sizeof',variableToWrite);
            
            elementQuantity = ...
                cast(numel(variableToWrite),'like',coder.opaque('size_t','0'));
            
            nvmDestinationAddress = ...
                cast(nvmDestinationAddressAsUint32,'like',coder.opaque('void*','NULL'));
            
            coder.ceval('controller_nvm_write',coder.rref(variableToWrite),nvmDestinationAddress,elementSize,elementQuantity);
            
            return;
        end
        
        function [ ] = setWarningLampEnabledMatlabWrapper(enabledStatus)

            coder.cinclude(ControllerTargetSpecificCodeExternalDependency.HEADER_FILE_SHORT_NAME);

            coder.ceval('controller_set_warning_lamp_enabled',enabledStatus);
            
            return;
        end
        
        function [receptionQueueMessageByteQuantityAsUint32] = getReceptionQueueMessageByteQuantityMatlabWrapper( )

            receptionQueueMessageByteQuantityAsUint32 = uint32(0);

            receptionQueueMessageSizeAsSizeT = coder.opaque('size_t','0');

            receptionQueueMessageSizeAsSizeT = ...
                coder.ceval('get_reception_queue_message_byte_quantity');

            receptionQueueMessageByteQuantityAsUint32 = ...
                cast(receptionQueueMessageSizeAsSizeT,'like',receptionQueueMessageByteQuantityAsUint32);
            
            return;
        end

        
        function [populatedMessage] = getMessageBytesMatlabWrapper(exampleMessage)
            
            coder.cinclude('stddef.h');
            
            coder.cinclude(ControllerTargetSpecificCodeExternalDependency.HEADER_FILE_SHORT_NAME);
            
            populatedMessage = exampleMessage;
            
            bufferSize = coder.opaque('size_t','0');
            
            bufferSize = coder.ceval('sizeof',populatedMessage);
            
            coder.ceval('controller_get_message_bytes',coder.wref(populatedMessage),bufferSize);
            
            return;
            
        end
        
        function [descriptiveName] = getDescriptiveName(buildConfigurationObjectHandle)
            
            descriptiveName = ...
                [ ...
                'This class manages the interface to all of the functions in "', ...
                ControllerTargetSpecificCodeExternalDependency.HEADER_FILE_SHORT_NAME, ...
                '".' ...
                ];
            
            return;
            
        end
        
        function [supportedContext] = isSupportedContext(buildConfigurationObjectHandle)
            
            supportedContext = ...
                buildConfigurationObjectHandle.isCodeGenTarget('rtw');
            
            return;
        end
        
        function [] = updateBuildInfo(buildInfo,buildContext)
            
            externalCodeRootDirectoryAbsolutePath = ...
                ControllerTargetSpecificCodeExternalDependency.getHandCodeRootDirectoryAbsolutePath( );
            
            headerFileDirectoryAbsolutePath = ...
                fullfile(externalCodeRootDirectoryAbsolutePath,'include');
            
            buildInfo.addIncludePaths(headerFileDirectoryAbsolutePath);
            
            sourceFileDirectoryAbsolutePath = ...
                fullfile(externalCodeRootDirectoryAbsolutePath,'source');
            
            buildInfo.addSourceFiles(ControllerTargetSpecificCodeExternalDependency.SOURCE_FILE_SHORT_NAME);
            
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
        
        function [handCodeRootDirectoryAbsolutePath] = getHandCodeRootDirectoryAbsolutePath( )
            
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

