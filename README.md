# check-mk-docker-arm
Check MK Docker build for ARM (Usage with OCI etc)

# Build
sudo docker build --no-cache -t projx/check-mk-docker-arm:latest .

# Test
docker run -d --name checkmk -v /store/gfs/checkmk:/opt/omd/sites -p 5000:5000 projx/check-mk-docker-arm:latest

# Pull for ghcr.io
docker pull ghcr.io/projx/check-mk-docker-arm:latest

# Based / Uses
rpi-checkmk - See https://github.com/rogierg/rpi-checkmk
check-mk-arm - https://github.com/chrisss404/check-mk-arm
