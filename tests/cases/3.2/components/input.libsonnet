local lib = import '../../../../3.2/main.libsonnet';
local api = lib.openapi + lib.openapi.withComponents({schemas: {Pet: {type: 'object', properties: {id: {type: 'integer'}}}}});
{components: api.components}
