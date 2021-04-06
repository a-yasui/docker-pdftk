FROM ubuntu:groovy

MAINTAINER a.yasui <a.yasui@gmail.com

ENV PDFTK_VERSION 2.02

# The directory containing the PDF files to be processed is expected to be mounted here
# as a docker volume when running the container.
RUN mkdir /work
WORKDIR /work
VOLUME ["/work"]

RUN apt-get update && \
    apt-get install -y --no-install-recommends pdftk && \
    apt-get clean

ENTRYPOINT ["/usr/bin/pdftk"]
