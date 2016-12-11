#!/bin/bash

set -e

export BASEPATH=/root/jelastic

: "${JELASTIC_EMAIL?You need to configure JELASTIC_EMAIL}"
: "${JELASTIC_PASSWORD?You need to configure JELASTIC_PASSWORD}"
: "${JELASTIC_URL?You need to configure JELASTIC_URL}"

cat > /root/.config/jelastic/jelastic.properties <<EOF
jelastic.cli.send_err_confirm=false
EOF

$BASEPATH/users/authentication/signin \
        --login $JELASTIC_EMAIL \
        --password $JELASTIC_PASSWORD \
        --platformUrl $JELASTIC_URL

exec "$BASEPATH/$@"