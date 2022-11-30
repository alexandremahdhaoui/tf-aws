resource "aws_ecs_cluster_capacity_providers" "aws_ecs_cluster_capacity_providers" {
  default_capacity_provider_strategy = var.default_capacity_provider_strategy
  weight                             = var.weight
  base                               = var.base
  capacity_provider                  = var.capacity_provider
  capacity_providers                 = var.capacity_providers
  cluster_name                       = var.cluster_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "capacity_provider" {
  description = "(Required) Name of the capacity provider."
  type        = string
}
variable "capacity_providers" {
  description = "(Optional) Set of names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  type        = string
}
variable "cluster_name" {
  description = "(Required, Forces new resource) Name of the ECS cluster to manage capacity providers for."
  type        = string
}
variable "default_capacity_provider_strategy" {
  description = "(Optional) Set of capacity provider strategies to use by default for the cluster. Detailed below.default_capacity_provider_strategy Configuration Block"
  type        = string
}
variable "weight" {
  description = "(Optional) The relative percentage of the total number of launched tasks that should use the specified capacity provider. The weight value is taken into consideration after the base count of tasks has been satisfied. Defaults to 0."
  type        = string
}
variable "base" {
  description = "(Optional) The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to 0.In addition to all arguments above, the following attributes are exported:"
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
output "base" {
  description = "(Optional) The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to 0.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_cluster_capacity_providers.aws_ecs_cluster_capacity_providers.base
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_provider" {
  description = "(Required) Name of the capacity provider."
  value       = aws_ecs_cluster_capacity_providers.aws_ecs_cluster_capacity_providers.capacity_provider
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_providers" {
  description = "(Optional) Set of names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  value       = aws_ecs_cluster_capacity_providers.aws_ecs_cluster_capacity_providers.capacity_providers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_name" {
  description = "(Required, Forces new resource) Name of the ECS cluster to manage capacity providers for."
  value       = aws_ecs_cluster_capacity_providers.aws_ecs_cluster_capacity_providers.cluster_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_capacity_provider_strategy" {
  description = "(Optional) Set of capacity provider strategies to use by default for the cluster. Detailed below.default_capacity_provider_strategy Configuration Block"
  value       = aws_ecs_cluster_capacity_providers.aws_ecs_cluster_capacity_providers.default_capacity_provider_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weight" {
  description = "(Optional) The relative percentage of the total number of launched tasks that should use the specified capacity provider. The weight value is taken into consideration after the base count of tasks has been satisfied. Defaults to 0."
  value       = aws_ecs_cluster_capacity_providers.aws_ecs_cluster_capacity_providers.weight
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Same as cluster_name."
  value       = aws_ecs_cluster_capacity_providers.aws_ecs_cluster_capacity_providers.id
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
      "kind/name"                   = "aws_ecs_cluster_capacity_providers"
      "kind/version"                = "v0.1.0"
    }
  }
}
