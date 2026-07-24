resource "aws_instance" "taskio" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.taskio.id]

  tags = {
    Name = "taskio-instance"
  }
}

resource "aws_security_group" "taskio" {
  name        = "launch-wizard-4"
  description = "launch-wizard-4 created 2026-07-17T20:00:59.571Z"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "taskio" {
  key_name   = var.key_name
  public_key = var.ssh_public_key

  lifecycle {
    ignore_changes = [public_key]
  }
}