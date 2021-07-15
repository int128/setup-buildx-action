# setup-buildx-action [![e2e](https://github.com/int128/setup-buildx-action/actions/workflows/e2e-test.yaml/badge.svg)](https://github.com/int128/setup-buildx-action/actions/workflows/e2e-test.yaml)

This is an action to install a binary of Docker buildx from https://github.com/docker/buildx.


## Getting Started

```yaml
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: int128/setup-buildx-action@main
      - uses: docker/build-push-action@v2
```

### Inputs

| Name | Required | Description
|------|----------|-------------
| `driver-opts` | no | List of additional driver-specific options. See https://github.com/docker/buildx/blob/master/docs/reference/buildx_create.md#driver-opt
