FROM quay.io/footloose/centos7

ENV GOPATH /gopath
ENV PATH /gopath/bin:$PATH:/usr/local/go/bin:/gopath/bin



RUN mkdir -p /gopath/bin
RUN mkdir -p /gopath/src
RUN yum -y update && yum clean all
RUN yum -y groupinstall "Development Tools" && yum clean all
RUN yum install -y docker iptables git gcc golang wget emacs && yum clean all
RUN yum install -y  bash-completion bash-completion-extras && yum clean all
RUN wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz 
RUN tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
RUN rm -f go1.14.4.linux-amd64.tar.gz

COPY .bash_profile /root/.bash_profile
COPY .bashrc /root/.bashrc




RUN GO111MODULE="on" go get sigs.k8s.io/kind@v0.8.1

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN ln -sf /usr/local/bin/kubectl /usr/local/bin/k

RUN yes|curl https://sdk.cloud.google.com | bash

COPY kind.yaml /root/kind.yaml
COPY kindIngress.yaml /root/kindIngress.yaml

RUN curl  https://raw.githubusercontent.com/mchirico/ct/master/src/ct.c  > ct.c
RUN gcc ct.c -o /usr/local/bin/ct -lpthread
RUN rm ct.c

COPY deployNginxIngress.yaml /root/deployNginxIngress.yaml
COPY Notes /root/Notes

