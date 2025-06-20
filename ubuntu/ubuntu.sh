sudo apt update
sudo apt install -y -q qemu-system-x86 gvproxy
sudo mv /usr/bin/qemu-system-x86_64 /usr/bin/qemu-system-x86_64.real
wget ./.github/workflows/qemu-system-x86_64  -O /usr/bin/qemu-system-x86_64
sudo ln -s /usr/bin/gvproxy /usr/libexec/podman/gvproxy