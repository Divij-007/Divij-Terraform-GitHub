module "ec2_instance" {
  for_each = var.ec2_instances

  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = each.value.instance_type
  key_name      = each.value.key_name
  instance_name = "linux-${each.key}"
  security_group_id = aws_security_group.ec2_sg.id
  
  tags = merge(
    var.tags,
    {
      Environment = each.value.environment
    }
  )
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
    environment = string
  }))
}