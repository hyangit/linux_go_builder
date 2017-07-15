FROM centos:7

# ADD go1.8.3.linux-amd64.tar.gz /usr/local
RUN curl -O https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz \
&& tar -C /usr/local -xzf go1.8.3.linux-amd64.tar.gz \
&& rm -rf go1.8.3.linux-amd64.tar.gz

ENV PATH=$PATH:/usr/local/go/bin
WORKDIR /go/src

ENTRYPOINT ["go", "build"]
