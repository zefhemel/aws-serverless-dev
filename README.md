AWS Serverless Dev APIs
=======================

This will run the following AWS services locally:

* DynamoDB (port 4000) using Dynamo Local
* DynamoDB Admin (port 4001)
* SNS & SQS (port 4100)

To run:

	docker run -d -p 4000:4000 -p 4001:4001 -p 4100:4100 zefhemel/aws-serverless-dev
