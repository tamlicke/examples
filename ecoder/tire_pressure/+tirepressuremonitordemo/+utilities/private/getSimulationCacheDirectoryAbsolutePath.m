function [ simulationCacheDirectory ] = getSimulationCacheDirectoryAbsolutePath( )

% Copyright 2020, The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

projectRootDirectoryAbsolutePath = ...
    getProjectRootDirectoryAbsolutePath( );

simulationCacheDirectory = ...
    fullfile(projectRootDirectoryAbsolutePath,'simulation_cache');

return;

end
