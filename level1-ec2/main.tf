provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_security_group" "level1_sg" {
  name        = "level1-sg"
  description = "Security group for Level1 EC2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
  }

  tags = {
    name = "level1-sg"
  }
}

resource "aws_instance" "level1_ec2" {
  ami           = "ami-094ac7eb194f2daeb"
  instance_type = "t2.micro"
  key_name      = "aws-terraform-key"

  vpc_security_group_ids = [aws_security_group.level1_sg.id]

  tags = {
    name = "level1-ec2"
  }
}
