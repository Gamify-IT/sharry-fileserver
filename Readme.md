# sharry-fileserver image

This repository contains a dockerfile, which extends the original
[sharry](https://github.com/eikek/sharry) image by some
configuration to use with Gamify-IT.


## Environment variables

- `BASE_URL`
    - base url of the application. (Currently deploying behind a path is not supported by sharry.)
- `KEYCLOAK_CLIENT_ID`
    - id of the keycloak client
- `KEYCLOAK_CLIENT_SECRET`
    - secret of the keycloak client
- `KEYCLOAK_ISSUER`
    - issuer url in the token and external url of the keycloak realm
- `KEYCLOAK_URL`
    - internal url to the keycloak realm
- `POSTGRES_USER`
    - user for the postgres database
- `POSTGRES_PASSWORD`
    - password for the postgres database
- `POSTGRES_URL`
    - url of the postgres database


## Volumes

- `/storage`
    - The file storage.


## Development

To build and run for development run:
```bash
docker compose up --build
```