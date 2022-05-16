function [ ] = purgeGeneratedCodeDirectory( )

% Copyright 2020, The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

generatedCodeDirectory = ...
    getGeneratedCodeDirectoryAbsolutePath( );

purgeDirectory(generatedCodeDirectory);

return;

end