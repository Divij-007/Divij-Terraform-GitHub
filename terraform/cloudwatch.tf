module "ec2_cloudwatch_alarms" {
  for_each = module.ec2_instance.instances

  source = "./modules/cloudwatch"

  instance_id   = each.value.id
  instance_name = each.value.name
  sns_topic_arn = module.sns.topic_arn

  alarms = var.cloudwatch_alarms
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