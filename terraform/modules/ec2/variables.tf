variable "ami_id" {
  description = "AMI ID for the instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
}

variable "instance_name" {
  description = "Tag name for the instance"
  default     = "Terraform Instance"
}

variable "security_group_id" {
  description = "ID of the security group to attach"
}

variable "tags" {
  description = "Add more tags"
  default = {}
  type = map(string)
}

variable "ec2_instances" {
  type = map(object({
    instance_type = string
    key_name = string
    Environment = string
  }))
}