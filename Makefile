
build:
	docker build -t quay.io/mchirico/kind -f Dockerfile .


push:
	docker push quay.io/mchirico/kind

pull:
	docker pull quay.io/mchirico/kind

