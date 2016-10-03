rm test.h264 test.mp4
raspivid -o test.h264 -t 10000
MP4Box -fps 30 -add test.h264 test.mp4
