local lib = import '../../../../2.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withPaths({'/pets': {get: {operationId: 'listPets', responses: {'200': {description: 'ok'}}}}});
{paths: api.paths}
