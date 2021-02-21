#!/usr/bin/env bash
set -euxo pipefail

apt-get update
apt-get install -y --no-install-recommends  \
    sudo

echo 'developer  ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
