resource "aws_appautoscaling_policy" "aws_appautoscaling_policy" {
  resource_label                               = var.resource_label
  unit                                         = var.unit
  value                                        = var.value
  arn                                          = var.arn
  dimensions                                   = var.dimensions
  name                                         = var.name
  scale_in_cooldown                            = var.scale_in_cooldown
  service_namespace                            = var.service_namespace
  step_scaling_policy_configuration            = var.step_scaling_policy_configuration
  target_value                                 = var.target_value
  min_adjustment_magnitude                     = var.min_adjustment_magnitude
  resource_id                                  = var.resource_id
  statistic                                    = var.statistic
  alarm_arns                                   = var.alarm_arns
  customized_metric_specification              = var.customized_metric_specification
  metric_interval_lower_bound                  = var.metric_interval_lower_bound
  metric_name                                  = var.metric_name
  predefined_metric_specification              = var.predefined_metric_specification
  disable_scale_in                             = var.disable_scale_in
  metric_interval_upper_bound                  = var.metric_interval_upper_bound
  namespace                                    = var.namespace
  policy_type                                  = var.policy_type
  predefined_metric_type                       = var.predefined_metric_type
  scalable_dimension                           = var.scalable_dimension
  target_tracking_scaling_policy_configuration = var.target_tracking_scaling_policy_configuration
  cooldown                                     = var.cooldown
  scaling_adjustment                           = var.scaling_adjustment
  step_adjustment                              = var.step_adjustment
  adjustment_type                              = var.adjustment_type
  metric_aggregation_type                      = var.metric_aggregation_type
  scale_out_cooldown                           = var.scale_out_cooldown
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN assigned by AWS to the scaling policy."
  type        = string
}
variable "dimensions" {
  description = "(Optional) Configuration block(s) with the dimensions of the metric if the metric was published with dimensions. Detailed below."
  type        = string
  default     = ""
}
variable "name" {
  description = "Scaling policy's name."
  type        = string
}
variable "scale_in_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale in activity completes before another scale in activity can start."
  type        = string
  default     = ""
}
variable "service_namespace" {
  description = "(Required) AWS service namespace of the scalable target. Documentation can be found in the ServiceNamespace parameter at: AWS Application Auto Scaling API Reference"
  type        = string
}
variable "step_scaling_policy_configuration" {
  description = "(Optional) Step scaling policy configuration, requires policy_type = \"StepScaling\" (default). See supported fields below."
  type        = string
  default     = ""
}
variable "target_value" {
  description = "(Required) Target value for the metric."
  type        = string
}
variable "min_adjustment_magnitude" {
  description = "(Optional) Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is PercentChangeInCapacity, the scaling policy changes the scalable dimension of the scalable target by this amount."
  type        = string
  default     = ""
}
variable "resource_id" {
  description = "(Required) Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the ResourceId parameter at: AWS Application Auto Scaling API Reference"
  type        = string
}
variable "statistic" {
  description = "(Required) Statistic of the metric. Valid values: Average, Minimum, Maximum, SampleCount, and Sum."
  type        = string
}
variable "alarm_arns" {
  description = "List of CloudWatch alarm ARNs associated with the scaling policy."
  type        = string
}
variable "customized_metric_specification" {
  description = "(Optional) Custom CloudWatch metric. Documentation can be found  at: AWS Customized Metric Specification. See supported fields below."
  type        = string
  default     = ""
}
variable "metric_interval_lower_bound" {
  description = "(Optional) Lower bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as negative infinity."
  type        = string
  default     = ""
}
variable "metric_name" {
  description = "(Required) Name of the metric."
  type        = string
}
variable "predefined_metric_specification" {
  description = "(Optional) Predefined metric. See supported fields below.target_tracking_scaling_policy_configuration customized_metric_specificationExample usage:The target_tracking_scaling_policy_configuration customized_metric_specification configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "disable_scale_in" {
  description = "(Optional) Whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false."
  type        = string
  default     = ""
}
variable "metric_interval_upper_bound" {
  description = "(Optional) Upper bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as infinity. The upper bound must be greater than the lower bound."
  type        = string
  default     = ""
}
variable "namespace" {
  description = "(Required) Namespace of the metric."
  type        = string
}
variable "policy_type" {
  description = "(Optional) Policy type. Valid values are StepScaling and TargetTrackingScaling. Defaults to StepScaling. Certain services only support only one policy type. For more information see the Target Tracking Scaling Policies and Step Scaling Policies documentation."
  type        = string
  default     = ""
}
variable "predefined_metric_type" {
  description = "(Required) Metric type."
  type        = string
}
variable "scalable_dimension" {
  description = "(Required) Scalable dimension of the scalable target. Documentation can be found in the ScalableDimension parameter at: AWS Application Auto Scaling API Reference"
  type        = string
}
variable "target_tracking_scaling_policy_configuration" {
  description = "(Optional) Target tracking policy, requires policy_type = \"TargetTrackingScaling\". See supported fields below.step_scaling_policy_configurationThe step_scaling_policy_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "cooldown" {
  description = "(Required) Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start."
  type        = string
}
variable "scaling_adjustment" {
  description = "(Required) Number of members by which to scale, when the adjustment bounds are breached. A positive value scales up. A negative value scales down.target_tracking_scaling_policy_configurationThe target_tracking_scaling_policy_configuration configuration block supports the following arguments:"
  type        = string
}
variable "step_adjustment" {
  description = "(Optional) Set of adjustments that manage scaling. These have the following structure:"
  type        = string
  default     = ""
}
variable "adjustment_type" {
  description = "(Required) Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are ChangeInCapacity, ExactCapacity, and PercentChangeInCapacity."
  type        = string
}
variable "metric_aggregation_type" {
  description = "(Optional) Aggregation type for the policy's metrics. Valid values are \"Minimum\", \"Maximum\", and \"Average\". Without a value, AWS will treat the aggregation type as \"Average\"."
  type        = string
  default     = ""
}
variable "scale_out_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale out activity completes before another scale out activity can start."
  type        = string
  default     = ""
}
variable "resource_label" {
  description = "(Optional) Reserved for future use if the predefined_metric_type is not ALBRequestCountPerTarget. If the predefined_metric_type is ALBRequestCountPerTarget, you must specify this argument. Documentation can be found at: AWS Predefined Scaling Metric Specification. Must be less than or equal to 1023 characters in length.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "unit" {
  description = "(Optional) Unit of the metric.target_tracking_scaling_policy_configuration customized_metric_specification dimensionsThe target_tracking_scaling_policy_configuration customized_metric_specification dimensions configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Value of the dimension.target_tracking_scaling_policy_configuration predefined_metric_specificationThe target_tracking_scaling_policy_configuration predefined_metric_specification configuration block supports the following arguments:"
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
output "resource_label" {
  description = "(Optional) Reserved for future use if the predefined_metric_type is not ALBRequestCountPerTarget. If the predefined_metric_type is ALBRequestCountPerTarget, you must specify this argument. Documentation can be found at: AWS Predefined Scaling Metric Specification. Must be less than or equal to 1023 characters in length.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.resource_label
}
output "unit" {
  description = "(Optional) Unit of the metric.target_tracking_scaling_policy_configuration customized_metric_specification dimensionsThe target_tracking_scaling_policy_configuration customized_metric_specification dimensions configuration block supports the following arguments:"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.unit
}
output "value" {
  description = "(Required) Value of the dimension.target_tracking_scaling_policy_configuration predefined_metric_specificationThe target_tracking_scaling_policy_configuration predefined_metric_specification configuration block supports the following arguments:"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.value
}
output "service_namespace" {
  description = "(Required) AWS service namespace of the scalable target. Documentation can be found in the ServiceNamespace parameter at: AWS Application Auto Scaling API Reference"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.service_namespace
}
output "step_scaling_policy_configuration" {
  description = "(Optional) Step scaling policy configuration, requires policy_type = \"StepScaling\" (default). See supported fields below."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.step_scaling_policy_configuration
}
output "target_value" {
  description = "(Required) Target value for the metric."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.target_value
}
output "arn" {
  description = "ARN assigned by AWS to the scaling policy."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.arn
}
output "dimensions" {
  description = "(Optional) Configuration block(s) with the dimensions of the metric if the metric was published with dimensions. Detailed below."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.dimensions
}
output "name" {
  description = "Scaling policy's name."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.name
}
output "scale_in_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale in activity completes before another scale in activity can start."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.scale_in_cooldown
}
output "min_adjustment_magnitude" {
  description = "(Optional) Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is PercentChangeInCapacity, the scaling policy changes the scalable dimension of the scalable target by this amount."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.min_adjustment_magnitude
}
output "resource_id" {
  description = "(Required) Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the ResourceId parameter at: AWS Application Auto Scaling API Reference"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.resource_id
}
output "statistic" {
  description = "(Required) Statistic of the metric. Valid values: Average, Minimum, Maximum, SampleCount, and Sum."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.statistic
}
output "predefined_metric_specification" {
  description = "(Optional) Predefined metric. See supported fields below.target_tracking_scaling_policy_configuration customized_metric_specificationExample usage:The target_tracking_scaling_policy_configuration customized_metric_specification configuration block supports the following arguments:"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.predefined_metric_specification
}
output "alarm_arns" {
  description = "List of CloudWatch alarm ARNs associated with the scaling policy."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.alarm_arns
}
output "customized_metric_specification" {
  description = "(Optional) Custom CloudWatch metric. Documentation can be found  at: AWS Customized Metric Specification. See supported fields below."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.customized_metric_specification
}
output "metric_interval_lower_bound" {
  description = "(Optional) Lower bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as negative infinity."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.metric_interval_lower_bound
}
output "metric_name" {
  description = "(Required) Name of the metric."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.metric_name
}
output "predefined_metric_type" {
  description = "(Required) Metric type."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.predefined_metric_type
}
output "scalable_dimension" {
  description = "(Required) Scalable dimension of the scalable target. Documentation can be found in the ScalableDimension parameter at: AWS Application Auto Scaling API Reference"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.scalable_dimension
}
output "target_tracking_scaling_policy_configuration" {
  description = "(Optional) Target tracking policy, requires policy_type = \"TargetTrackingScaling\". See supported fields below.step_scaling_policy_configurationThe step_scaling_policy_configuration configuration block supports the following arguments:"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.target_tracking_scaling_policy_configuration
}
output "disable_scale_in" {
  description = "(Optional) Whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.disable_scale_in
}
output "metric_interval_upper_bound" {
  description = "(Optional) Upper bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as infinity. The upper bound must be greater than the lower bound."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.metric_interval_upper_bound
}
output "namespace" {
  description = "(Required) Namespace of the metric."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.namespace
}
output "policy_type" {
  description = "(Optional) Policy type. Valid values are StepScaling and TargetTrackingScaling. Defaults to StepScaling. Certain services only support only one policy type. For more information see the Target Tracking Scaling Policies and Step Scaling Policies documentation."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.policy_type
}
output "cooldown" {
  description = "(Required) Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.cooldown
}
output "scaling_adjustment" {
  description = "(Required) Number of members by which to scale, when the adjustment bounds are breached. A positive value scales up. A negative value scales down.target_tracking_scaling_policy_configurationThe target_tracking_scaling_policy_configuration configuration block supports the following arguments:"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.scaling_adjustment
}
output "step_adjustment" {
  description = "(Optional) Set of adjustments that manage scaling. These have the following structure:"
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.step_adjustment
}
output "adjustment_type" {
  description = "(Required) Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are ChangeInCapacity, ExactCapacity, and PercentChangeInCapacity."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.adjustment_type
}
output "metric_aggregation_type" {
  description = "(Optional) Aggregation type for the policy's metrics. Valid values are \"Minimum\", \"Maximum\", and \"Average\". Without a value, AWS will treat the aggregation type as \"Average\"."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.metric_aggregation_type
}
output "scale_out_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale out activity completes before another scale out activity can start."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.scale_out_cooldown
}
output "alarm_arns" {
  description = "List of CloudWatch alarm ARNs associated with the scaling policy."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.alarm_arns
}
output "arn" {
  description = "ARN assigned by AWS to the scaling policy."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.arn
}
output "name" {
  description = "Scaling policy's name."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.name
}
output "policy_type" {
  description = "Scaling policy's type."
  value       = aws_appautoscaling_policy.aws_appautoscaling_policy.policy_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  value       = var.provider_region
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
      "kind/name"                   = "aws_appautoscaling_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
