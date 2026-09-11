local lib = import '../../../../2.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withDefinitions({Pet: {
  type: 'object',
  properties: {pet: {type: 'object', properties: {cat: {type: 'string'}}}},
}});
{definitions: api.definitions}
