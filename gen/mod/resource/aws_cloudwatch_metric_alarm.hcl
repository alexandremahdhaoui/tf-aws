resource "aws_cloudwatch_metric_alarm" "aws_cloudwatch_metric_alarm" {
  extended_statistic                    = var.extended_statistic
  period                                = var.period
  threshold_metric_id                   = var.threshold_metric_id
  alarm_actions                         = var.alarm_actions
  namespace                             = var.namespace
  treat_missing_data                    = var.treat_missing_data
  ok_actions                            = var.ok_actions
  stat                                  = var.stat
  alarm_description                     = var.alarm_description
  alarm_name                            = var.alarm_name
  arn                                   = var.arn
  comparison_operator                   = var.comparison_operator
  metric                                = var.metric
  metric_name                           = var.metric_name
  evaluate_low_sample_count_percentiles = var.evaluate_low_sample_count_percentiles
  expression                            = var.expression
  id                                    = var.id
  unit                                  = var.unit
  account_id                            = var.account_id
  actions_enabled                       = var.actions_enabled
  label                                 = var.label
  metric_query                          = var.metric_query
  tags                                  = var.tags
  threshold                             = var.threshold
  dimensions                            = var.dimensions
  insufficient_data_actions             = var.insufficient_data_actions
  return_data                           = var.return_data
  statistic                             = var.statistic
  datapoints_to_alarm                   = var.datapoints_to_alarm
  evaluation_periods                    = var.evaluation_periods
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "evaluate_low_sample_count_percentiles" {
  description = "(Optional) Used only for alarms\nbased on percentiles. If you specify ignoreevaluateignore, and evaluate."
  type        = string
}
variable "expression" {
  description = "(Optional) The math expression to be performed on the returned data, if this object is performing a math expression. This expression can use the id of the other metrics to refer to those metrics, and can also use the id of other expressions to use the result of those expressions. For more information about metric math expressions, see Metric Math Syntax and Functions in the Amazon CloudWatch User Guide."
  type        = string
}
variable "id" {
  description = "The ID of the health check."
  type        = string
}
variable "unit" {
  description = "(Optional) The unit for this metric.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "account_id" {
  description = "(Optional) The ID of the account where the metrics are located, if this is a cross-account alarm."
  type        = string
}
variable "actions_enabled" {
  description = "(Optional) Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true."
  type        = string
}
variable "label" {
  description = "(Optional) A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents."
  type        = string
}
variable "metric_query" {
  description = " (Optional) Enables you to create an alarm based on a metric math expression. You may specify at most 20."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.~> strongNOTE:  If you specify at least one metric_query, you may not specify a metric_name, namespace, period or statistic. If you do not specify a metric_query, you must specify each of these (although you may use extended_statistic instead of statistic).Nested fieldsmetric_query"
  type        = string
}
variable "threshold" {
  description = "(Optional) The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models."
  type        = string
}
variable "dimensions" {
  description = "(Optional) The dimensions for this metric.  For the list of available dimensions see the AWS documentation here."
  type        = string
}
variable "insufficient_data_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  type        = string
}
variable "return_data" {
  description = " (Optional) Specify exactly one metric_query to be true to use that metric_query result as the alarm."
  type        = string
}
variable "statistic" {
  description = "SampleCount, Average, Sum, Minimum, Maximum"
  type        = string
}
variable "datapoints_to_alarm" {
  description = "(Optional) The number of datapoints that must be breaching to trigger the alarm."
  type        = string
}
variable "evaluation_periods" {
  description = "(Required) The number of periods over which data is compared to the specified threshold."
  type        = string
}
variable "extended_statistic" {
  description = "(Optional) The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100."
  type        = string
}
variable "period" {
  description = "(Required) The period in seconds over which the specified stat is applied."
  type        = string
}
variable "threshold_metric_id" {
  description = "(Optional) If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function."
  type        = string
}
variable "alarm_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  type        = string
}
variable "namespace" {
  description = "(Required) The namespace for this metric. See docs for the list of namespacessupported metrics."
  type        = string
}
variable "treat_missing_data" {
  description = "(Optional) Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching. Defaults to missing."
  type        = string
}
variable "ok_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  type        = string
}
variable "stat" {
  description = "supported statistics."
  type        = string
}
variable "alarm_description" {
  description = "(Optional) The description for the alarm."
  type        = string
}
variable "alarm_name" {
  description = "(Required) The descriptive name for the alarm. This name must be unique within the user's AWS account"
  type        = string
}
variable "arn" {
  description = "The ARN of the CloudWatch Metric Alarm."
  type        = string
}
variable "comparison_operator" {
  description = "(Required) The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. Additionally, the values  LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, and GreaterThanUpperThreshold are used only for alarms based on anomaly detection models."
  type        = string
}
variable "metric" {
  description = " (Optional) The metric to be returned, along with statistics, period, and units. Use this parameter only if this object is retrieving a metric and not performing a math expression on returned data.~> strongNOTE:  You must specify either metric or expression. Not both.metric"
  type        = string
}
variable "metric_name" {
  description = "supported metrics."
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "extended_statistic" {
  description = "(Optional) The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.extended_statistic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "period" {
  description = "(Required) The period in seconds over which the specified stat is applied."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.period
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "threshold_metric_id" {
  description = "(Optional) If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.threshold_metric_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alarm_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.alarm_actions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "namespace" {
  description = "(Required) The namespace for this metric. See docs for the list of namespacessupported metrics."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.namespace
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "treat_missing_data" {
  description = "(Optional) Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching. Defaults to missing."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.treat_missing_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_name" {
  description = "supported metrics."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.metric_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ok_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.ok_actions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stat" {
  description = "supported statistics."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.stat
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alarm_description" {
  description = "(Optional) The description for the alarm."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.alarm_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alarm_name" {
  description = "(Required) The descriptive name for the alarm. This name must be unique within the user's AWS account"
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.alarm_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the CloudWatch Metric Alarm."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comparison_operator" {
  description = "(Required) The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. Additionally, the values  LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, and GreaterThanUpperThreshold are used only for alarms based on anomaly detection models."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.comparison_operator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric" {
  description = " (Optional) The metric to be returned, along with statistics, period, and units. Use this parameter only if this object is retrieving a metric and not performing a math expression on returned data.~> strongNOTE:  You must specify either metric or expression. Not both.metric"
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.metric
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "evaluate_low_sample_count_percentiles" {
  description = "(Optional) Used only for alarms\nbased on percentiles. If you specify ignoreevaluateignore, and evaluate."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.evaluate_low_sample_count_percentiles
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expression" {
  description = "(Optional) The math expression to be performed on the returned data, if this object is performing a math expression. This expression can use the id of the other metrics to refer to those metrics, and can also use the id of other expressions to use the result of those expressions. For more information about metric math expressions, see Metric Math Syntax and Functions in the Amazon CloudWatch User Guide."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.expression
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the health check."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "threshold" {
  description = "(Optional) The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unit" {
  description = "(Optional) The unit for this metric.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "(Optional) The ID of the account where the metrics are located, if this is a cross-account alarm."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "actions_enabled" {
  description = "(Optional) Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.actions_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "label" {
  description = "(Optional) A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.label
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_query" {
  description = " (Optional) Enables you to create an alarm based on a metric math expression. You may specify at most 20."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.metric_query
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.~> strongNOTE:  If you specify at least one metric_query, you may not specify a metric_name, namespace, period or statistic. If you do not specify a metric_query, you must specify each of these (although you may use extended_statistic instead of statistic).Nested fieldsmetric_query"
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimensions" {
  description = "(Optional) The dimensions for this metric.  For the list of available dimensions see the AWS documentation here."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.dimensions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "insufficient_data_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.insufficient_data_actions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "return_data" {
  description = " (Optional) Specify exactly one metric_query to be true to use that metric_query result as the alarm."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.return_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "statistic" {
  description = "SampleCount, Average, Sum, Minimum, Maximum"
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.statistic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "datapoints_to_alarm" {
  description = "(Optional) The number of datapoints that must be breaching to trigger the alarm."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.datapoints_to_alarm
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "evaluation_periods" {
  description = "(Required) The number of periods over which data is compared to the specified threshold."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.evaluation_periods
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the CloudWatch Metric Alarm."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the health check."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudwatch_metric_alarm.aws_cloudwatch_metric_alarm.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
terraform {
  backend "local" {
  }
  required_providers {
    aws {
      source  = "hashicorp/aws"
      version = ">= 4.38.0"
    }
    required_version = ">= 1.3.4"
  }
}
provider "aws" {
  region = var.provider_region
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_cloudwatch_metric_alarm"
      "kind/version"                = "v0.1.0"
    }
  }
}
