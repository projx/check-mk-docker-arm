# check-mk-docker-arm
Check MK Docker build for ARM (Usage with OCI etc)

# Build
docker build -t projx/check-mk-docker-arm:latest .
docker build --no-cache -t projx/check-mk-docker-arm:latest .

# Test
Console: docker run --name checkmk -v /store/gfs/checkmk:/opt/omd/sites -p 5000:5000 projx/check-mk-docker-arm:latest
Daemon:  docker run -d --name checkmk -v /store/gfs/checkmk:/opt/omd/sites -p 5000:5000 projx/check-mk-docker-arm:latest

docker exec -it 5e08e9a69e90 /bin/bash

# Pull for ghcr.io
docker pull ghcr.io/projx/check-mk-docker-arm:latest

# Based / Uses
rpi-checkmk - See https://github.com/rogierg/rpi-checkmk
check-mk-arm - https://github.com/chrisss404/check-mk-arm
