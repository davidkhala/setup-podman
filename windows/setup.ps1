Invoke-WebRequest -Uri https://github.com/containers/podman/releases/download/v5.5.1/podman-5.5.1-setup.exe -OutFile podman-setup.exe
Start-Process -FilePath ".\podman-setup.exe" -ArgumentList "/S" -Wait
& "C:\Program Files\RedHat\Podman\podman.exe" machine init --user-mode-networking --now

# setup CNI
Invoke-WebRequest -Uri https://github.com/containernetworking/plugins/releases/download/v1.3.0/cni-plugins-windows-amd64-v1.3.0.tgz -OutFile cni-plugins-windows-amd64.tgz
mkdir cni-bin
tar -xvf cni-plugins-windows-amd64.tgz -C cni-bin