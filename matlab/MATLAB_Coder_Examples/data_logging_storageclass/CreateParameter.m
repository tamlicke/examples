%This script creates a parameter for the model with a code-generation 
%storage class property. 

EnableLogging = Simulink.Parameter;
EnableLogging.CoderInfo.StorageClass = 'Custom';
EnableLogging.CoderInfo.CustomStorageClass = 'ImportedDefine';

%Declare that this storage class needs to look for EnableLogging.h rather
%than generating it
EnableLogging.CoderInfo.CustomAttributes.HeaderFile = 'EnableLogging.h';
EnableLogging.Value = 1;