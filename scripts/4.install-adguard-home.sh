#! /bin/bash

# Run AdGuard Home
docker run -d \
  --name adguardhome \
  -v /opt/adguardhome/work:/opt/adguardhome/work \
  -v /opt/adguardhome/conf:/opt/adguardhome/conf \
  -p 53:53/tcp -p 53:53/udp \
  -p 3000:3000/tcp \
  adguard/adguardhome