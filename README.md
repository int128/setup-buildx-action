# setup-buildx-action

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
