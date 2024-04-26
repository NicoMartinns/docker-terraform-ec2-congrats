provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "permitir_acesso" {
    name            = "Permitir_acesso"
    description     = "Permitir acesso HTTP e HTTPS"
    vpc_id          = "vpc-02bda97cc92e4ba15"

    tags = {
      Name = "LabLinux"
    }

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
       from_port        = 443
       to_port          = 443
       protocol         = "tcp"
       cidr_blocks      = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "instancia_aws" {
  ami                           = "ami-04e5276ebb8451442"
  instance_type                 = "t2.micro"
  vpc_security_group_ids        = [aws_security_group.permitir_acesso.id]

  user_data = <<-EOF
                #!/bin/bash
                yum update -y
                systemctl start httpd
                systemctl enable httpd
                echo "<h1>Parabéns, você subiu sua instância EC2!</h1>">/var/www/html/index.html
                EOF
}