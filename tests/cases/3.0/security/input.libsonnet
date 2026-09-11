local lib = import '../../../../3.0/main.libsonnet';
local api = lib.openapi + lib.openapi.withComponents({securitySchemes: {apiKey: {type: 'apiKey', name: 'X-API-Key', 'in': 'header'}}});
{securitySchemes: api.components.securitySchemes}
