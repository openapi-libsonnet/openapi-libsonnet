local lib = import '../../../../3.2/main.libsonnet';
local api = lib.openapi + lib.openapi.withDollarSelf('https://api.example.com/openapi.json');
{'$self': api['$self']}
