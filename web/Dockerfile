FROM centos:7.9.2009
ADD /entry-point.sh /entry-point.sh
RUN chmod 755 /entry-point.sh
RUN yum install -y httpd
RUN yum install -y gcc gcc-c++ httpd-devel wget make
RUN wget -P /usr/local  https://dlcdn.apache.org/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.48-src.tar.gz --no-check-certificate
RUN tar -zxf /usr/local/tomcat-connectors-1.2.48-src.tar.gz -C /usr/local
WORKDIR /usr/local/tomcat-connectors-1.2.48-src/native/
RUN ./configure --with-apxs=/usr/bin/apxs
RUN make
RUN make install
WORKDIR /
EXPOSE 80
ENTRYPOINT ["sh","/entry-point.sh"]
