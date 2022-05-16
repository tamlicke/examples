function [defaultControllerFaultLogEntryBusType] = controllerFaultLogEntryBusTypeDefaultConstructor( )

    % Copyright 2021 MathWorks, Inc.
    %#codegen

defaultControllerFaultLogEntryBusType = struct( ...
    'device_id',deviceIDBusTypeDefaultConstructor( ), ...
    'fault_code',FaultCodeEnumType.NO_FAULT_CODE_EN ...
    );

coder.cstructname(defaultControllerFaultLogEntryBusType,'ControllerFaultLogEntryBusType');

return;
end
