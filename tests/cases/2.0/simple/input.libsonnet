local lib = import '../../../../2.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withSwagger('2.0') + lib.openapi.withInfo({title: 'Pet API', version: '1.0.0'}) + lib.openapi.withPaths({});
{swagger: api.swagger, info: api.info, paths: api.paths}
