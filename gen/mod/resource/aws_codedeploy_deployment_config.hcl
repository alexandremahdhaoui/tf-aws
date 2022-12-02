resource "aws_codedeploy_deployment_config" "aws_codedeploy_deployment_config" {
  percentage             = var.percentage
  traffic_routing_config = var.traffic_routing_config
  compute_platform       = var.compute_platform
  deployment_config_name = var.deployment_config_name
  minimum_healthy_hosts  = var.minimum_healthy_hosts
  time_based_linear      = var.time_based_linear
  type                   = var.type
  value                  = var.value
  id                     = var.id
  interval               = var.interval
  time_based_canary      = var.time_based_canary
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The deployment group's config name."
  type        = string
}
variable "interval" {
  description = "(Optional) The number of minutes between each incremental traffic shift of a TimeBasedLinear deployment."
  type        = string
  default     = ""
}
variable "time_based_canary" {
  description = "(Optional) The time based canary configuration information. If type is TimeBasedLinear, use time_based_linear instead."
  type        = string
  default     = ""
}
variable "time_based_linear" {
  description = "(Optional) The time based linear configuration information. If type is TimeBasedCanary, use time_based_canary instead.The time_based_canary block supports the following:"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Type of traffic routing config. One of TimeBasedCanary, TimeBasedLinear, AllAtOnce."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) The value when the type is FLEET_PERCENTHOST_COUNT, the value represents the minimum number of healthy instances as an absolute value.The traffic_routing_config block supports the following:"
  type        = string
}
variable "compute_platform" {
  description = "(Optional) The compute platform can be Server, Lambda, or ECS. Default is Server."
  type        = string
  default     = ""
}
variable "deployment_config_name" {
  description = "(Required) The name of the deployment config."
  type        = string
}
variable "minimum_healthy_hosts" {
  description = "(Optional) A minimum_healthy_hosts block. Required for Server compute platform. Minimum Healthy Hosts are documented below."
  type        = string
  default     = ""
}
variable "percentage" {
  description = "(Optional) The percentage of traffic that is shifted at the start of each increment of a TimeBasedLinear deployment.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "traffic_routing_config" {
  description = "(Optional) A traffic_routing_config block. Traffic Routing Config is documented below.The minimum_healthy_hosts block supports the following:"
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
output "id" {
  description = "The deployment group's config name."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.id
}
output "interval" {
  description = "(Optional) The number of minutes between each incremental traffic shift of a TimeBasedLinear deployment."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.interval
}
output "time_based_canary" {
  description = "(Optional) The time based canary configuration information. If type is TimeBasedLinear, use time_based_linear instead."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.time_based_canary
}
output "time_based_linear" {
  description = "(Optional) The time based linear configuration information. If type is TimeBasedCanary, use time_based_canary instead.The time_based_canary block supports the following:"
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.time_based_linear
}
output "type" {
  description = "(Optional) Type of traffic routing config. One of TimeBasedCanary, TimeBasedLinear, AllAtOnce."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.type
}
output "value" {
  description = "(Required) The value when the type is FLEET_PERCENTHOST_COUNT, the value represents the minimum number of healthy instances as an absolute value.The traffic_routing_config block supports the following:"
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.value
}
output "compute_platform" {
  description = "(Optional) The compute platform can be Server, Lambda, or ECS. Default is Server."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.compute_platform
}
output "deployment_config_name" {
  description = "(Required) The name of the deployment config."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.deployment_config_name
}
output "minimum_healthy_hosts" {
  description = "(Optional) A minimum_healthy_hosts block. Required for Server compute platform. Minimum Healthy Hosts are documented below."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.minimum_healthy_hosts
}
output "percentage" {
  description = "(Optional) The percentage of traffic that is shifted at the start of each increment of a TimeBasedLinear deployment.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.percentage
}
output "traffic_routing_config" {
  description = "(Optional) A traffic_routing_config block. Traffic Routing Config is documented below.The minimum_healthy_hosts block supports the following:"
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.traffic_routing_config
}
output "deployment_config_id" {
  description = "The AWS Assigned deployment config id"
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.deployment_config_id
}
output "id" {
  description = "The deployment group's config name."
  value       = aws_codedeploy_deployment_config.aws_codedeploy_deployment_config.id
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
      "kind/name"                   = "aws_codedeploy_deployment_config"
      "kind/version"                = "v0.1.0"
    }
  }
}
