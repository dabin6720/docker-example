FROM centos:7.9.2009

#서버 홈폴더 설정
RUN mkdir /usr/local/tomcat

#서버 yum update 및 openjdk 설치
RUN yum install epel-release java-11-openjdk-devel wget -y 

#tomcat 압축 파일 복사
RUN wget http://archive.apache.org/dist/tomcat/tomcat-9/v9.0.8/bin/apache-tomcat-9.0.8.tar.gz

#압축 해제
RUN tar -zxvf apache-tomcat-9.0.8.tar.gz -C /usr/local/tomcat

#서비스 포트 지정
EXPOSE 8080
EXPOSE 8009

CMD ["/usr/local/tomcat/apache-tomcat-9.0.8/bin/catalina.sh", "run"]
