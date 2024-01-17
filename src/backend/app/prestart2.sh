#! /usr/bin/env bash
# Update this with your app domain
export DOMAIN=localhost
 
export SERVER_NAME=localhost
export SERVER_HOST=http://localhost
export # DOMAIN=local.dockertoolbox.tiangolo.com
export # DOMAIN=localhost.tiangolo.com
 
export STACK_NAME=full-stack-fastapi-postgresql
 
export TRAEFIK_PUBLIC_NETWORK=traefik-public
export TRAEFIK_TAG=traefik
export TRAEFIK_PUBLIC_TAG=traefik-public
 
export # Configure these with your own Docker registry images
export DOCKER_IMAGE_BACKEND=backend
export DOCKER_IMAGE_CELERYWORKER=celery
export DOCKER_IMAGE_FRONTEND=frontend
export DOCKER_IMAGE_NEW_FRONTEND=new-frontend
 
 # Backend
export BACKEND_CORS_ORIGINS="[\"http://localhost\", \"http://localhost:4200\", \"http://localhost:3000\", \"http://localhost:8080\", \"https://localhost\", \"https://localhost:4200\", \"https://localhost:3000\", \"https://localhost:8080\", \"http://local.dockertoolbox.tiangolo.com\", \"http://localhost.tiangolo.com\"]"
export PROJECT_NAME="Full Stack FastAPI PostgreSQL"
export SECRET_KEY=changethis
export FIRST_SUPERUSER=admin@example.com
export FIRST_SUPERUSER_PASSWORD=changethis
export SMTP_TLS=True
export SMTP_PORT=587
export SMTP_HOST=
export SMTP_USER=
export SMTP_PASSWORD=
export EMAILS_FROM_EMAIL=info@example.com
 
export USERS_OPEN_REGISTRATION=False
 
export SENTRY_DSN=
 
 # Flower
export FLOWER_BASIC_AUTH=
 
 # Postgres
export POSTGRES_SERVER=db
export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=changethis
export POSTGRES_DB=app
 
 # PgAdmin
export PGADMIN_LISTEN_PORT=5050
export PGADMIN_DEFAULT_EMAIL=admin@example.com
export PGADMIN_DEFAULT_PASSWORD=changethis

Current_Path=($PWD)

# # Let the DB start
python $Current_Path/app/backend_pre_start.py

# echo 'Done 1'
# # Run migrations
alembic upgrade head
# echo 'Done 2'
# # Create initial data in DB
python $Current_Path/app/initial_data.py
