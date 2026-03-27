#!/bin/bash

YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2/qu2q-0txx-t3ft-f7bs-brkm"

VIDEO_URL="https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"

while true; do
  ffmpeg -re -i "$VIDEO_URL" \
  -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
  -pix_fmt yuv420p -g 50 \
  -c:a aac -b:a 128k -ar 44100 \
  -f flv "$YOUTUBE_URL"

  echo "Stream uzildi, qayta ulanmoqda..."
  sleep 5
done
