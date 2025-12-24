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