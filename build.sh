mkdir -p bin
curl -L https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -o ffmpeg.tar.xz
tar -xf https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
mv ffmpeg-*-static/ffmpeg bin/
mv ffmpeg-*-static/ffprobe bin/
rm -rf ffmpeg.tar.xz ffmpeg-*-static
