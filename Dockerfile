FROM centos:latest

RUN yum install httpd git curl -y
RUN systemctl start httpd
Run systemctl enable httpd
COPY images /var/www/html/
COPY index.html /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80