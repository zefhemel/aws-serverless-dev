#!/bin/bash

PORT=4001 dynamodb-admin &
/go/bin/cmd -config /goaws.yaml &
cd /dynamo-local && java -jar DynamoDBLocal.jar -inMemory -sharedDb -port 4000
