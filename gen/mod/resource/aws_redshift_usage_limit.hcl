resource "aws_redshift_usage_limit" "aws_redshift_usage_limit" {
  arn                = var.arn
  cluster_identifier = var.cluster_identifier
  id                 = var.id
  tags               = var.tags
  amount             = var.amount
  breach_action      = var.breach_action
  feature_type       = var.feature_type
  limit_type         = var.limit_type
  period             = var.period
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The Redshift Usage Limit ID."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Usage Limit."
  type        = string
}
variable "cluster_identifier" {
  description = "(Required) The identifier of the cluster that you want to limit usage."
  type        = string
}
variable "feature_type" {
  description = "(Required) The Amazon Redshift feature that you want to limit. Valid values are spectrum, concurrency-scaling, and cross-region-datasharing."
  type        = string
}
variable "limit_type" {
  description = "(Required) The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is spectrum, then LimitType must be data-scanned. If FeatureType is concurrency-scaling, then LimitType must be time. If FeatureType is cross-region-datasharing, then LimitType must be data-scanned. Valid values are data-scanned, and time."
  type        = string
}
variable "period" {
  description = "(Optional) The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly. Valid values are daily, weekly, and monthly."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "amount" {
  description = "(Required) The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number."
  type        = string
}
variable "breach_action" {
  description = "(Optional) The action that Amazon Redshift takes when the limit is reached. The default is log. Valid values are log, emit-metric, and disable."
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
output "cluster_identifier" {
  description = "(Required) The identifier of the cluster that you want to limit usage."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.cluster_identifier
}
output "id" {
  description = "The Redshift Usage Limit ID."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.id
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Usage Limit."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.arn
}
output "breach_action" {
  description = "(Optional) The action that Amazon Redshift takes when the limit is reached. The default is log. Valid values are log, emit-metric, and disable."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.breach_action
}
output "feature_type" {
  description = "(Required) The Amazon Redshift feature that you want to limit. Valid values are spectrum, concurrency-scaling, and cross-region-datasharing."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.feature_type
}
output "limit_type" {
  description = "(Required) The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is spectrum, then LimitType must be data-scanned. If FeatureType is concurrency-scaling, then LimitType must be time. If FeatureType is cross-region-datasharing, then LimitType must be data-scanned. Valid values are data-scanned, and time."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.limit_type
}
output "period" {
  description = "(Optional) The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly. Valid values are daily, weekly, and monthly."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.period
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.tags
}
output "amount" {
  description = "(Required) The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.amount
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Usage Limit."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.arn
}
output "id" {
  description = "The Redshift Usage Limit ID."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_redshift_usage_limit.aws_redshift_usage_limit.tags_all
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
      "kind/name"                   = "aws_redshift_usage_limit"
      "kind/version"                = "v0.1.0"
    }
  }
}
