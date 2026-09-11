local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local version(name, identifier, lib) =
  {
    '#': d.pkg(
      name=identifier,
      url='github.com/openapi-libsonnet/openapi-libsonnet/' + name + '/main.libsonnet',
      help='OpenAPI ' + name + ' Jsonnet library.',
    ),
  }
  + lib;

d.render({
  '#': d.pkg(
    name='openapi_libsonnet',
    url='github.com/openapi-libsonnet/openapi-libsonnet',
    help='OpenAPI Jsonnet libraries.',
  ),
  'v2-0': version('2.0', 'openapi_v2_0', import '2.0/main.libsonnet'),
  'v3-0': version('3.0', 'openapi_v3_0', import '3.0/main.libsonnet'),
  'v3-1': version('3.1', 'openapi_v3_1', import '3.1/main.libsonnet'),
  'v3-2': version('3.2', 'openapi_v3_2', import '3.2/main.libsonnet'),
})
