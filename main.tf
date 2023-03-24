provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "instance1" {
  ami          =  "ami-0af8e6bfc311bc9cb"
  instance_type = "t2.micro"
  count = 3
  security_groups = [aws_security_group.allow_http.id, aws_security_group.default.id]
  tags = {
    Name = "Oges-Proj"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic"

  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
  }
}

resource "aws_security_group" "default" {
  name        = "default"
  description = "default VPC security group"

  ingress {
    description      = "HTTP from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
}
