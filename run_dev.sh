aws --no-verify-ssl ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 336208436497.dkr.ecr.eu-central-1.amazonaws.com
docker container stop ad_genera_container_dev
docker container stop adgenera_be
docker container stop nginxadgenera
docker container stop mongodb
docker rm ad_genera_container_dev
docker rm adgenera_be
docker rm nginxadgenera
docker rm mongodb
docker rmi docker tag adgenera:latest 336208436497.dkr.ecr.eu-central-1.amazonaws.com/adgenera
docker rmi docker tag adgenerabe:latest 336208436497.dkr.ecr.eu-central-1.amazonaws.com/adgenerabe
docker rmi docker tag adgenerabengix:latest 336208436497.dkr.ecr.eu-central-1.amazonaws.com/adgenerabengix
docker compose -f Development.yaml kill
docker compose -f Development.yaml up -d

