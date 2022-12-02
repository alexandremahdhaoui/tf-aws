resource "aws_cur_report_definition" "aws_cur_report_definition" {
  compression                = var.compression
  refresh_closed_reports     = var.refresh_closed_reports
  s3_region                  = var.s3_region
  additional_artifacts       = var.additional_artifacts
  additional_schema_elements = var.additional_schema_elements
  report_versioning          = var.report_versioning
  s3_bucket                  = var.s3_bucket
  s3_prefix                  = var.s3_prefix
  time_unit                  = var.time_unit
  format                     = var.format
  report_name                = var.report_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "additional_artifacts" {
  description = "(Required) A list of additional artifacts. Valid values are: REDSHIFT, QUICKSIGHT, ATHENA. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be OVERWRITE_REPORT."
  type        = string
}
variable "additional_schema_elements" {
  description = "(Required) A list of schema elements. Valid values are: RESOURCES."
  type        = string
}
variable "compression" {
  description = "(Required) Compression format for report. Valid values are: GZIP, ZIP, Parquet. If Parquet is used, then format must also be Parquet."
  type        = string
}
variable "refresh_closed_reports" {
  description = "(Optional) Set to true to update your reports after they have been finalized if AWS detects charges related to previous months."
  type        = string
  default     = ""
}
variable "s3_region" {
  description = "(Required) Region of the existing S3 bucket to hold generated reports."
  type        = string
}
variable "format" {
  description = "(Required) Format for report. Valid values are: textORcsv, Parquet. If Parquet is used, then Compression must also be Parquet."
  type        = string
}
variable "report_name" {
  description = "(Required) Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters."
  type        = string
}
variable "report_versioning" {
  description = "(Optional) Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: CREATE_NEW_REPORT and OVERWRITE_REPORT.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "s3_bucket" {
  description = "(Required) Name of the existing S3 bucket to hold generated reports."
  type        = string
}
variable "s3_prefix" {
  description = "(Optional) Report path prefix. Limited to 256 characters."
  type        = string
  default     = ""
}
variable "time_unit" {
  description = "(Required) The frequency on which report data are measured and displayed.  Valid values are: HOURLY, DAILY."
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
output "compression" {
  description = "(Required) Compression format for report. Valid values are: GZIP, ZIP, Parquet. If Parquet is used, then format must also be Parquet."
  value       = aws_cur_report_definition.aws_cur_report_definition.compression
}
output "refresh_closed_reports" {
  description = "(Optional) Set to true to update your reports after they have been finalized if AWS detects charges related to previous months."
  value       = aws_cur_report_definition.aws_cur_report_definition.refresh_closed_reports
}
output "s3_region" {
  description = "(Required) Region of the existing S3 bucket to hold generated reports."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_region
}
output "additional_artifacts" {
  description = "(Required) A list of additional artifacts. Valid values are: REDSHIFT, QUICKSIGHT, ATHENA. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be OVERWRITE_REPORT."
  value       = aws_cur_report_definition.aws_cur_report_definition.additional_artifacts
}
output "additional_schema_elements" {
  description = "(Required) A list of schema elements. Valid values are: RESOURCES."
  value       = aws_cur_report_definition.aws_cur_report_definition.additional_schema_elements
}
output "report_versioning" {
  description = "(Optional) Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: CREATE_NEW_REPORT and OVERWRITE_REPORT.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cur_report_definition.aws_cur_report_definition.report_versioning
}
output "s3_bucket" {
  description = "(Required) Name of the existing S3 bucket to hold generated reports."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_bucket
}
output "s3_prefix" {
  description = "(Optional) Report path prefix. Limited to 256 characters."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_prefix
}
output "time_unit" {
  description = "(Required) The frequency on which report data are measured and displayed.  Valid values are: HOURLY, DAILY."
  value       = aws_cur_report_definition.aws_cur_report_definition.time_unit
}
output "format" {
  description = "(Required) Format for report. Valid values are: textORcsv, Parquet. If Parquet is used, then Compression must also be Parquet."
  value       = aws_cur_report_definition.aws_cur_report_definition.format
}
output "report_name" {
  description = "(Required) Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters."
  value       = aws_cur_report_definition.aws_cur_report_definition.report_name
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the cur report."
  value       = aws_cur_report_definition.aws_cur_report_definition.arn
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
      "kind/name"                   = "aws_cur_report_definition"
      "kind/version"                = "v0.1.0"
    }
  }
}
