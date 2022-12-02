resource "aws_ecr_replication_configuration" "aws_ecr_replication_configuration" {
  repository_filter         = var.repository_filter
  rule                      = var.rule
  destination               = var.destination
  filter                    = var.filter
  filter_type               = var.filter_type
  region                    = var.region
  registry_id               = var.registry_id
  replication_configuration = var.replication_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "registry_id" {
  description = "(Required) The account ID of the destination registry to replicate to.Repository Filter"
  type        = string
}
variable "replication_configuration" {
  description = "(Required) Replication configuration for a registry. See Replication Configuration.Replication Configuration"
  type        = string
}
variable "repository_filter" {
  description = "(Optional) filters for a replication rule. See Repository Filter.Destination"
  type        = string
  default     = ""
}
variable "rule" {
  description = "(Required) The replication rules for a replication configuration. A maximum of 10 are allowed per replication_configuration. See RuleRule"
  type        = string
}
variable "destination" {
  description = "(Required) the details of a replication destination. A maximum of 25 are allowed per rule. See Destination."
  type        = string
}
variable "filter" {
  description = "(Required) The repository filter details."
  type        = string
}
variable "filter_type" {
  description = "(Required) The repository filter type. The only supported value is PREFIX_MATCH, which is a repository name prefix specified with the filter parameter.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "region" {
  description = "(Required) A Region to replicate to."
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
output "replication_configuration" {
  description = "(Required) Replication configuration for a registry. See Replication Configuration.Replication Configuration"
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.replication_configuration
}
output "repository_filter" {
  description = "(Optional) filters for a replication rule. See Repository Filter.Destination"
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.repository_filter
}
output "rule" {
  description = "(Required) The replication rules for a replication configuration. A maximum of 10 are allowed per replication_configuration. See RuleRule"
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.rule
}
output "destination" {
  description = "(Required) the details of a replication destination. A maximum of 25 are allowed per rule. See Destination."
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.destination
}
output "filter" {
  description = "(Required) The repository filter details."
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.filter
}
output "filter_type" {
  description = "(Required) The repository filter type. The only supported value is PREFIX_MATCH, which is a repository name prefix specified with the filter parameter.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.filter_type
}
output "region" {
  description = "(Required) A Region to replicate to."
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.region
}
output "registry_id" {
  description = "(Required) The account ID of the destination registry to replicate to.Repository Filter"
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.registry_id
}
output "registry_id" {
  description = "The registry ID where the replication configuration was created."
  value       = aws_ecr_replication_configuration.aws_ecr_replication_configuration.registry_id
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
      "kind/name"                   = "aws_ecr_replication_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
