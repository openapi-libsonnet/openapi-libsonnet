local lib = import '../../../../3.2/main.libsonnet';
local api = lib.openapi + lib.openapi.withJsonSchemaDialect();
{jsonSchemaDialect: api.jsonSchemaDialect}
