FROM debian:jessie

ENV DEBIAN_FRONTEND=noninteractive
ENV VERSION=10.5.5

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install firefox-esr wget xz-utils
RUN useradd -m anon

USER anon

WORKDIR /home/anon

RUN wget -q https://www.torproject.org/dist/torbrowser/$VERSION/tor-browser-linux64-${VERSION}_en-US.tar.xz
RUN tar xf tor-browser-linux64-${VERSION}_en-US.tar.xz

CMD tor-browser_en-US/Browser/start-tor-browser
