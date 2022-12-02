resource "aws_guardduty_filter" "aws_guardduty_filter" {
  rank                  = var.rank
  detector_id           = var.detector_id
  not_equals            = var.not_equals
  tags                  = var.tags
  action                = var.action
  equals                = var.equals
  field                 = var.field
  greater_than_or_equal = var.greater_than_or_equal
  less_than             = var.less_than
  name                  = var.name
  arn                   = var.arn
  description           = var.description
  finding_criteria      = var.finding_criteria
  greater_than          = var.greater_than
  id                    = var.id
  less_than_or_equal    = var.less_than_or_equal
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "rank" {
  description = "(Required) Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings."
  type        = string
}
variable "detector_id" {
  description = "(Required) ID of a GuardDuty detector, attached to your account."
  type        = string
}
variable "not_equals" {
  description = "(Optional) List of string values to be evaluated."
  type        = string
  default     = ""
}
variable "tags" {
  description = " (Optional) - The tags that you want to add to the Filter resource. A tag consists of a key and a value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "action" {
  description = "(Required) Specifies the action that is to be applied to the findings that match the filter. Can be one of ARCHIVE or NOOP."
  type        = string
}
variable "equals" {
  description = "(Optional) List of string values to be evaluated."
  type        = string
  default     = ""
}
variable "field" {
  description = "(Required) The name of the field to be evaluated. The full list of field names can be found in AWS documentation."
  type        = string
}
variable "greater_than_or_equal" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format."
  type        = string
  default     = ""
}
variable "less_than" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the GuardDuty filter."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the filter."
  type        = string
  default     = ""
}
variable "finding_criteria" {
  description = " (Required) - Represents the criteria to be used in the filter for querying findings. Contains one or more criterion blocks, documented below.criterionThe criterion block suports the following:"
  type        = string
}
variable "greater_than" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format."
  type        = string
  default     = ""
}
variable "id" {
  description = "A compound field, consisting of the ID of the GuardDuty detector and the name of the filter."
  type        = string
}
variable "less_than_or_equal" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of your filter."
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
output "detector_id" {
  description = "(Required) ID of a GuardDuty detector, attached to your account."
  value       = aws_guardduty_filter.aws_guardduty_filter.detector_id
}
output "not_equals" {
  description = "(Optional) List of string values to be evaluated."
  value       = aws_guardduty_filter.aws_guardduty_filter.not_equals
}
output "tags" {
  description = " (Optional) - The tags that you want to add to the Filter resource. A tag consists of a key and a value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_guardduty_filter.aws_guardduty_filter.tags
}
output "greater_than_or_equal" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format."
  value       = aws_guardduty_filter.aws_guardduty_filter.greater_than_or_equal
}
output "less_than" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format."
  value       = aws_guardduty_filter.aws_guardduty_filter.less_than
}
output "action" {
  description = "(Required) Specifies the action that is to be applied to the findings that match the filter. Can be one of ARCHIVE or NOOP."
  value       = aws_guardduty_filter.aws_guardduty_filter.action
}
output "equals" {
  description = "(Optional) List of string values to be evaluated."
  value       = aws_guardduty_filter.aws_guardduty_filter.equals
}
output "field" {
  description = "(Required) The name of the field to be evaluated. The full list of field names can be found in AWS documentation."
  value       = aws_guardduty_filter.aws_guardduty_filter.field
}
output "greater_than" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format."
  value       = aws_guardduty_filter.aws_guardduty_filter.greater_than
}
output "id" {
  description = "A compound field, consisting of the ID of the GuardDuty detector and the name of the filter."
  value       = aws_guardduty_filter.aws_guardduty_filter.id
}
output "less_than_or_equal" {
  description = "(Optional) A value to be evaluated. Accepts either an integer or a date in RFC 3339 format.In addition to all arguments above, the following attributes are exported:"
  value       = aws_guardduty_filter.aws_guardduty_filter.less_than_or_equal
}
output "name" {
  description = "(Required) The name of your filter."
  value       = aws_guardduty_filter.aws_guardduty_filter.name
}
output "arn" {
  description = "The ARN of the GuardDuty filter."
  value       = aws_guardduty_filter.aws_guardduty_filter.arn
}
output "description" {
  description = "(Optional) Description of the filter."
  value       = aws_guardduty_filter.aws_guardduty_filter.description
}
output "finding_criteria" {
  description = " (Required) - Represents the criteria to be used in the filter for querying findings. Contains one or more criterion blocks, documented below.criterionThe criterion block suports the following:"
  value       = aws_guardduty_filter.aws_guardduty_filter.finding_criteria
}
output "rank" {
  description = "(Required) Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings."
  value       = aws_guardduty_filter.aws_guardduty_filter.rank
}
output "arn" {
  description = "The ARN of the GuardDuty filter."
  value       = aws_guardduty_filter.aws_guardduty_filter.arn
}
output "id" {
  description = "A compound field, consisting of the ID of the GuardDuty detector and the name of the filter."
  value       = aws_guardduty_filter.aws_guardduty_filter.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_guardduty_filter.aws_guardduty_filter.tags_all
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
      "kind/name"                   = "aws_guardduty_filter"
      "kind/version"                = "v0.1.0"
    }
  }
}
