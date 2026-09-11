local lib = import '../../../../3.1/main.libsonnet';
local api = lib.openapi + lib.openapi.withComponents({schemas: {Pet: {
  allOf: [
    {'$ref': '#/components/schemas/Animal'},
    {type: 'object', properties: {name: {type: 'string'}}},
  ],
}}});
{components: api.components}
