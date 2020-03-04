# Spring Boot + Spring Cloud + Mybatis + SEATA

Basic example to demonstrate how to use the SEATA framework to execute distributed transactions throughout multiple microservices.

## Starting infrastructure locally with docker-compose

In order to start entire infrastructure using Docker, you have to build images by executing

```
$ docker-compose build
```

from a project root.

Once images are ready, you can start them with a single command

```
$ docker-compose up
```

*NOTE: Under MacOSX or Windows, make sure that the Docker VM has enough memory to run the microservices. The default settings
are usually not enough and make the `docker-compose up` painfully slow.*

## Starting the microservices

Once all the infrastructure is ready, you can execute the microservices.

Every microservice is a Spring Boot application and can be started locally using IDE or

```
$ ./mvnw spring-boot:run
```
 command.

Please note that supporting services (__Discovery Server__) must be started before any other application.

## Load

 * Gatling load generator. (To ensure that all services are up and running properly.)

## References

 * https://github.com/seata/seata
 * https://github.com/seata/seata-samples
 * https://github.com/seata/seata-samples/tree/master/springcloud-jpa-seata
 * https://github.com/seata/seata-go-server
 * https://github.com/uuhnaut69/spring-jpa-eureka-seata
 * https://github.com/liuzhibin-cn/my-demo/tree/fb3cbc782697d24f38896edf634b29342e922939
 * https://github.com/mkyuangithub/mkyuangithub/tree/0c997712677784d0e236f06184ca313e34ff7916
 * https://www.alibabacloud.com/blog/seata-simple-extensible-autonomous-transaction-architecture_594853
 * https://github.com/sunth73/alibaba_seata
 * https://www.sofastack.tech/en/guides/kc-seata-demo/
 * https://github.com/aliyuncluo/seata-sample/tree/0e44728b6f5d5fc860121dd6f7d197f5695ff9b7
 * https://github.com/alibaba/spring-cloud-alibaba/tree/f904bb4acb7455aeb6185dd0d1345d8e98e94946/spring-cloud-alibaba-seata
 * https://github.com/LauLlobet/seata-kata
 * https://programmer.help/blogs/preliminary-experience-of-spring-cloud-and-seata-distributed-transaction.html
 * https://microservices.io/patterns/data/database-per-service.html
