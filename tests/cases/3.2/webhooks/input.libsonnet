local lib = import '../../../../3.2/main.libsonnet';
local api = lib.openapi + lib.openapi.withWebhooks({petEvents: {post: {responses: {'200': {description: 'ok'}}}}});
{webhooks: api.webhooks}
