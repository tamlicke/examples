function [ ] = smokeTest( )

% Copyright 2021 The MathWorks, Inc.

% Previous runs of this demo may have left 
tirepressuremonitordemo.utilities.purgeGeneratedCodeDirectory( );
tirepressuremonitordemo.utilities.purgeSimulationCacheDirectory( );

simulationModelBaseNamesCellStr = ...
    { ...
    'controllerCoreAlgorithm', ...
    'sensorCoreAlgorithm', ...
    'tirePressureMonitoringSystem' ...
    };

codeGenerationModelBaseNamesCellStr = ...
    { ...
    'sensorCodeGenerationWrapper', ...
    'controllerCodeGenerationWrapper' ...
    };

allModelBaseNamesCellStr = ...
    [simulationModelBaseNamesCellStr,codeGenerationModelBaseNamesCellStr];

% Open all of the models and make sure that they pass "update diagram":
allModelQuantity = numel(allModelBaseNamesCellStr);
for modelIndex = 1:allModelQuantity
    currentModelToOpenBaseName = allModelBaseNamesCellStr{modelIndex};
    load_system(currentModelToOpenBaseName);
    set_param(currentModelToOpenBaseName,'SimulationCommand','update');
end

% Test code-generation for the subset of models intended to generate code:
codeGenerationModelQuantity = numel(codeGenerationModelBaseNamesCellStr);
for codeGenerationModelIndex = 1:codeGenerationModelQuantity
    currentCodeGenerationModelBaseName = codeGenerationModelBaseNamesCellStr{codeGenerationModelIndex};
    slbuild(currentCodeGenerationModelBaseName);
end

% Close everything now that we're done:
for modelIndex = 1:allModelQuantity
    currentModelToCloseBaseName = allModelBaseNamesCellStr{modelIndex};
    close_system(currentModelToCloseBaseName);
end

return;

end

