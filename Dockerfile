FROM amazonlinux:latest
RUN yum install -y httpd \
        zip \
        unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/dotnet.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip dotnet.zip
RUN cp -r digital-agency-website-template/* .
RUN rm -rf digital-agency-website-template dotnet.zip
RUN systemctl start httpd
EXPOSE 80
