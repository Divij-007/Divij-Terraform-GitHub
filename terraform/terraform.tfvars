########### EC2 ############

ami_id = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 for us-east-1

tags = {
    Owner = "Divij"
    Project = "Terraform-Demo"
}

ec2_instances = {
  web = {                           #These key names should not be touched, otherwise it results in destroy and create a new one
    instance_type = "t2.micro"
    key_name      = "webserverkey"
    environment = "dev"
  }
  dev = {
    instance_type = "t2.micro"
    key_name      = "webserverkey"
    environment = "dev"
  }
  uat = {
    instance_type = "t2.micro"
    key_name      = "webserverkey"
    environment = "uat"
  }
}