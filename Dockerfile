FROM postgres:9.3

# Postgres setup
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgrespassword
ENV POSTGRES_DB=postgres

# Copy .csv files to /tmp directory of container
COPY ./Data /tmp/
# Sql script files that are copied to /docker-entrypoint-initdb.d/ will be executed in alphanumeric order when container is started.
COPY ./Scripts /docker-entrypoint-initdb.d/