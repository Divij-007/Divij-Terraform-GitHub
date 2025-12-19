########### EC2 ############

ami_id = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 for us-east-1

tags = {
    Owner = "Divij"
    Project = "Terraform-Demo"
}

ec2_instances = {
  web = {
    instance_type = "t2.micro"
    key_name      = "webserverkey"
    Environment   = "dev"
  }
  dev = {
    instance_type = "t2.micro"
    key_name      = "webserverkey"
    Environment   = "dev"
  }
  uat = {
    instance_type = "t2.micro"
    key_name      = "webserverkey"
    Environment   = "uat"
  }
}
