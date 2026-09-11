local lib = import '../../../../2.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withDefinitions({Pet: {
  allOf: [
    {'$ref': '#/definitions/Animal'},
    {type: 'object', properties: {name: {type: 'string'}}},
  ],
}});
{definitions: api.definitions}
