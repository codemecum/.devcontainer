#!/usr/bin/env bash
set -euxo pipefail

sudo bash <<EOF
curl -o /usr/local/bin/fly --retry 20 'http://concourse:8080/api/v1/cli?arch=amd64&platform=linux'
chmod +x /usr/local/bin/fly
fly completion --shell bash > /etc/bash_completion.d/fly
EOF

exec "$@"
