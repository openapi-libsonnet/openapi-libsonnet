local lib = import '../../../../2.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withSecurityDefinitions({api_key: {type: 'apiKey', name: 'X-API-Key', 'in': 'header'}});
{securityDefinitions: api.securityDefinitions}
