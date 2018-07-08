build:
	docker build -t zefhemel/aws-serverless-dev .

deploy: build
	docker push zefhemel/aws-serverless-dev

run: build
	docker run -it -p 4000:4000 -p 4001:4001 -p 4100:4100 zefhemel/aws-serverless-dev
