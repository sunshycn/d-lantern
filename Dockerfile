FROM ubuntu:16.04
WORKDIR /root
# download the deb file from official site and put it in the same dir as the Dockerfile
COPY lantern-installer-64-bit.deb /root/
RUN apt-get update
# you may need to run the below command several times when network is not good
RUN apt-get -y install libappindicator3-1 --fix-missing
#RUN apt-get -y install gir1.2-appindicator3-0.1 --fix-missing
RUN dpkg -i lantern-installer-64-bit.deb

EXPOSE 3128/tcp 8080/tcp
ENTRYPOINT ["/usr/bin/lantern", "--configdir=/root","--headless=true", "--proxyall=true", "--startup=false", "--clear-proxy-settings=false", "--addr=0.0.0.0:3128", "--uiaddr=0.0.0.0:8080"]
