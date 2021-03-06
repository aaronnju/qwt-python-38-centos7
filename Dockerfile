FROM centos/python-38-centos7:latest

USER root
RUN yum update -y && yum install -y qt5-qtbase qt5-qtbase-gui && yum groupinstall -y Fonts && yum clean all
COPY libqwt.so.6 /lib64/

USER 1001
CMD $STI_SCRIPTS_PATH/usage
