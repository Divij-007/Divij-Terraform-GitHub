module "ec2_cloudwatch_alarms" {
  for_each = module.ec2_instance                # Calling the ec2 module here to get instance id and name and it reccurs based on the number of instances

  source = "./modules/cloudwatch"

  instance_id   = each.value.instance.id        # From ec2 module, output name is instance
  instance_name = each.value.instance.name
  sns_topic_arn = module.sns.topic_arn          # Calling sns module and the topic_arn is the outputs name

  alarms = var.cloudwatch_alarms                # alarms is a variable from module and cloudwatch_alarms passes value to the module
}

variable "cloudwatch_alarms" {
  type = map(object({
    metric_name         = string
    namespace           = string
    statistic           = string
    period              = number
    evaluation_periods  = number
    threshold           = number
    comparison_operator = string
    alarm_description   = string
    dimensions          = map(string)
  }))
}