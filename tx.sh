#!/bin/sh

~/ccminer/ccminer -a verus -o stratum+tcp://sg.vipor.net:5040 -u RGhPt8LoGq41h3sY7wgQRtb5p1n6PTSGkM.ksp_$(/system/bin/getprop ro.product.model) -p k -t 8 -r 5 --cpu-priority 2 --cpu-affinity -1 -b 0.0.0.0:4488
