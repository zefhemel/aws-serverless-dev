FROM ubuntu
ENV DYNAMO_ENDPOINT http://localhost:4000
RUN apt-get update
RUN apt-get -y install npm openjdk-8-jre curl git-core golang
RUN mkdir /go
ENV GOPATH /go
# Install dynamo local
RUN mkdir /dynamo-local && cd /dynamo-local && curl https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz | tar xvzf -
# Install dynamodb-admin
RUN npm install dynamodb-admin -g && go get github.com/p4tin/goaws/...
COPY run.sh goaws.yaml /
CMD /run.sh
EXPOSE 4000 4001 4100
