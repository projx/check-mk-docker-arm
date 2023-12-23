# check-mk-docker-arm
Check MK Docker build for ARM (Usage with OCI etc)

Build
sudo docker build --no-cache -t projx/check-mk-docker-arm:latest .

# Usage
sudo docker run -d --name checkmk -v /store/gfs/checkmk:/opt/omd/sites -p 5000:5000 projx/check-mk-docker-arm:latest

# Base on
rpi-checkmk - See https://github.com/rogierg/rpi-checkmk
