function [defaultDeviceIDBusType] = deviceIDBusTypeDefaultConstructor( )

% Copyright 2021 MathWorks, Inc.
%#codegen

defaultDeviceIDBusType = ...
    struct('device_id',zeros(10,1,'uint8'));

coder.cstructname(defaultDeviceIDBusType,'DeviceIDBusType');

return;
end

