# openapi-libsonnet

A Jsonnet library for building OpenAPI documents.

한국어: [README.ko.md](README.ko.md)

## Supported versions

| Path                 | Specification |
| -------------------- | ------------- |
| `2.0/main.libsonnet` | OpenAPI 2.0   |
| `3.0/main.libsonnet` | OpenAPI 3.0   |
| `3.1/main.libsonnet` | OpenAPI 3.1   |
| `3.2/main.libsonnet` | OpenAPI 3.2   |

## Quick start

```bash
jb install github.com/openapi-libsonnet/openapi-libsonnet/3.1
```

```jsonnet
local lib = import 'github.com/openapi-libsonnet/openapi-libsonnet/3.1/main.libsonnet';

lib.openapi
+ lib.openapi.withOpenapi('3.1.1')
+ lib.openapi.withInfo({
    title: 'Pet API',
    version: '1.0.0',
  })
+ lib.openapi.withPaths({})
```

See the language-specific README for installation, usage, and development details.
