#!/usr/bin/env bash

name=$1

if [ "$name" = "" ]; then
  echo "Usage: generate-client-certificate.sh name"
  exit;
fi

cd ~/openvpn-ca
source vars
/vagrant/build-key.sh $name
