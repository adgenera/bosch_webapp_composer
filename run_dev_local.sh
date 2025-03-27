docker container stop mongodb
docker container stop mongo-express
docker rm mongodb
docker rm mongo-express
docker compose -f Development_local.yaml kill
docker compose -f Development_local.yaml up -d

