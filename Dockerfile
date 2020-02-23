FROM gcc:latest AS builder

RUN git clone https://src.libcode.org/pkun/klish.git && \
    cd klish && \
    ./autogen.sh && \
    ./configure && \
    make

FROM ubuntu:18.04

WORKDIR /klish

# net-tools is only needed to run the xml sample
RUN apt-get update && \
    apt-get install -y expat net-tools && \
    mkdir bin .libs

COPY --from=builder /klish/bin ./bin
COPY --from=builder /klish/.libs ./.libs
COPY ./xml-sample /etc/clish

ENV CLISH_PATH /etc/clish

CMD ["/bin/bash"]
