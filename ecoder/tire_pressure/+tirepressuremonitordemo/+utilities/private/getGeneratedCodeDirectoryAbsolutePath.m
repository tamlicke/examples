function [ generatedCodeDirectory ] = getGeneratedCodeDirectoryAbsolutePath( )

% Copyright 2021, The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

projectRootDirectoryAbsolutePath = ...
    getProjectRootDirectoryAbsolutePath( );

generatedCodeDirectory = ...
    fullfile(projectRootDirectoryAbsolutePath,'generated_code');

return;

end