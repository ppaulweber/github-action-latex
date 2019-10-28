
default: build

build:
	docker build .

image:
	docker build -f Dockerfile.image -t ppaulweber/github-action-latex .

deploy-image: image
	docker push ppaulweber/github-action-latex:latest
