FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum -y update
RUN yum -y install openssh-server
RUN ssh-keygen -A

COPY bootstrap-host.service /etc/systemd/system/bootstrap-host.service
RUN systemctl enable bootstrap-host.service

EXPOSE 22

CMD ["/sbin/init"]
