docker build -t shellclear/steam:latest .

docker run -it --privileged --name steam -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 shellclear/steam bash
