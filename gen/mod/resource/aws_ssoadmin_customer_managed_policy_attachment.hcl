resource "aws_ssoadmin_customer_managed_policy_attachment" "aws_ssoadmin_customer_managed_policy_attachment" {
  customer_managed_policy_reference = var.customer_managed_policy_reference
  instance_arn                      = var.instance_arn
  name                              = var.name
  path                              = var.path
  permission_set_arn                = var.permission_set_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "customer_managed_policy_reference" {
  description = "(Required, Forces new resource) Specifies the name and path of a customer managed policy. See below.Customer Managed Policy ReferenceThe customer_managed_policy_reference config block describes a customer managed IAM policy. You must have an IAM policy that matches the name and path in each AWS account where you want to deploy your specified permission set."
  type        = string
}
variable "instance_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed."
  type        = string
}
variable "name" {
  description = "(Required, Forces new resource) Name of the customer managed IAM Policy to be attached."
  type        = string
}
variable "path" {
  description = "(Optional, Forces new resource) The path to the IAM policy to be attached. The default is /. See IAM Identifiers for more information.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "permission_set_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the Permission Set."
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
output "customer_managed_policy_reference" {
  description = "(Required, Forces new resource) Specifies the name and path of a customer managed policy. See below.Customer Managed Policy ReferenceThe customer_managed_policy_reference config block describes a customer managed IAM policy. You must have an IAM policy that matches the name and path in each AWS account where you want to deploy your specified permission set."
  value       = aws_ssoadmin_customer_managed_policy_attachment.aws_ssoadmin_customer_managed_policy_attachment.customer_managed_policy_reference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed."
  value       = aws_ssoadmin_customer_managed_policy_attachment.aws_ssoadmin_customer_managed_policy_attachment.instance_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required, Forces new resource) Name of the customer managed IAM Policy to be attached."
  value       = aws_ssoadmin_customer_managed_policy_attachment.aws_ssoadmin_customer_managed_policy_attachment.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "(Optional, Forces new resource) The path to the IAM policy to be attached. The default is /. See IAM Identifiers for more information.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssoadmin_customer_managed_policy_attachment.aws_ssoadmin_customer_managed_policy_attachment.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permission_set_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the Permission Set."
  value       = aws_ssoadmin_customer_managed_policy_attachment.aws_ssoadmin_customer_managed_policy_attachment.permission_set_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Policy Name, Policy Path, Permission Set Amazon Resource Name (ARN), and SSO Instance ARN, each separated by a comma (,)."
  value       = aws_ssoadmin_customer_managed_policy_attachment.aws_ssoadmin_customer_managed_policy_attachment.id
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
      "kind/name"                   = "aws_ssoadmin_customer_managed_policy_attachment"
      "kind/version"                = "v0.1.0"
    }
  }
}
