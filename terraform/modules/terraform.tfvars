########### EC2 TAGS ############

ami_id = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 for us-east-1
instance_type = "t2.micro"
key_name = "webserverkey"
instance_name = "Linux Web Server"

tags = {
    Environment = "Prod"
}