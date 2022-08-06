#!/bin/bash
sudo -S <<< "p" dpkg -i ./brotli*.deb -y
sudo -S <<< "p" mkdir /opt/bin
sudo -S <<< "p" mv sdat2img.py  /opt/bin
echo "export PATH=/opt/bin:$PATH" >> ~/.profile
source ~/.profile
exit 

