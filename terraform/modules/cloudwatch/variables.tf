variable "instance_id" {
  description = "EC2 Instance ID"
  type        = string
}

variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
}

variable "sns_topic_arn" {
  description = "SNS topic ARN"
  type        = string
}

variable "alarms" {
  description = "Alarm configuration"
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