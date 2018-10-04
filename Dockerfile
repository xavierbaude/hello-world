FROM centos:latest
LABEL maintainer="Xavier Baude - https://github.com/xavierbaude"

RUN  yum update -y && \
     yum clean all && \
     rm -rf /var/cache/yum
     
WORKDIR /

EXPOSE 8888
USER 65535

ENTRYPOINT ["python", "-m", "SimpleHTTPServer", "8888"]
