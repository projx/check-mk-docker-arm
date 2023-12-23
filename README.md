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
other ref - https://github.com/andrebeekhuis/checkmk-arm64

# Set Password
1) Run shell into container (docker exec -it 5e08e9a69e90 /bin/bash)
2) Use "su" to change user (su - mon)
3) Run cmk-admin to reset password

https://docs.checkmk.com/latest/en/intro_setup.html#:~:text=A%20home%20directory%20is%20created,the%20web%20interface%20in%20Checkmk.
