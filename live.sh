#!/bin/bash

# YouTube RTMP URL (BU YERGA O'ZINGNI STREAM KEY QO'YASAN)
YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2/qu2q-0txx-t3ft-f7bs-brkm"

# Public test video (doim ishlaydi)
VIDEO_URL="https://uz-vss4.plbl.uz.lfstrm.tv/uz_qiziqtv_hd/normal/3/index.m3u8?account=7cf3c55b2708d739&client=9c4a0087bd3a67a5&delay=618&env=s&expires=1774692000&ip=100-83-154-69&mpltlh=auto&origin=uz-dvr2&pbs_id=c7b64691-dd6e-497b-9bcc-3710a4766a9a&provider_id=63a98003d5198db8b963feb4&token=HdyZ3KufOWrtHzjpIokwGA&wlid=uztel"

# FFmpeg loop
while true; do
  ffmpeg -re -i "$VIDEO_URL" \
  -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
  -pix_fmt yuv420p -g 50 \
  -c:a aac -b:a 128k -ar 44100 \
  -f flv "$YOUTUBE_URL"

  echo "Stream uzildi, qayta ulanmoqda..."
  sleep 5
done
