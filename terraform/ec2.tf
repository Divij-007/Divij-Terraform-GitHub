provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  default = "us-east-1"
}

module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  instance_name = var.instance_name
}

variable "ami_id" {
  description = "AMI ID for the instance"
  default = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 for us-east-1
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  default = "webserverkey"
}

variable "instance_name" {
  description = "Tag name for the instance"
  default     = "Linux Web Server"
}