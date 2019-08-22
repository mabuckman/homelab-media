#!/bin/sh

cp {*.service, env.list} /etc/systemd/system

systemctl daemon-reload
systemctl enable docker-jackett.service
systemctl enable docker-radarr.service
systemctl enable docker-transmission.service

systemctl start docker-jackett.service
systemctl start docker-radarr.service
systemctl start docker-transmission.service