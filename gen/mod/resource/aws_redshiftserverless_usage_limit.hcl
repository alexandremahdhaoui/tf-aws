resource "aws_redshiftserverless_usage_limit" "aws_redshiftserverless_usage_limit" {
  period        = var.period
  resource_arn  = var.resource_arn
  usage_type    = var.usage_type
  amount        = var.amount
  arn           = var.arn
  breach_action = var.breach_action
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for."
  type        = string
}
variable "usage_type" {
  description = "(Required) The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are serverless-compute or cross-region-datasharing.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "amount" {
  description = "(Required) The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit."
  type        = string
}
variable "breach_action" {
  description = "(Optional) The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are log, emit-metric, and deactivate. The default is log."
  type        = string
}
variable "period" {
  description = "(Optional) The time period that the amount applies to. A weekly period begins on Sunday. Valid values are daily, weekly, and monthly. The default is monthly."
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
output "breach_action" {
  description = "(Optional) The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are log, emit-metric, and deactivate. The default is log."
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.breach_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "period" {
  description = "(Optional) The time period that the amount applies to. A weekly period begins on Sunday. Valid values are daily, weekly, and monthly. The default is monthly."
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.period
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for."
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "usage_type" {
  description = "(Required) The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are serverless-compute or cross-region-datasharing.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.usage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amount" {
  description = "(Required) The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number."
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.amount
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit."
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit."
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Redshift Usage Limit id."
  value       = aws_redshiftserverless_usage_limit.aws_redshiftserverless_usage_limit.id
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
      "kind/name"                   = "aws_redshiftserverless_usage_limit"
      "kind/version"                = "v0.1.0"
    }
  }
}
