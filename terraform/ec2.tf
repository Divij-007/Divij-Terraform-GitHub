module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  instance_name = var.instance_name
  security_group_id = aws_security_group.ec2_sg.id
}

variable "ami_id" {
  description = "AMI ID for the instance"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "key_name" {
  description = "SSH key pair name"
}

variable "instance_name" {
  description = "Tag name for the instance"
}

variable "tags" {
}