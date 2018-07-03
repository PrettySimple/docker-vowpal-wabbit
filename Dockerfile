FROM alpine:3.7
COPY install_vw.sh /opt/
RUN /opt/install_vw.sh