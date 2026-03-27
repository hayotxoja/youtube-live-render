#!/bin/bash
while true; do
    ffmpeg -re -i "https://st1.uzdigital.tv/Milly_TVHD/tracks-v1a1/mono.m3u8?remote=213.230.82.208&token=cfe048f8775609afc463ec1045d99d4515a3ea10-5350646f684b6e7559417865786b664d-1774618550-1774607750" -c copy -f flv rtmp://a.rtmp.youtube.com/live2/qu2q-0txx-t3ft-f7bs-brkm
    sleep 5
done
