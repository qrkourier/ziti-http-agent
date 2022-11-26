#/usr/bin/env bash
set -e -u -o pipefail
# install a self-signed cert in the current dir with the same filenames expected by nginx.conf

openssl req \
    -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout ./privkey.pem \
    -out ./fullchain.pem <<DN
${DN_COUNTRY:-"US"}
${DN_STATE:-"DC"}
${DN_CITY:-"Washington"}
${DN_ORG:-"Acme Ltd"}
${DN_ORG_UNIT:-"."}
${DN_CN:-"ziti-http-agent.localdomain"}
${DN_EMAIL:-"."}
DN
