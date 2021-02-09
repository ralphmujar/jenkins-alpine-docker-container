FROM jenkins/jenkins:alpine

USER root

RUN apk add --update docker openrc
RUN rc-update add docker boot

WORKDIR /var/jenkins_home