# Building

$ docker build -t remo/tor-browser .

# Running

$ docker run -e DISPLAY=$DISPLAY --rm --shm-size 2g -v /tmp/.X11-unix:/tmp/.X11-unix:ro remo/tor-browser
