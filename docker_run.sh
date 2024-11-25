xhost +local:root
DATA_PATH=~/
docker run \
    --gpus all \
    --privileged \
    -e DISPLAY=${DISPLAY} \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --net=host --ipc=host --pid=host \
    --shm-size 16G \
    -v /dev/shm:/dev/shm \
    -v $DATA_PATH:/ws \
    --name ram -it ram:latest
