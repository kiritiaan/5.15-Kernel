
#!/bin/bash

# Define URLs for the kernel files
HEADER_URL="https://kernel.ubuntu.com/mainline/v5.15.164/amd64/linux-headers-5.15.164-0515164-generic_5.15.164-0515164.202407270939_amd64.deb"
IMAGE_URL="https://kernel.ubuntu.com/mainline/v5.15.164/amd64/linux-image-unsigned-5.15.164-0515164-generic_5.15.164-0515164.202407270939_amd64.deb"
MODULES_URL="https://kernel.ubuntu.com/mainline/v5.15.164/amd64/linux-modules-5.15.164-0515164-generic_5.15.164-0515164.202407270939_amd64.deb"

# Download the kernel files
wget -O linux-headers.deb $HEADER_URL
wget -O linux-image-unsigned.deb $IMAGE_URL
wget -O linux-modules.deb $MODULES_URL

# Install the downloaded packages
sudo dpkg -i linux-headers.deb linux-image-unsigned.deb linux-modules.deb

# Update GRUB
sudo update-grub

# Print a message indicating completion
echo "Kernel 5.15.164 installation complete. Please reboot your system."
