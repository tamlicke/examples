% create a Simulink.AliasType for int64_t

int64_t = Simulink.AliasType;
int64_t.DataScope = 'Imported';
int64_t.HeaderFile = 'platform_types.h';
int64_t.BaseType = 'fixdt(1,64,0)';
