#!/bin/bash

# تنزيل cloudflared
wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64
mv cloudflared-linux-amd64 /usr/local/bin/cloudflared

# تشغيل النفق في الخلفية (يخرج فورًا)
nohup cloudflared tunnel --url http://localhost:8388 > /dev/null 2>&1 &
