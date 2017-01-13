FROM java:8

#Install XVFB display
RUN echo Installing XVFB
RUN apt-get -y install xvfb gtk2-engines-pixbuf
ENV DISPLAY=:0

#Install firefox
RUN echo Installing Firefox
RUN wget -q -O - http://mozilla.debian.net/archive.asc | apt-key add -
RUN echo "deb http://mozilla.debian.net/ jessie-backports firefox-release" | tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install firefox
RUN echo firefox -v
