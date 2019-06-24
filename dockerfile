FROM centos:7
RUN yum install -y httpd
ARG apath=/var/www/html
COPY .idea $apath/.idea
COPY dev $apath/dev
COPY tour-england.html $apath/tour-england.html
COPY tour-india.html $apath/tour-india.html
COPY index.html $apath/index.html

# ADD https://get.aquasec.com/microscanner .
# RUN chmod +x microscanner
# RUN ./microscanner N2NjMDc4ZTIwNzJh
# EXPOSE 80

CMD [ "/usr/sbin/httpd", "-DFOREGROUND" ]
