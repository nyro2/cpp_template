FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y build-essential cmake clang libssl-dev vim pkg-config pip && \
    pip install conan && \
    conan profile detect
