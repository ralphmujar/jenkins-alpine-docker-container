FROM jenkins/jenkins:alpine
USER root
RUN apk add --update docker openrc && \
  apk add --no-cache make && \
  rc-update add docker boot
WORKDIR /var/jenkins_home
