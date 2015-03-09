FROM centos:centos6

RUN yum update -y
RUN yum install -y rpm-build yum-utils rpmdevtools tar groupinstall "Development tools" gcc
RUN rpm -ivh http://mir01.syntis.net/epel/6/i386/epel-release-6-8.noarch.rpm
RUN mkdir -p /root/rpmbuild/SOURCES/
RUN mkdir /output

ADD build.sh /tmp/build.sh

WORKDIR /tmp

RUN chmod +x build.sh

CMD "./build.sh"
