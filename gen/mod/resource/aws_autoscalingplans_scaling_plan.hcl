resource "aws_autoscalingplans_scaling_plan" "aws_autoscalingplans_scaling_plan" {
  application_source                       = var.application_source
  disable_dynamic_scaling                  = var.disable_dynamic_scaling
  estimated_instance_warmup                = var.estimated_instance_warmup
  namespace                                = var.namespace
  predefined_scaling_metric_specification  = var.predefined_scaling_metric_specification
  predictive_scaling_max_capacity_buffer   = var.predictive_scaling_max_capacity_buffer
  service_namespace                        = var.service_namespace
  predictive_scaling_max_capacity_behavior = var.predictive_scaling_max_capacity_behavior
  resource_id                              = var.resource_id
  name                                     = var.name
  predefined_load_metric_type              = var.predefined_load_metric_type
  scaling_policy_update_behavior           = var.scaling_policy_update_behavior
  scheduled_action_buffer_time             = var.scheduled_action_buffer_time
  unit                                     = var.unit
  predefined_load_metric_specification     = var.predefined_load_metric_specification
  scaling_instruction                      = var.scaling_instruction
  values                                   = var.values
  metric_name                              = var.metric_name
  min_capacity                             = var.min_capacity
  resource_label                           = var.resource_label
  scale_out_cooldown                       = var.scale_out_cooldown
  cloudformation_stack_arn                 = var.cloudformation_stack_arn
  dimensions                               = var.dimensions
  id                                       = var.id
  scale_in_cooldown                        = var.scale_in_cooldown
  target_tracking_configuration            = var.target_tracking_configuration
  customized_scaling_metric_specification  = var.customized_scaling_metric_specification
  disable_scale_in                         = var.disable_scale_in
  predefined_scaling_metric_type           = var.predefined_scaling_metric_type
  predictive_scaling_mode                  = var.predictive_scaling_mode
  statistic                                = var.statistic
  tag_filter                               = var.tag_filter
  customized_load_metric_specification     = var.customized_load_metric_specification
  key                                      = var.key
  max_capacity                             = var.max_capacity
  scalable_dimension                       = var.scalable_dimension
  target_value                             = var.target_value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "customized_scaling_metric_specification" {
  description = "(Optional) Customized metric. You can specify either customized_scaling_metric_specification or predefined_scaling_metric_specificationAWS Auto Scaling API Reference."
  type        = string
  default     = ""
}
variable "disable_scale_in" {
  description = "(Optional) Boolean indicating whether scale in by the target tracking scaling policy is disabled. Defaults to false."
  type        = string
  default     = ""
}
variable "predefined_scaling_metric_type" {
  description = "(Required) Metric type. Valid values: ALBRequestCountPerTarget, ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections."
  type        = string
}
variable "predictive_scaling_mode" {
  description = "(Optional) Predictive scaling mode. Valid values: ForecastAndScale, ForecastOnly."
  type        = string
  default     = ""
}
variable "statistic" {
  description = "(Required) Statistic of the metric. Valid values: Average, Maximum, Minimum, SampleCount, Sum."
  type        = string
}
variable "tag_filter" {
  description = "(Optional) Set of tags.The tag_filter object supports the following:"
  type        = string
  default     = ""
}
variable "customized_load_metric_specification" {
  description = "(Optional) Customized load metric to use for predictive scaling. You must specify either customized_load_metric_specification or predefined_load_metric_specificationAWS Auto Scaling API Reference."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Tag key."
  type        = string
}
variable "max_capacity" {
  description = "(Required) Maximum capacity of the resource. The exception to this upper limit is if you specify a non-default setting for predictive_scaling_max_capacity_behavior."
  type        = string
}
variable "scalable_dimension" {
  description = "(Required) Scalable dimension associated with the resource. Valid values: autoscaling:autoScalingGroup:DesiredCapacity, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount."
  type        = string
}
variable "target_value" {
  description = "(Required) Target value for the metric."
  type        = string
}
variable "service_namespace" {
  description = "(Required) Namespace of the AWS service. Valid values: autoscaling, dynamodb, ecs, ec2, rds."
  type        = string
}
variable "application_source" {
  description = "(Required) CloudFormation stack or set of tags. You can create one scaling plan per application source."
  type        = string
}
variable "disable_dynamic_scaling" {
  description = "(Optional) Boolean controlling whether dynamic scaling by AWS Auto Scaling is disabled. Defaults to false."
  type        = string
  default     = ""
}
variable "estimated_instance_warmup" {
  description = ""
  type        = string
}
variable "namespace" {
  description = "(Required) Namespace of the metric."
  type        = string
}
variable "predefined_scaling_metric_specification" {
  description = "(Optional) Predefined metric. You can specify either predefined_scaling_metric_specification or customized_scaling_metric_specificationAWS Auto Scaling API Reference."
  type        = string
  default     = ""
}
variable "predictive_scaling_max_capacity_buffer" {
  description = "(Optional) Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity."
  type        = string
  default     = ""
}
variable "predictive_scaling_max_capacity_behavior" {
  description = "SetForecastCapacityToMaxCapacity, SetMaxCapacityAboveForecastCapacity, SetMaxCapacityToForecastCapacity."
  type        = string
}
variable "resource_id" {
  description = "(Required) ID of the resource. This string consists of the resource type and unique identifier."
  type        = string
}
variable "name" {
  description = "(Required) Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes."
  type        = string
}
variable "predefined_load_metric_type" {
  description = "(Required) Metric type. Valid values: ALBTargetGroupRequestCount, ASGTotalCPUUtilization, ASGTotalNetworkIn, ASGTotalNetworkOut."
  type        = string
}
variable "scaling_policy_update_behavior" {
  description = "(Optional) Controls whether a resource's externally created scaling policies are kept or replaced. Valid values: KeepExternalPolicies, ReplaceExternalPolicies. Defaults to KeepExternalPolicies."
  type        = string
  default     = ""
}
variable "scheduled_action_buffer_time" {
  description = "(Optional) Amount of time, in seconds, to buffer the run time of scheduled scaling actions when scaling out.The customized_load_metric_specification object supports the following:"
  type        = string
  default     = ""
}
variable "unit" {
  description = "(Optional) Unit of the metric.The predefined_scaling_metric_specification object supports the following:"
  type        = string
  default     = ""
}
variable "predefined_load_metric_specification" {
  description = "(Optional) Predefined load metric to use for predictive scaling. You must specify either predefined_load_metric_specification or customized_load_metric_specificationAWS Auto Scaling API Reference."
  type        = string
  default     = ""
}
variable "scaling_instruction" {
  description = "(Required) Scaling instructions. More details can be found in the AWS Auto Scaling API Reference.The application_source object supports the following:"
  type        = string
}
variable "values" {
  description = "(Optional) Tag values.The scaling_instruction object supports the following:"
  type        = string
  default     = ""
}
variable "metric_name" {
  description = "(Required) Name of the metric."
  type        = string
}
variable "min_capacity" {
  description = "(Required) Minimum capacity of the resource."
  type        = string
}
variable "resource_label" {
  description = "(Optional) Identifies the resource associated with the metric type.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "scale_out_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.\nThis value is not used if the scalable resource is an Auto Scaling group.The customized_scaling_metric_specification object supports the following:"
  type        = string
  default     = ""
}
variable "cloudformation_stack_arn" {
  description = "(Optional) ARN of a AWS CloudFormation stack."
  type        = string
  default     = ""
}
variable "dimensions" {
  description = "(Optional) Dimensions of the metric."
  type        = string
  default     = ""
}
variable "id" {
  description = "Scaling plan identifier."
  type        = string
}
variable "scale_in_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.\nThis value is not used if the scalable resource is an Auto Scaling group."
  type        = string
  default     = ""
}
variable "target_tracking_configuration" {
  description = "(Required) Structure that defines new target tracking configurations. Each of these structures includes a specific scaling metric and a target value for the metric, along with various parameters to use with dynamic scaling.\nMore details can be found in the AWS Auto Scaling API Reference."
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
output "unit" {
  description = "(Optional) Unit of the metric.The predefined_scaling_metric_specification object supports the following:"
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.unit
}
output "name" {
  description = "(Required) Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.name
}
output "predefined_load_metric_type" {
  description = "(Required) Metric type. Valid values: ALBTargetGroupRequestCount, ASGTotalCPUUtilization, ASGTotalNetworkIn, ASGTotalNetworkOut."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.predefined_load_metric_type
}
output "scaling_policy_update_behavior" {
  description = "(Optional) Controls whether a resource's externally created scaling policies are kept or replaced. Valid values: KeepExternalPolicies, ReplaceExternalPolicies. Defaults to KeepExternalPolicies."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.scaling_policy_update_behavior
}
output "scheduled_action_buffer_time" {
  description = "(Optional) Amount of time, in seconds, to buffer the run time of scheduled scaling actions when scaling out.The customized_load_metric_specification object supports the following:"
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.scheduled_action_buffer_time
}
output "predefined_load_metric_specification" {
  description = "(Optional) Predefined load metric to use for predictive scaling. You must specify either predefined_load_metric_specification or customized_load_metric_specificationAWS Auto Scaling API Reference."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.predefined_load_metric_specification
}
output "scaling_instruction" {
  description = "(Required) Scaling instructions. More details can be found in the AWS Auto Scaling API Reference.The application_source object supports the following:"
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.scaling_instruction
}
output "values" {
  description = "(Optional) Tag values.The scaling_instruction object supports the following:"
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.values
}
output "metric_name" {
  description = "(Required) Name of the metric."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.metric_name
}
output "min_capacity" {
  description = "(Required) Minimum capacity of the resource."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.min_capacity
}
output "resource_label" {
  description = "(Optional) Identifies the resource associated with the metric type.In addition to all arguments above, the following attributes are exported:"
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.resource_label
}
output "scale_out_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.\nThis value is not used if the scalable resource is an Auto Scaling group.The customized_scaling_metric_specification object supports the following:"
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.scale_out_cooldown
}
output "target_tracking_configuration" {
  description = "(Required) Structure that defines new target tracking configurations. Each of these structures includes a specific scaling metric and a target value for the metric, along with various parameters to use with dynamic scaling.\nMore details can be found in the AWS Auto Scaling API Reference."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.target_tracking_configuration
}
output "cloudformation_stack_arn" {
  description = "(Optional) ARN of a AWS CloudFormation stack."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.cloudformation_stack_arn
}
output "dimensions" {
  description = "(Optional) Dimensions of the metric."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.dimensions
}
output "id" {
  description = "Scaling plan identifier."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.id
}
output "scale_in_cooldown" {
  description = "(Optional) Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.\nThis value is not used if the scalable resource is an Auto Scaling group."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.scale_in_cooldown
}
output "statistic" {
  description = "(Required) Statistic of the metric. Valid values: Average, Maximum, Minimum, SampleCount, Sum."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.statistic
}
output "tag_filter" {
  description = "(Optional) Set of tags.The tag_filter object supports the following:"
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.tag_filter
}
output "customized_scaling_metric_specification" {
  description = "(Optional) Customized metric. You can specify either customized_scaling_metric_specification or predefined_scaling_metric_specificationAWS Auto Scaling API Reference."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.customized_scaling_metric_specification
}
output "disable_scale_in" {
  description = "(Optional) Boolean indicating whether scale in by the target tracking scaling policy is disabled. Defaults to false."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.disable_scale_in
}
output "predefined_scaling_metric_type" {
  description = "(Required) Metric type. Valid values: ALBRequestCountPerTarget, ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.predefined_scaling_metric_type
}
output "predictive_scaling_mode" {
  description = "(Optional) Predictive scaling mode. Valid values: ForecastAndScale, ForecastOnly."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.predictive_scaling_mode
}
output "target_value" {
  description = "(Required) Target value for the metric."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.target_value
}
output "customized_load_metric_specification" {
  description = "(Optional) Customized load metric to use for predictive scaling. You must specify either customized_load_metric_specification or predefined_load_metric_specificationAWS Auto Scaling API Reference."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.customized_load_metric_specification
}
output "key" {
  description = "(Required) Tag key."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.key
}
output "max_capacity" {
  description = "(Required) Maximum capacity of the resource. The exception to this upper limit is if you specify a non-default setting for predictive_scaling_max_capacity_behavior."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.max_capacity
}
output "scalable_dimension" {
  description = "(Required) Scalable dimension associated with the resource. Valid values: autoscaling:autoScalingGroup:DesiredCapacity, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.scalable_dimension
}
output "predefined_scaling_metric_specification" {
  description = "(Optional) Predefined metric. You can specify either predefined_scaling_metric_specification or customized_scaling_metric_specificationAWS Auto Scaling API Reference."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.predefined_scaling_metric_specification
}
output "predictive_scaling_max_capacity_buffer" {
  description = "(Optional) Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.predictive_scaling_max_capacity_buffer
}
output "service_namespace" {
  description = "(Required) Namespace of the AWS service. Valid values: autoscaling, dynamodb, ecs, ec2, rds."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.service_namespace
}
output "application_source" {
  description = "(Required) CloudFormation stack or set of tags. You can create one scaling plan per application source."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.application_source
}
output "disable_dynamic_scaling" {
  description = "(Optional) Boolean controlling whether dynamic scaling by AWS Auto Scaling is disabled. Defaults to false."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.disable_dynamic_scaling
}
output "estimated_instance_warmup" {
  description = ""
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.estimated_instance_warmup
}
output "namespace" {
  description = "(Required) Namespace of the metric."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.namespace
}
output "predictive_scaling_max_capacity_behavior" {
  description = "SetForecastCapacityToMaxCapacity, SetMaxCapacityAboveForecastCapacity, SetMaxCapacityToForecastCapacity."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.predictive_scaling_max_capacity_behavior
}
output "resource_id" {
  description = "(Required) ID of the resource. This string consists of the resource type and unique identifier."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.resource_id
}
output "id" {
  description = "Scaling plan identifier."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.id
}
output "scaling_plan_version" {
  description = "The version number of the scaling plan. This value is always 1."
  value       = aws_autoscalingplans_scaling_plan.aws_autoscalingplans_scaling_plan.scaling_plan_version
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
      "kind/name"                   = "aws_autoscalingplans_scaling_plan"
      "kind/version"                = "v0.1.0"
    }
  }
}
