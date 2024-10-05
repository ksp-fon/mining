#!/bin/sh

wget http://ports.ubuntu.com/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_arm64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_arm64.deb
rm libssl1.1_1.1.0g-2ubuntu4_arm64.deb


r_json=$(curl --silent "https://api.github.com/repos/Oink70/CCminer-ARM-optimized/releases?per_page=1" | jq -c "[.[] | del (.body)]")
d_url=$(echo $r_json | jq -r ".[0].assets[0].browser_download_url")
n_m=$(echo $r_json | jq -r ".[0].assets[0].name")
wget ${d_url} -P ~/
mv ~/${n_m} ~/ccminer
chmod +x ~/ccminer
