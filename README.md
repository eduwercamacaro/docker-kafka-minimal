# Configuración básica Apache Kafka con Docker Swarm
Configuración básica para un broker Kafka

## Dependencias (Ubuntu 18.04)
- [Make](https://www.gnu.org/software/make/) v4.+
- [Docker](https://www.docker.com/) v18.09.+

##### Instalar make:
```
$ sudo apt install make
```

##### Instalación de docker:
[Aquí](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

##### Iniciar docker swarm:
```
$ docker swarm init
```

##### Crea las configuraciones para docker:
```
$ make docker-init
```

##### Construye imagen docker para Apache Kafka:
```
$ make docker-kafka-build
```

##### Despliega Apache Kafka y Apache Zookeeper en formato Docker Swarm
```
$ make cluster-deploy
```

##### Detiene la ejecución de Apache Kafka y Apache Zookeeper
```
$ make cluster-stop
```