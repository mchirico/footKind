![Schedule](https://github.com/mchirico/footKind/workflows/Schedule/badge.svg)
![Docker Image CI](https://github.com/mchirico/footKind/workflows/Docker%20Image%20CI/badge.svg)

# footKind

This repo creates two public images

-  [https://quay.io/repository/mchirico/kind](https://quay.io/repository/mchirico/kind)
-  [https://quay.io/repository/mchirico/ubuntu](https://quay.io/repository/mchirico/ubuntu)

Both contain docker and `kind` software for running K8s


The mchirico/kind has the following software installed:

1) Go 1.14.4
2) kind
3) Google sdk
4) Updated PATH for Go
5) Emacs
6) ct
7) gcc

## Steps to get up and running

The steps below assume you have weaveworks/footloose installed.

### mchirico/kind
```
curl -L https://git.io/JfH6A -o footloose.yaml
footloose create
footloose ssh root@knode0

systemctl start docker
kind create cluster --config kind.yaml
```

### mchirico/ubuntu
```
curl -L https://git.io/Jf5go -o footloose.yaml
footloose create
footloose ssh root@knode0

# Note: docker is started automatically

kind create cluster --config kind.yaml
```

