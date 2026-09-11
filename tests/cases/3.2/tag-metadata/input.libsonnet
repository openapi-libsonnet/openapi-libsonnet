local lib = import '../../../../3.2/main.libsonnet';
local api = lib.openapi + lib.openapi.withTags([{name: 'pets', kind: 'nav', parent: 'root'}]);
{tags: api.tags}
