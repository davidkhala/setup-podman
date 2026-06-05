# davidkhala/setup-podman

Setup Podman context. It will

- create and start a Podman machine
- install plugins for
  - network: `bridge`

## Usage
```yaml
- uses: davidkhala/setup-podman@main
  with:
    # socket: Choose how to provide podman socket if runs on ubuntu-latest runner. Options: ['systemctl', 'podman-machine']
    #   'systemctl': default option. It provides podman API by systemctl 
    #   'podman-machine': Create and start a podman machine in ubuntu-latest. It takes time (~8 mins). 
    socket: 'podman-machine'
```

## Limit

`macos-latest` is not supported

- macos-latest runners do not support nested virtualization, which is required for Podman's VM to function.
