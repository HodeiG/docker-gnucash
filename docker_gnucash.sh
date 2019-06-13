#! /bin/bash

IMAGE="ubuntu19.04:gnucash"

# Enable debugging and exit if there is any error.
set -x
set -e

GID=$(id -g "$USERNAME")
# xhost +LOCAL:

docker run \
    --rm \
    -e DISPLAY=unix"$DISPLAY" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/shadow:/etc/shadow:ro \
    -v /etc/group:/etc/group:ro \
    -v "$HOME:${HOME}" \
    --user "$UID:$GID" \
    -v "$HOME:$HOME" \
    "$IMAGE"
