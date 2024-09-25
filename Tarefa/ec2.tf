terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2-iac-aula2" {
    ami = "ami-0e86e20dae9224db8"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    tags = {
        Name = "ec2-iac-aula2"
    }

    ebs_block_device {
        device_name = "/dev/sda1"
        volume_size = 20
        volume_type = "gp3"
    }
    security_groups = [aws_security_group.sg_aula_iac.name, "A"]
    
    key_name = "aula_iac"

# Subnet que já existe 
    # subnet_id = "..."
# Subnet criada em arquivos.tf
    # subnet_id = aws_subnet.minha_subrede.id

}
resource "aws_instance" "ec2-iac-aula2" {
    ami = "ami-0e86e20dae9224db8"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    tags = {
        Name = "ec2-iac-aula2-pub"
    }

    ebs_block_device {
        device_name = "/dev/sda1"
        volume_size = 20
        volume_type = "gp3"
    }
    security_groups = [aws_security_group.sg_aula_iac.name, "A"]
    
    key_name = "aula_iac"

# Subnet que já existe 
    # subnet_id = "..."
# Subnet criada em arquivos.tf
    # subnet_id = aws_subnet.minha_subrede.id

}

# variable "porta_http" {
#   description = "porta http"
#   default = 80
#   type = number
# }
# variable "porta_ssh" {
#   description = "porta ssh"
#   default = 22
#   type = number
# }

# resource "aws_security_group" "sg_aula_iac" {
#   ingress{
#     from_port = var.porta_ssh
#     to_port = var.porta_ssh
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }



// Criando uma subrede
# resource "aws_subnet" "minha_subrede" {
#   vpc_id = "id da vpc"
#   cidr_block = "10.10.10.0/24"
# }
