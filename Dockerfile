FROM ubuntu:latest

LABEL autor="NicoMartins"

ENV TERRAFORM_VERSION=1.8.2

# Instalando os pacotes necessários.
RUN apt-get update -y && \
    apt-get install unzip -y && \ 
    apt-get install wget -y  && \
    apt-get install vim -y && \ 
    apt-get install curl -y

# Instalando Terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform usr/local/bin/ && \
    terraform --version

# Instalando AWS CLI
RUN mkdir Downloads && \
    cd Downloads && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    rm awscliv2.zip && \
    ./aws/install

# Mantendo o container interativo
CMD ["/bin/bash"]   