###### SNS ######

sns_display_name = "Alert"
protocol = "email"
email = "divijdivij007@gmail.com"

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

###### SECURITY GROUP ######

vpc_id = "vpc-045ed836d88dcbfcd"

ec2_sg_ingress_rules = [
  {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow RDP"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

ec2_sg_egress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

###### EC2 Alarms ######

cloudwatch_alarms = {
  HighCPUUtilization = {
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    statistic           = "Average"
    period              = 300
    evaluation_periods  = 2
    threshold           = 80
    comparison_operator = "GreaterThanThreshold"
    alarm_description   = "CPU usage above 80%"
    dimensions          = {}
  }

  StatusCheckFailed = {
    metric_name         = "StatusCheckFailed"
    namespace           = "AWS/EC2"
    statistic           = "Maximum"
    period              = 60
    evaluation_periods  = 1
    threshold           = 1
    comparison_operator = "GreaterThanOrEqualToThreshold"
    alarm_description   = "EC2 status check failed"
    dimensions          = {}
  }
}