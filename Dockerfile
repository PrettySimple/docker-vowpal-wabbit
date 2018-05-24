FROM alpine:3.7

RUN apk add --no-cache git build-base boost-dev zlib-dev

RUN git clone --depth 1 --branch master --single-branch \
    git://github.com/JohnLangford/vowpal_wabbit.git /opt/vowpal_wabbit/

WORKDIR /opt/vowpal_wabbit/
RUN make && make install

WORKDIR /