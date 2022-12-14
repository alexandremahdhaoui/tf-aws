resource "aws_organizations_delegated_administrator" "aws_organizations_delegated_administrator" {
  email                   = var.email
  joined_method           = var.joined_method
  joined_timestamp        = var.joined_timestamp
  account_id              = var.account_id
  arn                     = var.arn
  delegation_enabled_date = var.delegation_enabled_date
  id                      = var.id
  name                    = var.name
  service_principal       = var.service_principal
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "email" {
  description = "The email address that is associated with the delegated administrator's AWS account."
  type        = string
}
variable "joined_method" {
  description = "The method by which the delegated administrator's account joined the organization."
  type        = string
}
variable "joined_timestamp" {
  description = "The date when the delegated administrator's account became a part of the organization."
  type        = string
}
variable "account_id" {
  description = "(Required) The account ID number of the member account in the organization to register as a delegated administrator."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the delegated administrator's account."
  type        = string
}
variable "delegation_enabled_date" {
  description = "The date when the account was made a delegated administrator."
  type        = string
}
variable "id" {
  description = "The unique identifier (ID) of the delegated administrator."
  type        = string
}
variable "name" {
  description = "The friendly name of the delegated administrator's account."
  type        = string
}
variable "service_principal" {
  description = "(Required) The service principal of the AWS service for which you want to make the member account a delegated administrator.In addition to all arguments above, the following attributes are exported:"
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
output "email" {
  description = "The email address that is associated with the delegated administrator's AWS account."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.email
}
output "joined_method" {
  description = "The method by which the delegated administrator's account joined the organization."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.joined_method
}
output "joined_timestamp" {
  description = "The date when the delegated administrator's account became a part of the organization."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.joined_timestamp
}
output "id" {
  description = "The unique identifier (ID) of the delegated administrator."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.id
}
output "name" {
  description = "The friendly name of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.name
}
output "service_principal" {
  description = "(Required) The service principal of the AWS service for which you want to make the member account a delegated administrator.In addition to all arguments above, the following attributes are exported:"
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.service_principal
}
output "account_id" {
  description = "(Required) The account ID number of the member account in the organization to register as a delegated administrator."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.account_id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.arn
}
output "delegation_enabled_date" {
  description = "The date when the account was made a delegated administrator."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.delegation_enabled_date
}
output "id" {
  description = "The unique identifier (ID) of the delegated administrator."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.id
}
output "joined_method" {
  description = "The method by which the delegated administrator's account joined the organization."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.joined_method
}
output "joined_timestamp" {
  description = "The date when the delegated administrator's account became a part of the organization."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.joined_timestamp
}
output "name" {
  description = "The friendly name of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.name
}
output "status" {
  description = "The status of the delegated administrator's account in the organization."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.status
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.arn
}
output "delegation_enabled_date" {
  description = "The date when the account was made a delegated administrator."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.delegation_enabled_date
}
output "email" {
  description = "The email address that is associated with the delegated administrator's AWS account."
  value       = aws_organizations_delegated_administrator.aws_organizations_delegated_administrator.email
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
      "kind/name"                   = "aws_organizations_delegated_administrator"
      "kind/version"                = "v0.1.0"
    }
  }
}
