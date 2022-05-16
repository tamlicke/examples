function [ ] = purgeDirectory( directoryToPurge )

% Copyright 2020, The MathWorks, Inc.

import tirepressuremonitordemo.utilities.*;

if(isfolder(directoryToPurge))
    
    clear mex;  %#ok<CLMEX> The content may include a ".mex" file that must be released before it can be deleted.
    directoryContentsArray = dir(directoryToPurge);
    
    directoryContentQuantity = numel(directoryContentsArray);
    
    for directoryContentIndex = 1:directoryContentQuantity
        
        currentDirectoryElement = ...
            directoryContentsArray(directoryContentIndex);
        
        currentDirectoryElementFullName = ...
            fullfile(directoryToPurge,currentDirectoryElement.name);
        
        if(currentDirectoryElement.isdir)
            
            switch(currentDirectoryElement.name)
                
                case {'.','..'}
                    
                    % These are not "real" directories to be
                    % deleted.
                    
                otherwise
                    
                    rmdir(currentDirectoryElementFullName,'s');
                    
            end
            
        else
            
            delete(currentDirectoryElementFullName);
            
        end
        
    end
    
else
    
    warningMessage = ...
        [ ...
        'The directory "', ...
        directoryToPurge, ...
        '" does not exist.' ...
        ];
    
    warning(warningMessage);
    
end

return;
end

