local lib = import '../../../../3.1/main.libsonnet';
local api = lib.openapi + lib.openapi.withWebhooks({petEvents: {post: {responses: {'200': {description: 'ok'}}}}});
{webhooks: api.webhooks}
