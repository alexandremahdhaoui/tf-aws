resource "aws_servicequotas_service_quota" "aws_servicequotas_service_quota" {
  service_code  = var.service_code
  value         = var.value
  adjustable    = var.adjustable
  arn           = var.arn
  default_value = var.default_value
  id            = var.id
  quota_code    = var.quota_code
  quota_name    = var.quota_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "adjustable" {
  description = "Whether the service quota can be increased."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the service quota."
  type        = string
}
variable "default_value" {
  description = "Default value of the service quota."
  type        = string
}
variable "id" {
  description = "Service code and quota code, separated by a front slash (/)"
  type        = string
}
variable "quota_code" {
  description = "(Required) Code of the service quota to track. For example: L-F678F1CE. Available values can be found with the AWS CLI service-quotas list-service-quotas command."
  type        = string
}
variable "quota_name" {
  description = "Name of the quota."
  type        = string
}
variable "service_code" {
  description = "(Required) Code of the service to track. For example: vpc. Available values can be found with the AWS CLI service-quotas list-services command."
  type        = string
}
variable "value" {
  description = "(Required) Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.In addition to all arguments above, the following attributes are exported:"
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
output "adjustable" {
  description = "Whether the service quota can be increased."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.adjustable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the service quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_value" {
  description = "Default value of the service quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.default_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Service code and quota code, separated by a front slash (/)"
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quota_code" {
  description = "(Required) Code of the service quota to track. For example: L-F678F1CE. Available values can be found with the AWS CLI service-quotas list-service-quotas command."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.quota_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quota_name" {
  description = "Name of the quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.quota_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_code" {
  description = "(Required) Code of the service to track. For example: vpc. Available values can be found with the AWS CLI service-quotas list-services command."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.service_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "adjustable" {
  description = "Whether the service quota can be increased."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.adjustable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the service quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_value" {
  description = "Default value of the service quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.default_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Service code and quota code, separated by a front slash (/)"
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quota_name" {
  description = "Name of the quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.quota_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "Name of the service."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.service_name
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
      "kind/name"                   = "aws_servicequotas_service_quota"
      "kind/version"                = "v0.1.0"
    }
  }
}
