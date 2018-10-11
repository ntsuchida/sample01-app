FROM openshift/base-centos7
RUN yum install -y epel-release && yum install -y lighttpd && yum clean all -y
COPY ./etc/ /opt/app-root/etc/
COPY ./s2i/bin/ /usr/libexec/s2i
RUN chown -R 1001:1001 /opt/app-root
RUN chmod +x /usr/libexec/s2i/*
USER 1001
EXPOSE 8080

