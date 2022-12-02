resource "aws_macie2_findings_filter" "aws_macie2_findings_filter" {
  gte              = var.gte
  lt               = var.lt
  position         = var.position
  finding_criteria = var.finding_criteria
  tags             = var.tags
  gt               = var.gt
  description      = var.description
  field            = var.field
  id               = var.id
  lte              = var.lte
  name_prefix      = var.name_prefix
  neq              = var.neq
  criterion        = var.criterion
  eq               = var.eq
  eq_exact_match   = var.eq_exact_match
  name             = var.name
  action           = var.action
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "action" {
  description = "(Required) The action to perform on findings that meet the filter criteria (finding_criteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings."
  type        = string
}
variable "eq" {
  description = "(Optional) The value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values."
  type        = string
  default     = ""
}
variable "eq_exact_match" {
  description = "(Optional) The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  type        = string
  default     = ""
}
variable "finding_criteria" {
  description = "(Required) The criteria to use to filter findings."
  type        = string
}
variable "gte" {
  description = "(Optional) The value for the property is greater than or equal to the specified value.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "lt" {
  description = "(Optional) The value for the property is less than the specified value."
  type        = string
  default     = ""
}
variable "position" {
  description = "(Optional) The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings."
  type        = string
  default     = ""
}
variable "gt" {
  description = "(Optional) The value for the property is greater than the specified value."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of key-value pairs that specifies the tags to associate with the filter.The finding_criteria object supports the following:"
  type        = string
  default     = ""
}
variable "lte" {
  description = "(Optional) The value for the property is less than or equal to the specified value."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = " (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "neq" {
  description = "(Optional) The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values."
  type        = string
  default     = ""
}
variable "criterion" {
  description = " (Optional) A condition that specifies the property, operator, and one or more values to use to filter the results.  (documented below)The criterion object supports the following:"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A custom description of the filter. The description can contain as many as 512 characters."
  type        = string
  default     = ""
}
variable "field" {
  description = "(Required) The name of the field to be evaluated."
  type        = string
}
variable "id" {
  description = "The unique identifier (ID) of the macie Findings Filter."
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
output "eq_exact_match" {
  description = "(Optional) The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.eq_exact_match
}
output "name" {
  description = "(Optional) A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.name
}
output "action" {
  description = "(Required) The action to perform on findings that meet the filter criteria (finding_criteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.action
}
output "eq" {
  description = "(Optional) The value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.eq
}
output "lt" {
  description = "(Optional) The value for the property is less than the specified value."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.lt
}
output "position" {
  description = "(Optional) The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.position
}
output "finding_criteria" {
  description = "(Required) The criteria to use to filter findings."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.finding_criteria
}
output "gte" {
  description = "(Optional) The value for the property is greater than or equal to the specified value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.gte
}
output "gt" {
  description = "(Optional) The value for the property is greater than the specified value."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.gt
}
output "tags" {
  description = "(Optional) A map of key-value pairs that specifies the tags to associate with the filter.The finding_criteria object supports the following:"
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.tags
}
output "field" {
  description = "(Required) The name of the field to be evaluated."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.field
}
output "id" {
  description = "The unique identifier (ID) of the macie Findings Filter."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.id
}
output "lte" {
  description = "(Optional) The value for the property is less than or equal to the specified value."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.lte
}
output "name_prefix" {
  description = " (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.name_prefix
}
output "neq" {
  description = "(Optional) The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.neq
}
output "criterion" {
  description = " (Optional) A condition that specifies the property, operator, and one or more values to use to filter the results.  (documented below)The criterion object supports the following:"
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.criterion
}
output "description" {
  description = "(Optional) A custom description of the filter. The description can contain as many as 512 characters."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.description
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Findings Filter."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.arn
}
output "id" {
  description = "The unique identifier (ID) of the macie Findings Filter."
  value       = aws_macie2_findings_filter.aws_macie2_findings_filter.id
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
      "kind/name"                   = "aws_macie2_findings_filter"
      "kind/version"                = "v0.1.0"
    }
  }
}
