#aws --no-verify-ssl ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 336208436497.dkr.ecr.eu-central-1.amazonaws.com
docker container stop bosch_db_be_container
docker container stop bosch_db_fe_container
docker container stop mongodb
docker rm bosch_db_be_container
docker rm bosch_db_fe_container
docker rm mongodb
docker rmi docker tag andreacencio/usecase_db:FE-latest
docker rmi docker tag andreacencio/usecase_db:BE-latest
docker compose -f Bosh_db_local.yaml kill
docker compose -f Bosh_db_local.yaml up -d
