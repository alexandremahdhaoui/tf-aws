resource "aws_autoscaling_policy" "aws_autoscaling_policy" {
  predefined_scaling_metric_specification  = var.predefined_scaling_metric_specification
  arn                                      = var.arn
  max_capacity_buffer                      = var.max_capacity_buffer
  metric_dimension                         = var.metric_dimension
  mode                                     = var.mode
  predefined_metric_pair_specification     = var.predefined_metric_pair_specification
  label                                    = var.label
  max_capacity_breach_behavior             = var.max_capacity_breach_behavior
  return_data                              = var.return_data
  autoscaling_group_name                   = var.autoscaling_group_name
  dimensions                               = var.dimensions
  metric_stat                              = var.metric_stat
  resource_label                           = var.resource_label
  customized_scaling_metric_specification  = var.customized_scaling_metric_specification
  stat                                     = var.stat
  statistic                                = var.statistic
  customized_capacity_metric_specification = var.customized_capacity_metric_specification
  id                                       = var.id
  name                                     = var.name
  unit                                     = var.unit
  predefined_metric_type                   = var.predefined_metric_type
  scheduling_buffer_time                   = var.scheduling_buffer_time
  value                                    = var.value
  adjustment_type                          = var.adjustment_type
  customized_load_metric_specification     = var.customized_load_metric_specification
  expression                               = var.expression
  metric                                   = var.metric
  metric_specification                     = var.metric_specification
  metric_data_queries                      = var.metric_data_queries
  metric_name                              = var.metric_name
  namespace                                = var.namespace
  predefined_load_metric_specification     = var.predefined_load_metric_specification
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "statistic" {
  description = "(Required) Statistic of the metric."
  type        = string
}
variable "customized_scaling_metric_specification" {
  description = "(Optional) Customized scaling metric specification."
  type        = string
}
variable "stat" {
  description = "(Required) Statistic of the metrics to return."
  type        = string
}
variable "customized_capacity_metric_specification" {
  description = "(Optional) Customized capacity metric specification. The field is only valid when you use customized_load_metric_specification"
  type        = string
}
variable "unit" {
  description = "(Optional) Unit of the metrics to return.metric"
  type        = string
}
variable "id" {
  description = "(Required) Short name for the metric used in predictive scaling policy."
  type        = string
}
variable "name" {
  description = "Scaling policy's name."
  type        = string
}
variable "expression" {
  description = "(Optional) Math expression used on the returned metric. You must specify either expression or metric_stat, but not both."
  type        = string
}
variable "metric" {
  description = "(Required) Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions."
  type        = string
}
variable "metric_specification" {
  description = "(Required) This structure includes the metrics and target utilization to use for predictive scaling."
  type        = string
}
variable "predefined_metric_type" {
  description = "(Required) Describes a scaling metric for a predictive scaling policy. Valid values are ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, or ALBRequestCountPerTarget."
  type        = string
}
variable "scheduling_buffer_time" {
  description = "(Optional) Amount of time, in seconds, by which the instance launch time can be advanced. Minimum is 0.metric_specification"
  type        = string
}
variable "value" {
  description = "(Required) Value of the dimension.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "adjustment_type" {
  description = "Scaling policy's adjustment type."
  type        = string
}
variable "customized_load_metric_specification" {
  description = "(Optional) Customized load metric specification."
  type        = string
}
variable "namespace" {
  description = "(Required) Namespace of the metric.dimensions"
  type        = string
}
variable "predefined_load_metric_specification" {
  description = "(Optional) Predefined load metric specification."
  type        = string
}
variable "metric_data_queries" {
  description = "(Required) List of up to 10 structures that defines custom capacity metric in predictive scaling policymetric_data_queries"
  type        = string
}
variable "metric_name" {
  description = "(Required) Name of the metric."
  type        = string
}
variable "metric_dimension" {
  description = "(Optional) Dimensions of the metric."
  type        = string
}
variable "mode" {
  description = "(Optional) Predictive scaling mode. Valid values are ForecastAndScale and ForecastOnly. Default is ForecastOnly."
  type        = string
}
variable "predefined_metric_pair_specification" {
  description = "(Optional) Metric pair specification from which Amazon EC2 Auto Scaling determines the appropriate scaling metric and load metric to use."
  type        = string
}
variable "predefined_scaling_metric_specification" {
  description = "(Optional) Predefined scaling metric specification.predefined_load_metric_specification"
  type        = string
}
variable "arn" {
  description = "ARN assigned by AWS to the scaling policy."
  type        = string
}
variable "max_capacity_buffer" {
  description = "(Optional) Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. Valid range is 0 to 100. If set to 0, Amazon EC2 Auto Scaling may scale capacity higher than the maximum capacity to equal but not exceed forecast capacity."
  type        = string
}
variable "return_data" {
  description = "(Optional) Boolean that indicates whether to return the timestamps and raw data values of this metric, the default it truemetric_stat"
  type        = string
}
variable "label" {
  description = "(Optional) Human-readable label for this metric or expression."
  type        = string
}
variable "max_capacity_breach_behavior" {
  description = "(Optional) Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity of the Auto Scaling group. Valid values are HonorMaxCapacity or IncreaseMaxCapacity. Default is HonorMaxCapacity."
  type        = string
}
variable "metric_stat" {
  description = "(Optional) Structure that defines CloudWatch metric to be used in predictive scaling policy. You must specify either expression or metric_stat, but not both."
  type        = string
}
variable "resource_label" {
  description = "(Required) Label that uniquely identifies a specific Application Load Balancer target group from which to determine the request count served by your Auto Scaling group.customized_scaling_metric_specification"
  type        = string
}
variable "autoscaling_group_name" {
  description = "The scaling policy's assigned autoscaling group."
  type        = string
}
variable "dimensions" {
  description = "(Optional) Dimensions of the metric."
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
output "metric_name" {
  description = "(Required) Name of the metric."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.metric_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "namespace" {
  description = "(Required) Namespace of the metric.dimensions"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.namespace
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "predefined_load_metric_specification" {
  description = "(Optional) Predefined load metric specification."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.predefined_load_metric_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_data_queries" {
  description = "(Required) List of up to 10 structures that defines custom capacity metric in predictive scaling policymetric_data_queries"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.metric_data_queries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_capacity_buffer" {
  description = "(Optional) Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. Valid range is 0 to 100. If set to 0, Amazon EC2 Auto Scaling may scale capacity higher than the maximum capacity to equal but not exceed forecast capacity."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.max_capacity_buffer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_dimension" {
  description = "(Optional) Dimensions of the metric."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.metric_dimension
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mode" {
  description = "(Optional) Predictive scaling mode. Valid values are ForecastAndScale and ForecastOnly. Default is ForecastOnly."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "predefined_metric_pair_specification" {
  description = "(Optional) Metric pair specification from which Amazon EC2 Auto Scaling determines the appropriate scaling metric and load metric to use."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.predefined_metric_pair_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "predefined_scaling_metric_specification" {
  description = "(Optional) Predefined scaling metric specification.predefined_load_metric_specification"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.predefined_scaling_metric_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN assigned by AWS to the scaling policy."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_capacity_breach_behavior" {
  description = "(Optional) Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity of the Auto Scaling group. Valid values are HonorMaxCapacity or IncreaseMaxCapacity. Default is HonorMaxCapacity."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.max_capacity_breach_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "return_data" {
  description = "(Optional) Boolean that indicates whether to return the timestamps and raw data values of this metric, the default it truemetric_stat"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.return_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "label" {
  description = "(Optional) Human-readable label for this metric or expression."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.label
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimensions" {
  description = "(Optional) Dimensions of the metric."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.dimensions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_stat" {
  description = "(Optional) Structure that defines CloudWatch metric to be used in predictive scaling policy. You must specify either expression or metric_stat, but not both."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.metric_stat
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_label" {
  description = "(Required) Label that uniquely identifies a specific Application Load Balancer target group from which to determine the request count served by your Auto Scaling group.customized_scaling_metric_specification"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.resource_label
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "autoscaling_group_name" {
  description = "The scaling policy's assigned autoscaling group."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.autoscaling_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stat" {
  description = "(Required) Statistic of the metrics to return."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.stat
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "statistic" {
  description = "(Required) Statistic of the metric."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.statistic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customized_scaling_metric_specification" {
  description = "(Optional) Customized scaling metric specification."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.customized_scaling_metric_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customized_capacity_metric_specification" {
  description = "(Optional) Customized capacity metric specification. The field is only valid when you use customized_load_metric_specification"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.customized_capacity_metric_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Scaling policy's name."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unit" {
  description = "(Optional) Unit of the metrics to return.metric"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Required) Short name for the metric used in predictive scaling policy."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customized_load_metric_specification" {
  description = "(Optional) Customized load metric specification."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.customized_load_metric_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expression" {
  description = "(Optional) Math expression used on the returned metric. You must specify either expression or metric_stat, but not both."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.expression
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric" {
  description = "(Required) Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.metric
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_specification" {
  description = "(Required) This structure includes the metrics and target utilization to use for predictive scaling."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.metric_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "predefined_metric_type" {
  description = "(Required) Describes a scaling metric for a predictive scaling policy. Valid values are ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, or ALBRequestCountPerTarget."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.predefined_metric_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scheduling_buffer_time" {
  description = "(Optional) Amount of time, in seconds, by which the instance launch time can be advanced. Minimum is 0.metric_specification"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.scheduling_buffer_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) Value of the dimension.In addition to all arguments above, the following attributes are exported:"
  value       = aws_autoscaling_policy.aws_autoscaling_policy.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "adjustment_type" {
  description = "Scaling policy's adjustment type."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.adjustment_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "autoscaling_group_name" {
  description = "The scaling policy's assigned autoscaling group."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.autoscaling_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Scaling policy's name."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy_type" {
  description = "Scaling policy's type."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.policy_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "adjustment_type" {
  description = "Scaling policy's adjustment type."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.adjustment_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN assigned by AWS to the scaling policy."
  value       = aws_autoscaling_policy.aws_autoscaling_policy.arn
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
      "kind/name"                   = "aws_autoscaling_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
