#!/bin/bash

sudo usermod -aG fun transmission dlna minidlna mao
  sudo usermod -aG fun transmission
  sudo usermod -aG fun dlna
  sudo usermod -aG fun minidlna
  sudo usermod -aG fun mao

 
  sudo chown -R mao:fun /mnt/data-ext/
 sudo chown -R :fun /mnt/data-ext

sudo chmod -R g+rwx /mnt/data-ext
sudo find /mnt/data-ext -type d -exec chmod g+s {} \;
sudo find /mnt/data-ext -type d -exec chmod 2770 {} \;
sudo find /mnt/data-ext -type f -exec chmod 660 {} \;


