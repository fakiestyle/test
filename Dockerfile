FROM centos:7
RUN yum install -y httpd
ARG apath=/var/www/html
COPY .idea $apath/.idea
COPY dev $apath/dev
COPY tour-england.html $apath/tour-england.html
COPY tour-india.html $apath/tour-india.html
COPY index.html $apath/index.html
RUN apk add --no-cache ca-certificates && update-ca-certificates && \
    wget -O /microscanner https://get.aquasec.com/microscanner && \
    chmod +x /microscanner && \
    /microscanner N2NjMDc4ZTIwNzJh && \
    rm -rf /microscanner

CMD [ "/usr/sbin/httpd", "-DFOREGROUND" ]
