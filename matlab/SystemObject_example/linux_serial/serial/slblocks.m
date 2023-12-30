function blkStruct = slblocks
% This function specifies that the library should appear
% in the Library Browser
% and be cached in the browser repository

blkStruct.Name    = sprintf('Linux Target Utilities');
blkStruct.OpenFcn = 'linux_utilities';
blkStruct.MaskInitialization = '';
blkStruct.MaskDisplay = '';

Browser.Library = 'linux_utilities';
Browser.Name = 'Linux Target Utilities';
Browser.IsFlat  = 0;% Is this library "flat" (i.e. no subsystems)?

blkStruct.Browser = Browser;