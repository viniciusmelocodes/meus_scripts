#!/usr/bin/env bash

sudo dnf config-manager addrepo --from-repofile=https://repo.fortinet.com/repo/forticlient/7.2/centos/8/os/x86_64/fortinet.repo
dnf install -y forticlient