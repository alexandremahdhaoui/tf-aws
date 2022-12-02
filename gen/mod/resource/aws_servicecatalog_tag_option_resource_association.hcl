resource "aws_servicecatalog_tag_option_resource_association" "aws_servicecatalog_tag_option_resource_association" {
  tag_option_id         = var.tag_option_id
  create                = var.create
  id                    = var.id
  resource_created_time = var.resource_created_time
  resource_id           = var.resource_id
  read                  = var.read
  resource_arn          = var.resource_arn
  resource_description  = var.resource_description
  resource_name         = var.resource_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "resource_created_time" {
  description = "Creation time of the resource."
  type        = string
}
variable "resource_id" {
  description = "(Required) Resource identifier."
  type        = string
}
variable "tag_option_id" {
  description = "(Required) Tag Option identifier.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "create" {
  description = "(Default 3m)"
  type        = string
}
variable "id" {
  description = "Identifier of the association."
  type        = string
}
variable "resource_description" {
  description = "Description of the resource."
  type        = string
}
variable "resource_name" {
  description = "Description of the resource.TimeoutsConfiguration options:"
  type        = string
}
variable "read" {
  description = "(Default 10m)"
  type        = string
}
variable "resource_arn" {
  description = "ARN of the resource."
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
output "resource_name" {
  description = "Description of the resource.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "ARN of the resource."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_description" {
  description = "Description of the resource."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_id" {
  description = "(Required) Resource identifier."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_option_id" {
  description = "(Required) Tag Option identifier.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.tag_option_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the association."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_created_time" {
  description = "Creation time of the resource."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "ARN of the resource."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_created_time" {
  description = "Creation time of the resource."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_description" {
  description = "Description of the resource."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_name" {
  description = "Description of the resource.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.resource_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the association."
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_tag_option_resource_association.aws_servicecatalog_tag_option_resource_association.read
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
      "kind/name"                   = "aws_servicecatalog_tag_option_resource_association"
      "kind/version"                = "v0.1.0"
    }
  }
}