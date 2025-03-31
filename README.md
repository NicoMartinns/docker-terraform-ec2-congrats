# Subindo uma instância EC2 com terraform! #

Vamos subir uma instância EC2, e se tudo der certo, receberemos uma mensagem no final do projeto dizendo:

"Parabéns, você subiu sua instância EC2!"

# PASSOS #

1 - Subir imagem e container docker 
    1.1 Instalar terraform
    1.2 Instalar AWS CLI
    1.3 No terminal, ir até a pasta com o arquivo Dockerfile e realizar
        1.3.1 docker build -t "name-tag" .
        1.3.2 docker run -dit --name "name" "name-image" /bin/bash
        1.3.3 docker exec -it "container-name" /bin/bash

2 - Inserir credenciais AWS 
    2.1 aws configure

3 - Inserir os arquivos terraform na pasta
    3.1 terraform init
    3.2 terraform apply

