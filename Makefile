
build:
	docker build -t quay.io/mchirico/kind -f Dockerfile .

build2:
	docker build -t quay.io/mchirico/ubuntu -f DockerfileUbuntu20_04 .


push:
	echo "Do not do this locally"
	#docker build -t quay.io/mchirico/kind -f Dockerfile .
	#docker push quay.io/mchirico/kind

pull:
	docker pull quay.io/mchirico/kind

