resource "aws_config_organization_conformance_pack" "aws_config_organization_conformance_pack" {
  id                     = var.id
  input_parameter        = var.input_parameter
  name                   = var.name
  template_body          = var.template_body
  template_s3_uri        = var.template_s3_uri
  delivery_s3_key_prefix = var.delivery_s3_key_prefix
  create                 = var.create
  delivery_s3_bucket     = var.delivery_s3_bucket
  excluded_accounts      = var.excluded_accounts
  parameter_name         = var.parameter_name
  parameter_value        = var.parameter_value
  update                 = var.update
  arn                    = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "delivery_s3_bucket" {
  description = "(Optional) Amazon S3 bucket where AWS Config stores conformance pack templates. Delivery bucket must begin with awsconfigconforms prefix. Maximum length of 63."
  type        = string
  default     = ""
}
variable "excluded_accounts" {
  description = "(Optional) Set of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack. Maximum of 1000 accounts."
  type        = string
  default     = ""
}
variable "parameter_name" {
  description = "(Required) The input key."
  type        = string
}
variable "parameter_value" {
  description = "(Required) The input value.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the organization conformance pack."
  type        = string
}
variable "id" {
  description = "The name of the organization conformance pack.TimeoutsConfiguration options:"
  type        = string
}
variable "input_parameter" {
  description = "(Optional) Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the template_body or in the template stored in Amazon S3 if using template_s3_uri."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required, Forces new resource) The name of the organization conformance pack. Must begin with a letter and contain from 1 to 128 alphanumeric characters and hyphens."
  type        = string
}
variable "template_body" {
  description = "(Optional, Conflicts with template_s3_uri) A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument."
  type        = string
}
variable "template_s3_uri" {
  description = "(Optional, Conflicts with template_body) Location of file, e.g., s3://bucketname/prefix, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.input_parameter Argument ReferenceThe input_parameter configuration block supports the following arguments:"
  type        = string
}
variable "delivery_s3_key_prefix" {
  description = "(Optional) The prefix for the Amazon S3 bucket. Maximum length of 1024."
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
output "delivery_s3_bucket" {
  description = "(Optional) Amazon S3 bucket where AWS Config stores conformance pack templates. Delivery bucket must begin with awsconfigconforms prefix. Maximum length of 63."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.delivery_s3_bucket
}
output "excluded_accounts" {
  description = "(Optional) Set of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack. Maximum of 1000 accounts."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.excluded_accounts
}
output "parameter_name" {
  description = "(Required) The input key."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.parameter_name
}
output "parameter_value" {
  description = "(Required) The input value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.parameter_value
}
output "update" {
  description = "(Default 10m)"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the organization conformance pack."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.create
}
output "input_parameter" {
  description = "(Optional) Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the template_body or in the template stored in Amazon S3 if using template_s3_uri."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.input_parameter
}
output "name" {
  description = "(Required, Forces new resource) The name of the organization conformance pack. Must begin with a letter and contain from 1 to 128 alphanumeric characters and hyphens."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.name
}
output "template_body" {
  description = "(Optional, Conflicts with template_s3_uri) A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.template_body
}
output "template_s3_uri" {
  description = "(Optional, Conflicts with template_body) Location of file, e.g., s3://bucketname/prefix, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.input_parameter Argument ReferenceThe input_parameter configuration block supports the following arguments:"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.template_s3_uri
}
output "delivery_s3_key_prefix" {
  description = "(Optional) The prefix for the Amazon S3 bucket. Maximum length of 1024."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.delivery_s3_key_prefix
}
output "id" {
  description = "The name of the organization conformance pack.TimeoutsConfiguration options:"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.id
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the organization conformance pack."
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.create
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.delete
}
output "id" {
  description = "The name of the organization conformance pack.TimeoutsConfiguration options:"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.id
}
output "update" {
  description = "(Default 10m)"
  value       = aws_config_organization_conformance_pack.aws_config_organization_conformance_pack.update
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
      "kind/name"                   = "aws_config_organization_conformance_pack"
      "kind/version"                = "v0.1.0"
    }
  }
}
