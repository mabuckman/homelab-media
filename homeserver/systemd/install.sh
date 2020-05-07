#!/bin/sh

cp *.service /etc/systemd/system

mkdir -p /volumes/jackett
mkdir -p /volumes/radarr
mkdir -p /volumes/sonarr
mkdir -p /volumes/nzbhydra2

systemctl daemon-reload
systemctl enable docker-jackett.service
systemctl enable docker-radarr.service
systemctl enable docker-nzbhydra2.service
systemctl enable docker-sonarr.service
systemctl enable docker-watchtower.service

systemctl start docker-jackett.service
systemctl start docker-radarr.service
systemctl start docker-nzbhydra2.service
systemctl start docker-watchtower.service
