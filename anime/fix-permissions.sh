#!/bin/bash

sudo usermod -aG fun transmission dlna minidlna mao
  sudo usermod -aG fun transmission
  sudo usermod -aG fun dlna
  sudo usermod -aG fun minidlna
  sudo usermod -aG fun mao

sudo chown -R mao /mnt/data-ext/
# Set group ownership
sudo chgrp -R fun /mnt/data-ext
# Give group rwx everywhere
sudo chmod -R g+rwx /mnt/data-ext
# Ensure setgid on directories
sudo find /mnt/data-ext -type d -exec chmod g+s {} \;
# Enforce 2770 on directories
sudo find /mnt/data-ext -type d -exec chmod 2770 {} \;
# Enforce 660 on files
sudo find /mnt/data-ext -type f -exec chmod 660 {} \;


media_dir=/var/lib/minidlna
media_dir=/mnt/data-ext/torrent/output/complete
media_dir=/mnt/data-ext/torrent/output/incomplete
