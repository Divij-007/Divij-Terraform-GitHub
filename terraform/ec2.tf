module "ec2_instance" {
  for_each = var.ec2_instances

  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = each.value.ec2_instances
  key_name      = each.value.ec2_instances
  instance_name = "linux-${each.key}"
  security_group_id = [aws_security_group.ec2_sg.id]
  tags = var.tags
}

variable "ami_id" {
  description = "AMI ID for the instance"
}

variable "tags" {
  description = "Add more tags"
  type = map(string)
}

variable "ec2_instances" {
  type = map(object({
    instance_type = string
    key_name = string
    Environment = string
  }))
}