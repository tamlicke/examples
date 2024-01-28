def = legacy_code('initialize');
def.SFunctionName                = 'helloworld_sfun';
def.StartFcnSpec                 = 'printValueInit(void)';
def.OutputFcnSpec                = 'double y1 = printValue(double u1)';
def.TerminateFcnSpec             = 'printValueTerm(void)';
def.HeaderFiles                  = {'hello_world.h'};
def.SourceFiles                  = {'hello_world.c'};
def.Options.useTlcWithAccel      = false;

legacy_code('compile',def);

