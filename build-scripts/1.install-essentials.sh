#!/usr/bin/env bash
set -euxo pipefail

apt-get update
apt-get install -y --no-install-recommends  \
    bash-completion                         \
    ca-certificates                         \
    curl                                    \
    git                                     \
    gnupg                                   \
    nano                                    \
    openssh-client                          \
    socat
