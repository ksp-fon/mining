#!/bin/sh

~/ccminer/ccminer -a verus -o stratum+tcp://sg.vipor.net:5040 -u REERvn71jF5K9TKrRHvSWXN2CQT8ot74hi.ksp_$(/system/bin/getprop ro.product.model) -p k -t 8 -r 5 --cpu-priority 2 --cpu-affinity -1 -b 0.0.0.0:4488
