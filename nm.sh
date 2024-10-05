#!/bin/bash

ouser=$(jq -r '.user' ~/ccminer/config.json)

read -p "`echo -e 'Enter Miner Name: \n\b'`" muser

ruser=$(echo $ouser |  sed -r "s/ksp_/ksp_$muser/g" )

echo -E $( jq ".user = \"$ruser\"" ~/ccminer/config.json ) > ~/ccminer/con.json

jq . ~/ccminer/con.json > ~/ccminer/config.json

rm ~/ccminer/con.json
