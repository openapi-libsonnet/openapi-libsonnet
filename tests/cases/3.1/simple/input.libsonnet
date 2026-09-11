local lib = import '../../../../3.1/main.libsonnet';
local api = lib.openapi + lib.openapi.withOpenapi('3.1.1') + lib.openapi.withInfo({title: 'Pet API', version: '1.0.0'}) + lib.openapi.withPaths({});
{openapi: api.openapi, info: api.info, paths: api.paths}
