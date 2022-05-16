function [ projectRootDirectoryAbsolutePath ] = getProjectRootDirectoryAbsolutePath( )

% Copyright 2021, The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

persistent persistentProjectRootDirectoryAbsolutePath;

if( true == isempty( persistentProjectRootDirectoryAbsolutePath ) )
    
    thisFilesFullName = mfilename('fullpath');
    
    thisFilesAbsolutePath = fileparts(thisFilesFullName);
    
    projectRootDirectoryRelativePath = ...
        fullfile(thisFilesAbsolutePath,'..','..','..');
    
    originalDirectory = pwd();
    
    cd(projectRootDirectoryRelativePath);
    
    persistentProjectRootDirectoryAbsolutePath = pwd();
    
    cd(originalDirectory);
    
else
    % The path has already been resolved.
end

projectRootDirectoryAbsolutePath = ...
    persistentProjectRootDirectoryAbsolutePath;

return;

end
