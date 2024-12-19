#!/usr/bin/env bash

#https://linuxiac.com/how-to-install-docker-desktop-on-ubuntu-24-04-lts/

sudo apt install apt-transport-https ca-certificates curl gnupg
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu noble stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo wget -O docker-desktop-amd64.deb https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64&_gl=1*1y7x70n*_ga*MjExNTMzNzMzMi4xNzMzNDU2NTkx*_ga_XJWPQMJYHQ*MTczMzUwODk5MS4xLjEuMTczMzUwODk5NC41Ny4wLjA.

sudo apt-get update
sudo apt-get install ./docker-desktop-amd64.deb


