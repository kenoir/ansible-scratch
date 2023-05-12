FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum -y update
RUN yum -y install python3
RUN yum -y install openssh-clients

RUN python3 -m venv ansible
RUN source ansible/bin/activate && pip install --upgrade pip && pip install ansible

CMD ["/control/bootstrap.sh"]
