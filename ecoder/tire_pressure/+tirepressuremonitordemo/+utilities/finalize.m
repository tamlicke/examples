function [ ] = finalize( )

% Copyright 2021 The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

Simulink.fileGenControl('reset');

potentialDirectoriesToPurgeCellStr = ...
    { ...
    getGeneratedCodeDirectoryAbsolutePath( ), ...
    getSimulationCacheDirectoryAbsolutePath( ), ...
    };

potentialDirectoriesToPurgeQuantity = numel(potentialDirectoriesToPurgeCellStr);

for directoryToPurgeIndex = 1:potentialDirectoriesToPurgeQuantity
    currentDirectoryToPurge = potentialDirectoriesToPurgeCellStr{directoryToPurgeIndex};
    currentDirectoryExists = isfolder(currentDirectoryToPurge);
    if(currentDirectoryExists)
        purgeDirectory(currentDirectoryToPurge);
    else
        % The directory doesn't exist and doesn't need cleanup.
    end

end

projectDirectoriesCellStr = ...
    getProjectDirectoriesForMatlabPath( );

projectDirectoryQuantity = numel(projectDirectoriesCellStr);

for projectDirectoryIndex = 1:projectDirectoryQuantity
    currentProjectDirectory = ...
        projectDirectoriesCellStr{projectDirectoryIndex};
    rmpath(currentProjectDirectory);
end

return;
end
