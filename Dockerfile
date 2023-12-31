FROM arm64v8/ubuntu:20.04

RUN apt-get update && apt-get install -y wget curl lsb-release apt-utils nano || true

# RUN curl -sLO https://github.com/chrisss404/check-mk-arm/releases/download/2.2.0p17/check-mk-raw-2.2.0p17_0.focal_arm64.deb && dpkg -i check-mk-raw-*.focal_arm64.deb
RUN curl -sLO $(curl -s https://api.github.com/repos/chrisss404/check-mk-arm/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep focal_arm64.deb) && dpkg -i check-mk-raw-*.focal_arm64.deb  || true
RUN  DEBIAN_FRONTEND=noninteractive apt-get install -f -y --no-install-recommends 
RUN  DEBIAN_FRONTEND=noninteractive apt-get autoremove -y 
RUN  DEBIAN_FRONTEND=noninteractive apt-get clean -y 
RUN  rm -rf /var/lib/apt/lists/*
EXPOSE 5000/tcp
WORKDIR /app
COPY *.sh /app/
ENTRYPOINT ["/bin/bash"] 
CMD ["/app/run.sh"] 