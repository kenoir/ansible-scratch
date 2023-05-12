FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum -y update
RUN yum -y install openssh-server
RUN ssh-keygen -A

EXPOSE 22

CMD ["/host/bootstrap.sh"]
