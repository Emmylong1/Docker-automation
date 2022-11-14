FROM centos
RUN yum-y install httpd
CMD echo "hello world!!"
