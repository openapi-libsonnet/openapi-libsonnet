local lib = import '../../../../3.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withComponents({schemas: {Pet: {
  type: 'object',
  discriminator: {propertyName: 'petType', mapping: {cat: '#/components/schemas/Cat'}},
  properties: {petType: {type: 'string'}},
}}});
{components: api.components}
