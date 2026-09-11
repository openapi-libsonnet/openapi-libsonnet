local lib = import '../../../../3.2/main.libsonnet';
local api = lib.openapi + lib.openapi.withOpenapi('3.2.0') + lib.openapi.withInfo({title: 'Pet API', version: '1.0.0'}) + lib.openapi.withPaths({});
{openapi: api.openapi, info: api.info, paths: api.paths}
