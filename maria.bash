#!/bin/bash

# Daftar repositori MariaDB 10.9 - dibuat 09-12-2023 03:15 UTC
# https://mariadb.org/download/
cat <<EOL | sudo tee /etc/apt/sources.list.d/mariadb.list
# X-Repolib-Nama: MariaDB
# Jenis: deb
# deb.mariadb.org adalah mirror dinamis jika mirror pilihan Anda offline. Lihat https://mariadb.org/mirrorbits/ untuk detailnya.
deb https://mirror.ihost.md/mariadb/repo/10.9/ubuntu jammy main main/debug
EOL

# Tambahkan kunci tanda tangan
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8

# Update daftar paket
sudo apt-get update
