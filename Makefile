
build:
	docker build -t quay.io/mchirico/kind -f Dockerfile .


push:
	echo "Do not do this locally"
	#docker build -t quay.io/mchirico/kind -f Dockerfile .
	#docker push quay.io/mchirico/kind

pull:
	docker pull quay.io/mchirico/kind

