# davidkhala/setup-podman

Setup Podman context. It will

- create and start a Podman machine
- install plugins for
  - network: `bridge`

## Limit

`macos-latest` is not supported

- macos-latest runners do not support nested virtualization, which is required for Podman's VM to function.
