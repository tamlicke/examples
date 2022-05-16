function [ ] = initialize( )

% Copyright 2021, The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

projectDirectoriesCellStr = ...
    getProjectDirectoriesForMatlabPath( );

projectDirectoryQuantity = numel(projectDirectoriesCellStr);

for projectDirectoryIndex = 1:projectDirectoryQuantity
    currentProjectDirectory = ...
        projectDirectoriesCellStr{projectDirectoryIndex};
    addpath(currentProjectDirectory);
end

simulationCacheDirectory = ...
    getSimulationCacheDirectoryAbsolutePath( );

generatedCodeDirectory = ...
    getGeneratedCodeDirectoryAbsolutePath( );

% Git generally tracks files, not directories, so the
% directories that were rightfully purged before check-in might
% not exist in the repository, and therefore not exist in
% subsequent check-outs.
%
% Therefore, we'll create any expected directories that might
% have been "lost" through the purge/commit process:
transientDirectoriesCellStr = ...
    { ...
    generatedCodeDirectory, ...
    simulationCacheDirectory, ...
    };

transientDirectoryQuantity = numel(transientDirectoriesCellStr);

for transientDirectoryIndex = 1:transientDirectoryQuantity
    currentTransientDirectory = ...
                            transientDirectoriesCellStr{transientDirectoryIndex};
    if(isfolder(currentTransientDirectory))
            % We don't need to create the directory.
    else
        mkdir(currentTransientDirectory)
    end
end

Simulink.fileGenControl('set','CacheFolder',simulationCacheDirectory);
  
Simulink.fileGenControl('set','CodeGenFolder',generatedCodeDirectory);

return;

end
