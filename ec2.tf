provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

resource "aws_instance" "example" {
  ami                    = "ami-09e6f87a47903347c"  # Replace with your desired AMI ID
  instance_type          = "t2.micro"              # Replace with your desired instance type
  subnet_id              = "subnet-0f149193d192149f1" # Replace with your subnet ID
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = "th"  # Replace with your key pair name

  tags = {
    Name = "Launched using Terraform"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_tf"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Replace with your desired CIDR block for SSH access
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}