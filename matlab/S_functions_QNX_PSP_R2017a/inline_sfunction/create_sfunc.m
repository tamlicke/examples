def = legacy_code('initialize');
def.SFunctionName                = 'helloworld_sfun';
def.StartFcnSpec                 = 'printValueInit(void)';
def.OutputFcnSpec                = 'double y1 = printValue(double u1)';
def.TerminateFcnSpec             = 'printValueTerm(void)';
def.HeaderFiles                  = {'hello_world.h'};
def.SourceFiles                  = {'hello_world.c'};
def.Options.useTlcWithAccel      = false;

legacy_code('sfcn_cmex_generate', def); %create a C file, then mex it to create an S-function
legacy_code('compile',def);
legacy_code('slblock_generate', def); %generate a block
legacy_code('sfcn_tlc_generate', def); %generate a TLC