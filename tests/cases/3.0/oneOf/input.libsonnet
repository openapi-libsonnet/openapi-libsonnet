local lib = import '../../../../3.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withComponents({schemas: {Pet: {
  oneOf: [
    {'$ref': '#/components/schemas/Cat'},
    {'$ref': '#/components/schemas/Dog'},
  ],
}}});
{components: api.components}
