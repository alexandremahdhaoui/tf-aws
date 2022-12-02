resource "aws_sagemaker_endpoint" "aws_sagemaker_endpoint" {
  blue_green_update_policy             = var.blue_green_update_policy
  canary_size                          = var.canary_size
  linear_step_size                     = var.linear_step_size
  maximum_execution_timeout_in_seconds = var.maximum_execution_timeout_in_seconds
  traffic_routing_configuration        = var.traffic_routing_configuration
  alarm_name                           = var.alarm_name
  alarms                               = var.alarms
  tags                                 = var.tags
  deployment_config                    = var.deployment_config
  endpoint_config_name                 = var.endpoint_config_name
  name                                 = var.name
  termination_wait_in_seconds          = var.termination_wait_in_seconds
  wait_interval_in_seconds             = var.wait_interval_in_seconds
  arn                                  = var.arn
  auto_rollback_configuration          = var.auto_rollback_configuration
  type                                 = var.type
  value                                = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "deployment_config" {
  description = "(Optional) The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config."
  type        = string
  default     = ""
}
variable "endpoint_config_name" {
  description = "(Required) The name of the endpoint configuration to use."
  type        = string
}
variable "name" {
  description = "The name of the endpoint."
  type        = string
}
variable "termination_wait_in_seconds" {
  description = "(Optional) Additional waiting time in seconds after the completion of an endpoint deployment before terminating the old endpoint fleet. Default is 0. Valid values are between 0 and 3600.Traffic Routing Configuration"
  type        = string
  default     = ""
}
variable "wait_interval_in_seconds" {
  description = "(Required) The waiting time (in seconds) between incremental steps to turn on traffic on the new endpoint fleet. Valid values are between 0 and 3600."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this endpoint."
  type        = string
}
variable "auto_rollback_configuration" {
  description = "(Optional) Automatic rollback configuration for handling endpoint deployment failures and recovery. See Auto Rollback Configuration.Blue Green Update Config"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Specifies the endpoint capacity type. Valid values are: INSTANCE_COUNT, or CAPACITY_PERCENT."
  type        = string
}
variable "value" {
  description = "(Required) Defines the capacity size, either as a number of instances or a capacity percentage.Auto Rollback Configuration"
  type        = string
}
variable "blue_green_update_policy" {
  description = "(Required) Update policy for a blue/green deployment. If this update policy is specified, SageMaker creates a new fleet during the deployment while maintaining the old fleet. See Blue Green Update Config."
  type        = string
}
variable "canary_size" {
  description = "(Optional) Batch size for the first step to turn on traffic on the new endpoint fleet. Value must be less than or equal to 50% of the variant's total instance count. See Canary Size."
  type        = string
  default     = ""
}
variable "linear_step_size" {
  description = "(Optional) Batch size for each step to turn on traffic on the new endpoint fleet. Value must be 10-50% of the variant's total instance count. See Linear Step Size.Canary Size"
  type        = string
  default     = ""
}
variable "maximum_execution_timeout_in_seconds" {
  description = "(Optional) Maximum execution timeout for the deployment. Note that the timeout value should be larger than the total waiting time specified in termination_wait_in_seconds and wait_interval_in_seconds. Valid values are between 600 and 14400."
  type        = string
  default     = ""
}
variable "traffic_routing_configuration" {
  description = "(Required) Defines the traffic routing strategy to shift traffic from the old fleet to the new fleet during an endpoint deployment. See Traffic Routing Configuration."
  type        = string
}
variable "alarm_name" {
  description = "(Required) The name of a CloudWatch alarm in your account.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "alarms" {
  description = "(Required) List of CloudWatch alarms in your account that are configured to monitor metrics on an endpoint. If any alarms are tripped during a deployment, SageMaker rolls back the deployment. See Alarms.Alarms"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Deployment Config"
  type        = string
  default     = ""
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
output "value" {
  description = "(Required) Defines the capacity size, either as a number of instances or a capacity percentage.Auto Rollback Configuration"
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.value
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this endpoint."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.arn
}
output "auto_rollback_configuration" {
  description = "(Optional) Automatic rollback configuration for handling endpoint deployment failures and recovery. See Auto Rollback Configuration.Blue Green Update Config"
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.auto_rollback_configuration
}
output "type" {
  description = "(Required) Specifies the endpoint capacity type. Valid values are: INSTANCE_COUNT, or CAPACITY_PERCENT."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.type
}
output "maximum_execution_timeout_in_seconds" {
  description = "(Optional) Maximum execution timeout for the deployment. Note that the timeout value should be larger than the total waiting time specified in termination_wait_in_seconds and wait_interval_in_seconds. Valid values are between 600 and 14400."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.maximum_execution_timeout_in_seconds
}
output "traffic_routing_configuration" {
  description = "(Required) Defines the traffic routing strategy to shift traffic from the old fleet to the new fleet during an endpoint deployment. See Traffic Routing Configuration."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.traffic_routing_configuration
}
output "blue_green_update_policy" {
  description = "(Required) Update policy for a blue/green deployment. If this update policy is specified, SageMaker creates a new fleet during the deployment while maintaining the old fleet. See Blue Green Update Config."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.blue_green_update_policy
}
output "canary_size" {
  description = "(Optional) Batch size for the first step to turn on traffic on the new endpoint fleet. Value must be less than or equal to 50% of the variant's total instance count. See Canary Size."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.canary_size
}
output "linear_step_size" {
  description = "(Optional) Batch size for each step to turn on traffic on the new endpoint fleet. Value must be 10-50% of the variant's total instance count. See Linear Step Size.Canary Size"
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.linear_step_size
}
output "alarm_name" {
  description = "(Required) The name of a CloudWatch alarm in your account.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.alarm_name
}
output "alarms" {
  description = "(Required) List of CloudWatch alarms in your account that are configured to monitor metrics on an endpoint. If any alarms are tripped during a deployment, SageMaker rolls back the deployment. See Alarms.Alarms"
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.alarms
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Deployment Config"
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.tags
}
output "termination_wait_in_seconds" {
  description = "(Optional) Additional waiting time in seconds after the completion of an endpoint deployment before terminating the old endpoint fleet. Default is 0. Valid values are between 0 and 3600.Traffic Routing Configuration"
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.termination_wait_in_seconds
}
output "wait_interval_in_seconds" {
  description = "(Required) The waiting time (in seconds) between incremental steps to turn on traffic on the new endpoint fleet. Valid values are between 0 and 3600."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.wait_interval_in_seconds
}
output "deployment_config" {
  description = "(Optional) The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.deployment_config
}
output "endpoint_config_name" {
  description = "(Required) The name of the endpoint configuration to use."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.endpoint_config_name
}
output "name" {
  description = "The name of the endpoint."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.name
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this endpoint."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.arn
}
output "name" {
  description = "The name of the endpoint."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_endpoint.aws_sagemaker_endpoint.tags_all
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
      "kind/name"                   = "aws_sagemaker_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
