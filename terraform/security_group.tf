module "ec2_sg" {
  source = "./modules/sg"

  name        = "ec2-security-group"
  description = "Allow HTTP, HTTPS, SSH, RDP"
  vpc_id      = var.vpc_id

  ingress_rules = var.ec2_sg_ingress_rules
  egress_rules  = var.ec2_sg_egress_rules

  tags = {
    Name  = "EC2 Security Group"
    Owner = "Divij"
  }
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ec2_sg_ingress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "ec2_sg_egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}
