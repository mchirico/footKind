![Schedule](https://github.com/mchirico/footKind/workflows/Schedule/badge.svg)
![Docker Image CI](https://github.com/mchirico/footKind/workflows/Docker%20Image%20CI/badge.svg)

# footKind

This repo creates the public image on [https://quay.io/repository/mchirico/kind](https://quay.io/repository/mchirico/kind)
for testing kubernetes inside of a docker running container.

The steps below assume you have [weaveworks/footloose](https://github.com/weaveworks/footloose) installed.

## Steps to get up and running
```
curl -L https://git.io/JfH6A -o footloose.yaml
footloose create
footloose ssh root@knode0

systemctl start docker
kind create cluster --config kind.yaml
```
