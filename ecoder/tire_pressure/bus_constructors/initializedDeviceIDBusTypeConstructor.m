function [ deviceIDBusType ] = initializedDeviceIDBusTypeConstructor( deviceIDToAssign )

% Copyright 2021 MathWorks, Inc.
%#codegen

deviceIDBusType = deviceIDBusTypeDefaultConstructor( );

assert(numel(deviceIDBusType.device_id) == numel(deviceIDToAssign));

castDeviceIDToAssign = ...
    cast(deviceIDToAssign,'like',deviceIDBusType.device_id);

deviceIDBusType.device_id = castDeviceIDToAssign;

return;
    
end

