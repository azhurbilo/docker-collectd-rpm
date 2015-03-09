wget -c http://collectd.org/files/collectd-5.4.2.tar.bz2
tar xvf collectd-5.4.2.tar.bz2

cp collectd-5.4.2.tar.bz2 /root/rpmbuild/SOURCES/

sed -i s/5.4.0/5.4.2/ collectd-5.4.2/contrib/redhat/collectd.spec
yum-builddep -y collectd-5.4.2/contrib/redhat/collectd.spec
rpmbuild -bb collectd-5.4.2/contrib/redhat/collectd.spec

cp -rv /root/rpmbuild/RPMS/ /output
