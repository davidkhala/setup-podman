Invoke-WebRequest -Uri https://github.com/containers/podman/releases/download/v5.5.1/podman-5.5.1-setup.exe -OutFile podman-setup.exe
Start-Process -FilePath ".\podman-setup.exe" -ArgumentList "/S" -Wait
