FROM ubuntu:16.04

MAINTAINER Joel Llacer <z0beat@gmail.com>

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-7-jre git awscli && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m -p jmeter -s /bin/bash jmeter

WORKDIR /home/jmeter
COPY entrypoint.sh .
RUN chown jmeter:jmeter entrypoint.sh

USER jmeter
RUN git clone https://github.com/oliverlloyd/jmeter-ec2.git

ENTRYPOINT ["./entrypoint.sh"]

CMD ["-h"]
