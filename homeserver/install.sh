#!/bin/sh

cp *.service env.list /etc/systemd/system

mkdir -p ~/media/movies
mkdir -p ~/media/tv
mkdir -p ~/media/youtube

mkdir -p ~/jacket/config
mkdir -p ~/jacket/downloads

mkdir -p ~/radarr/config
mkdir -p ~/media/movies

systemctl daemon-reload
systemctl enable docker-jackett.service
systemctl enable docker-radarr.service
systemctl enable docker-transmission.service

systemctl start docker-jackett.service
systemctl start docker-radarr.service
systemctl start docker-transmission.service
