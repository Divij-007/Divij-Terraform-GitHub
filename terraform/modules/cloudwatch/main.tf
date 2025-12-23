resource "aws_cloudwatch_metric_alarm" "cloudwatch_alarms" {
  for_each = var.alarms

  alarm_name          = "${each.key}-${var.instance_name}"
  metric_name         = each.value.metric_name
  namespace           = each.value.namespace
  statistic           = each.value.statistic
  period              = each.value.period
  evaluation_periods  = each.value.evaluation_periods
  threshold           = each.value.threshold
  comparison_operator = each.value.comparison_operator
  alarm_description   = each.value.alarm_description

  dimensions = merge(
    each.value.dimensions,
    {
      InstanceId = var.instance_id
    }
  )

  alarm_actions = [var.sns_topic_arn]
  ok_actions    = [var.sns_topic_arn]
}
