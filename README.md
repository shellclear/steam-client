Play your favorite games at Steam

This image was built to use a intel video card, so maybe you need to install some other modules if you have a AMD/Nvidia video card. However, if you have a Intel video card it will work perfectly.

Do you want to know how to play?

It's very simple, follow instructions bellow and be happy!

First at all, run the command bellow in your host (where docker engine is installed)

$xhost +

and after that, run that command bellow if you want open the Steam client only

$docker run --privileged --name steam -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 shellclear/steam /usr/games/steam %U

or , if you want open Steam client from a terminal you'll need to run

$docker run -it --privileged --name steam -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 shellclear/steam bash

and inside from container you need to run

#/usr/games/steam %U

INFO: I set keyboard configuration for pt-br in this image, if you wanna change it please run the command bellow

$dpkg-reconfigure keyboard-configuration

INFO: DO NOT SAVE YOUR PASSWORD, for some reason that I don't know(yet) Steam client will doesn't work if you check this option.

ENJOY IT!! Any suggestions, please let me to know.

