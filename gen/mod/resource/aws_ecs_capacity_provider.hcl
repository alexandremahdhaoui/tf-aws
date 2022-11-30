resource "aws_ecs_capacity_provider" "aws_ecs_capacity_provider" {
  auto_scaling_group_arn         = var.auto_scaling_group_arn
  auto_scaling_group_provider    = var.auto_scaling_group_provider
  instance_warmup_period         = var.instance_warmup_period
  maximum_scaling_step_size      = var.maximum_scaling_step_size
  minimum_scaling_step_size      = var.minimum_scaling_step_size
  name                           = var.name
  target_capacity                = var.target_capacity
  arn                            = var.arn
  id                             = var.id
  managed_scaling                = var.managed_scaling
  managed_termination_protection = var.managed_termination_protection
  status                         = var.status
  tags                           = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.auto_scaling_group_provider"
  type        = string
}
variable "arn" {
  description = "ARN that identifies the capacity provider."
  type        = string
}
variable "id" {
  description = "ARN that identifies the capacity provider."
  type        = string
}
variable "managed_scaling" {
  description = "(Optional) - Configuration block defining the parameters of the auto scaling. Detailed below."
  type        = string
}
variable "managed_termination_protection" {
  description = "(Optional) - Enables or disables container-aware termination of instances in the auto scaling group when scale-in happens. Valid values are ENABLED and DISABLED.managed_scaling"
  type        = string
}
variable "status" {
  description = "(Optional) Whether auto scaling is managed by ECS. Valid values are ENABLED and DISABLED."
  type        = string
}
variable "name" {
  description = "(Required) Name of the capacity provider."
  type        = string
}
variable "target_capacity" {
  description = "(Optional) Target utilization for the capacity provider. A number between 1 and 100.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "auto_scaling_group_arn" {
  description = "(Required) - ARN of the associated auto scaling group."
  type        = string
}
variable "auto_scaling_group_provider" {
  description = "(Required) Configuration block for the provider for the ECS auto scaling group. Detailed below."
  type        = string
}
variable "instance_warmup_period" {
  description = "(Optional) Period of time, in seconds, after a newly launched Amazon EC2 instance can contribute to CloudWatch metrics for Auto Scaling group. If this parameter is omitted, the default value of 300 seconds is used."
  type        = string
}
variable "maximum_scaling_step_size" {
  description = "(Optional) Maximum step adjustment size. A number between 1 and 10,000."
  type        = string
}
variable "minimum_scaling_step_size" {
  description = "(Optional) Minimum step adjustment size. A number between 1 and 10,000."
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
output "managed_termination_protection" {
  description = "(Optional) - Enables or disables container-aware termination of instances in the auto scaling group when scale-in happens. Valid values are ENABLED and DISABLED.managed_scaling"
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.managed_termination_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "(Optional) Whether auto scaling is managed by ECS. Valid values are ENABLED and DISABLED."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.auto_scaling_group_provider"
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN that identifies the capacity provider."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN that identifies the capacity provider."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "managed_scaling" {
  description = "(Optional) - Configuration block defining the parameters of the auto scaling. Detailed below."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.managed_scaling
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maximum_scaling_step_size" {
  description = "(Optional) Maximum step adjustment size. A number between 1 and 10,000."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.maximum_scaling_step_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_scaling_step_size" {
  description = "(Optional) Minimum step adjustment size. A number between 1 and 10,000."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.minimum_scaling_step_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the capacity provider."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_capacity" {
  description = "(Optional) Target utilization for the capacity provider. A number between 1 and 100.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.target_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_scaling_group_arn" {
  description = "(Required) - ARN of the associated auto scaling group."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.auto_scaling_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_scaling_group_provider" {
  description = "(Required) Configuration block for the provider for the ECS auto scaling group. Detailed below."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.auto_scaling_group_provider
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_warmup_period" {
  description = "(Optional) Period of time, in seconds, after a newly launched Amazon EC2 instance can contribute to CloudWatch metrics for Auto Scaling group. If this parameter is omitted, the default value of 300 seconds is used."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.instance_warmup_period
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN that identifies the capacity provider."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN that identifies the capacity provider."
  value       = aws_ecs_capacity_provider.aws_ecs_capacity_provider.id
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
      "kind/name"                   = "aws_ecs_capacity_provider"
      "kind/version"                = "v0.1.0"
    }
  }
}
