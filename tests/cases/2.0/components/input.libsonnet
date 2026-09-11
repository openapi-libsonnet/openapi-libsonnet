local api = (import '../../../../2.0/main.libsonnet').openapi + (import '../../../../2.0/main.libsonnet').openapi.withDefinitions({Pet: {type: 'object', properties: {id: {type: 'integer'}}}});
{definitions: api.definitions}
