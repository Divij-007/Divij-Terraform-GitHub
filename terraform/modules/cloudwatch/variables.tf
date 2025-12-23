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