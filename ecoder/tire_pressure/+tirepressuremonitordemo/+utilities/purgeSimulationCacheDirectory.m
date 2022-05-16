function [ ] = purgeSimulationCacheDirectory( )

% Copyright 2021, The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

simulationCacheDirectory = ...
    getSimulationCacheDirectoryAbsolutePath( );

purgeDirectory(simulationCacheDirectory);

return;
end