# openapi-libsonnet

OpenAPI 문서를 Jsonnet으로 작성하기 위한 라이브러리입니다.

English: [README.md](README.md)

## 지원 버전

| 경로                 | 사양        |
| -------------------- | ----------- |
| `2.0/main.libsonnet` | OpenAPI 2.0 |
| `3.0/main.libsonnet` | OpenAPI 3.0 |
| `3.1/main.libsonnet` | OpenAPI 3.1 |
| `3.2/main.libsonnet` | OpenAPI 3.2 |

## 설치

Jsonnet Bundler를 사용해 원하는 버전을 설치합니다.

```bash
jb install github.com/openapi-libsonnet/openapi-libsonnet/3.1
```

## 사용법

버전별 `main.libsonnet`을 import한 뒤 `openapi` 객체와 `withX` 빌더를 Jsonnet의 `+` 연산자로 조합합니다.

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

`withX(value)`는 필드를 설정하고, `withXMixin(value)`는 기존 필드에 값을 병합합니다.

```jsonnet
local lib = import 'github.com/openapi-libsonnet/openapi-libsonnet/3.1/main.libsonnet';
local api = lib.openapi
  + lib.openapi.withComponents({
      schemas: {
        Pet: {type: 'object'},
      },
    });

api
```

결과는 일반 Jsonnet 파일과 동일하게 출력할 수 있습니다.

```bash
jsonnet api.libsonnet
```

## 개발

```bash
pytest
```

버전별 `main.libsonnet` 파일은 생성 산출물이므로 직접 수정하지 않습니다.
