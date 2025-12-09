resource "aws_sns_topic" "sns" {
  name = "Alerts"
  display_name = var.sns_display_name
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.sns.arn
  protocol  = var.protocol
  endpoint  = var.email
}