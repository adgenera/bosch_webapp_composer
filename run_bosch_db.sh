aws --no-verify-ssl ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 336208436497.dkr.ecr.eu-central-1.amazonaws.com
docker container stop boschdbbe
docker container stop bosch_db_fe_container
docker container stop mongodb
docker rm boschdbbe
docker rm bosch_db_fe_container
docker rm mongodb
docker rmi docker tag 336208436497.dkr.ecr.eu-central-1.amazonaws.com/boschdbfe:latest
docker rmi docker tag 336208436497.dkr.ecr.eu-central-1.amazonaws.com/boschdbbe:latest
docker compose -f Bosh_db.yaml kill
docker compose -f Bosh_db.yaml up -d
