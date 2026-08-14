sudo apt -qq update
sudo apt install -y -qq qemu-system-x86 gvproxy containernetworking-plugins virtiofsd
sudo mv /usr/bin/qemu-system-x86_64 /usr/bin/qemu-system-x86_64.real
sudo wget https://raw.githubusercontent.com/davidkhala/setup-podman/refs/heads/main/ubuntu/qemu-system-x86_64 -O /usr/bin/qemu-system-x86_64
sudo chmod +x /usr/bin/qemu-system-x86_64
sudo mkdir -p /usr/libexec/podman
sudo ln -s /usr/bin/gvproxy /usr/libexec/podman/gvproxy
sudo ln -s /usr/libexec/virtiofsd /usr/local/bin/virtiofsd