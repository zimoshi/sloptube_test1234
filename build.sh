#!/bin/bash

# 1. Create a local bin folder inside the workspace
mkdir -p bin

# 2. Download the stable x86_64 release archive
curl -L "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz" -o ffmpeg.tar.xz

# 3. Extract forcing tar to treat it as a local file (fixes the 'resolve failed' error)
tar -xf ffmpeg-release-amd64-static.tar.xz --force-local

# 4. Safely move the binaries regardless of the specific version name folder
mv ffmpeg-*-static/ffmpeg ./bin/
mv ffmpeg-*-static/ffprobe ./bin/

# 5. Make the binaries executable
chmod +x ./bin/ffmpeg ./bin/ffprobe

# 6. Expose the folder to the PATH for the rest of this build session
export PATH="$PATH:$(pwd)/bin"

# 7. Clean up archive folders
rm -rf ffmpeg.tar.xz ffmpeg-*-static
