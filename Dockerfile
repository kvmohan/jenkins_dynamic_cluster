FROM centos:latest

RUN yum install /sbin/services httpd -y
RUN systemctl start httpd
Run systemctl enable httpd
COPY index.html /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80