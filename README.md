# 🚀 Provisionamento de EC2 com Terraform dentro de um Container Docker  

## 📌 Descrição  
Este projeto demonstra como utilizar **Docker** para criar um ambiente isolado contendo **Terraform** e **AWS CLI**, permitindo provisionar uma instância EC2 na AWS diretamente de dentro de um container.  

💡 **Objetivo:** Facilitar o uso do Terraform sem precisar instalar diretamente na máquina local, garantindo um ambiente limpo e controlado.  

🔗 **Artigo relacionado:** [Como configurar AWS CLI no seu container Docker](https://medium.com/@nicolas.inaciomm/como-configurar-aws-cli-no-seu-container-docker-2ac4782d6f33)  

---

## 🔧 Tecnologias Utilizadas  
- **Docker** – Para criar um ambiente isolado com Terraform e AWS CLI  
- **Terraform** – Para provisionar a infraestrutura na AWS  
- **AWS CLI** – Para autenticação e gerenciamento da AWS  
- **Shell Script** – Para automatizar a configuração do ambiente dentro do container  

---

## 📁 Estrutura do Projeto  
```bash
docker-terraform-ec2-congrats/
│── lab/
│   ├── main.tf         # Configuração principal do Terraform
│   ├── Dockerfile      # Define a imagem com Terraform e AWS CLI
│── README.md           # Este arquivo 📝
```
---

# 🚀 Como Executar
✅ Pré-requisitos
Antes de rodar este projeto, você precisa:

✔ Ter uma conta na AWS configurada

✔ Instalar Docker na sua máquina

✔ Criar uma chave SSH para acessar a EC2

---
# 🏗️ Passo a Passo
1️⃣ Clone este repositório:
```bash
git clone https://github.com/NicoMartinns/docker-terraform-ec2-congrats.git
cd docker-terraform-ec2-congrats
```

2️⃣ Crie, inicie e acesse o container Docker:
```bash
docker build -t terraform-aws .
docker run -dit --name nome-container nome-image /bin/bash
docker exec -it nome_container /bin/bash
```

3️⃣ Dentro do container, configure suas credenciais AWS:
```bash
aws configure
```

4️⃣ Inicialize e aplique o Terraform:
```bash
terraform init
terraform apply -auto-approve
```

5️⃣ Acesse a instância EC2:

Após a instância ser provisionada, ela executará um script via User Data que inicia um servidor web exibindo uma mensagem. Para visualizar, copie o IP público da instância e abra no navegador:

🎉 Pronto! A instância foi provisionada utilizando um ambiente Dockerizado!