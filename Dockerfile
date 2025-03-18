FROM jenkins/jenkins:lts
USER root
# Update apt and install make and g++ directly with --fix-missing
RUN apt-get update && \
    apt-get install -y --fix-missing make g++ && \
    rm -rf /var/lib/apt/lists/*
USER jenkins
