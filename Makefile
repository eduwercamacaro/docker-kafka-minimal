
export
stack-name = kafka

docker-init:
	@ docker network create --driver overlay --scope swarm kafka_network || true
	@ docker volume create zookeeper_data || true
	@ docker volume create zookeeper_datalog || true
	@ docker volume create kafka_data || true

docker-kafka-build:
	@ docker build -t kafka ./kafka

cluster-deploy:
	@ docker stack deploy -c docker-compose.yml $(stack-name)

cluster-stop:
	@ docker stack rm $(stack-name)