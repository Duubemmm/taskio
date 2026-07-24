variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-west-2"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-07f936ee1f9a0de0e"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
  default     = "taskio-key"
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
  default     = "subnet-05d039a97cd3b2401"
}

variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
  default     = "vpc-09821cedad628d37f"
}

variable "ssh_public_key" {
  description = "Public key material for the EC2 key pair"
  type        = string
  sensitive   = true
}