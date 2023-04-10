FROM eikek0/sharry

COPY ./sharry.conf /opt/sharry/conf/sharry.conf

COPY entrypoint.sh /entrypoint.sh

ENV BASE_URL="http://localhost"
ENV KEYCLOAK_CLIENT_ID="fileserver"
ENV KEYCLOAK_CLIENT_SECRET=""
ENV KEYCLOAK_ISSUER="http://localhost/keycloak/realms/Gamify-IT"
ENV KEYCLOAK_URL="http://keycloak/keycloak/realms/Gamify-IT"
ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="postgres"
ENV POSTGRES_URL="postgresql://fileserver-db:5432/postgres"

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/opt/sharry/bin/sharry-restserver", "/opt/sharry/conf/sharry.conf" ]
