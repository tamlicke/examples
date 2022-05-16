function [defaultMeasurementMsgBusType] = measurementMsgBusTypeDefaultConstructor( )

    % Copyright 2021 MathWorks, Inc.
    %#codegen

defaultMeasurementMsgBusType = struct( ...
    'source',deviceIDBusTypeDefaultConstructor( ), ...
    'tire_pressure_sensor_measurement',double(0) ...
    );

coder.cstructname(defaultMeasurementMsgBusType,'MeasurementMsgBusType');

return;

end

