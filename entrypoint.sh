#!/usr/bin/env bash
set -e

sed --in-place \
    --expression "s|###BASE_URL###|${BASE_URL}|g" \
    --expression "s|###KEYCLOAK_CLIENT_ID###|${KEYCLOAK_CLIENT_ID}|g" \
    --expression "s|###KEYCLOAK_CLIENT_SECRET###|${KEYCLOAK_CLIENT_SECRET}|g" \
    --expression "s|###KEYCLOAK_ISSUER###|${KEYCLOAK_ISSUER}|g" \
    --expression "s|###KEYCLOAK_URL###|${KEYCLOAK_URL}|g" \
    --expression "s|###POSTGRES_USER###|${POSTGRES_USER}|g" \
    --expression "s|###POSTGRES_PASSWORD###|${POSTGRES_PASSWORD}|g" \
    --expression "s|###POSTGRES_URL###|${POSTGRES_URL}|g" \
    "/opt/sharry/conf/sharry.conf"

exec "$@"