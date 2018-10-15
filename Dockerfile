FROM openshift/base-centos7
COPY ./etc/ /opt/app-root/etc/
COPY ./s2i/bin/ /usr/libexec/s2i
USER 1001
EXPOSE 8080
