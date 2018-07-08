AWS Serverless Dev APIs
=======================

[Dockerhub](https://hub.docker.com/r/zefhemel/aws-serverless-dev/)

This will run the following AWS services locally in a single docker container:

* DynamoDB (port 4000) using [DynamoDB Local](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html)
* DynamoDB Admin (port 4001) using [dynamodb-admin](https://github.com/aaronshaf/dynamodb-admin)
* SNS & SQS (port 4100) using [goaws](https://github.com/p4tin/goaws)

To run:

	docker run -d -p 4000:4000 -p 4001:4001 -p 4100:4100 zefhemel/aws-serverless-dev
