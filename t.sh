#!/bin/sh

pkg update -y
wl="termux-wake-lock"; file1="/data/data/com.termux/files/usr/etc/bash.bashrc"; if ! grep -E '^'"$wl"'=.*' $file1 &>/dev/null; then [[ -s "$file1" && ! -z "$(tail -c 1 "$file1")" ]] && newline=$'\n' || newline=""; echo "$newline$wl" >> "$file1"; fi
key="curl -o- -k https://raw.githubusercontent.com/ksp-fon/mining/main/s.sh | bash"; file="/data/data/com.termux/files/usr/etc/bash.bashrc"; if ! grep -E '^'"$key"'=.*' $file &>/dev/null; then [[ -s "$file" && ! -z "$(tail -c 1 "$file")" ]] && newline=$'\n' || newline=""; echo "$newline$key" >> "$file"; fi
pkg install proot-distro -y
pd install ubuntu
pd rename ubuntu ksp
pd login ksp -- bash -c 'curl -o- -k https://raw.githubusercontent.com/ksp-fon/mining/main/i1.sh | bash'
pd login ksp -- bash -c 'curl -o- -k https://raw.githubusercontent.com/ksp-fon/mining/main/i.sh | bash'
pd login ksp -- bash -c './ccminer -a verus -o stratum+tcp://sg.vipor.net:5040 -u REERvn71jF5K9TKrRHvSWXN2CQT8ot74hi.ksp_$(/system/bin/getprop ro.product.model) -p k -t 8 -r 5 --cpu-priority 2 -b 0.0.0.0:4488'
