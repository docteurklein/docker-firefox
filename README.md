docker-firefox
-------------

# run

    docker run \
        --net=host \
        --rm \
        -it \
        -e DISPLAY=$DISPLAY \
        -v $HOME/.Xauthority:/root/.Xauthority \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        docteurklein/firefox:10.0.2

# build

    version=10.0.2 make

