local lib = import '../../../../2.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withDefinitions({Pet: {
  type: 'object',
  discriminator: 'petType',
  properties: {petType: {type: 'string'}},
}});
{definitions: api.definitions}
