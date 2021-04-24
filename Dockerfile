FROM ubuntu:latest
MAINTAINER Sounak Patra

USER root
ENV JENKINS_HOME /home/jenkins/
RUN apt -y update && apt install -y python3

#RUN groupadd -g 127 jenkins
RUN useradd -u 122 -d "${JENKINS_HOME}" jenkins
RUN groupmod -g 127 jenkins
RUN usermod -a -G jenkins jenkins

RUN mkdir "${JENKINS_HOME}"
RUN usermod -d "${JENKINS_HOME}" jenkins
RUN chown jenkins:jenkins "${JENKINS_HOME}"

USER jenkins
RUN mkdir /home/jenkins/my_app
ADD set_up.py /home/jenkins/my_app/