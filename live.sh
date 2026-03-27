#!/bin/bash
while true; do
    ffmpeg -re -i "https://uz-vss4.plbl.uz.lfstrm.tv/uz_qiziqtv_hd/normal/3/index.m3u8?account=7cf3c55b2708d739&client=9c4a0087bd3a67a5&env=s&expires=1774692000&ip=100-83-154-69&mpltlh=auto&origin=uz-live2&pbs_id=c7b64691-dd6e-497b-9bcc-3710a4766a9a&provider_id=63a98003d5198db8b963feb4&token=HdyZ3KufOWrtHzjpIokwGA&wlid=uztel" -c copy -f flv rtmp://a.rtmp.youtube.com/live2/qu2q-0txx-t3ft-f7bs-brkm
    sleep 5
done