
variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 for us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  default = "webserverkey"
}

variable "instance_name" {
  default = "Amazon Linux Web Server"
}
