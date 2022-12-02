resource "aws_backup_report_plan" "aws_backup_report_plan" {
  report_delivery_channel = var.report_delivery_channel
  report_setting          = var.report_setting
  arn                     = var.arn
  id                      = var.id
  name                    = var.name
  report_template         = var.report_template
  s3_bucket_name          = var.s3_bucket_name
  tags                    = var.tags
  deployment_status       = var.deployment_status
  formats                 = var.formats
  number_of_frameworks    = var.number_of_frameworks
  creation_time           = var.creation_time
  framework_arns          = var.framework_arns
  description             = var.description
  s3_key_prefix           = var.s3_key_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores."
  type        = string
}
variable "report_template" {
  description = "(Required) Identifies the report template for the report. Reports are built using a report template. The report templates are: RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "s3_bucket_name" {
  description = "(Required) The unique name of the S3 bucket that receives your reports."
  type        = string
}
variable "tags" {
  description = "(Optional) Metadata that you can assign to help organize the report plans you create. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Report Delivery Channel ArgumentsFor strongreport_delivery_channel the following attributes are supported:"
  type        = string
  default     = ""
}
variable "deployment_status" {
  description = "The deployment status of a report plan. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED."
  type        = string
}
variable "formats" {
  description = "(Optional) A list of the format of your reports: CSV, JSON, or both. If not specified, the default format is CSV."
  type        = string
  default     = ""
}
variable "number_of_frameworks" {
  description = "(Optional) Specifies the number of frameworks a report covers."
  type        = string
  default     = ""
}
variable "creation_time" {
  description = "The date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC)."
  type        = string
}
variable "framework_arns" {
  description = "(Optional) Specifies the Amazon Resource Names (ARNs) of the frameworks a report covers."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The description of the report plan with a maximum of 1,024 characters"
  type        = string
  default     = ""
}
variable "s3_key_prefix" {
  description = "(Optional) The prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name. If not specified, there is no prefix.Report Setting ArgumentsFor strongreport_setting the following attributes are supported:"
  type        = string
  default     = ""
}
variable "report_delivery_channel" {
  description = "(Required) An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below."
  type        = string
}
variable "report_setting" {
  description = "(Required) An object that identifies the report template for the report. Reports are built using a report template. Detailed below."
  type        = string
}
variable "arn" {
  description = "The ARN of the backup report plan."
  type        = string
}
variable "id" {
  description = "The id of the backup report plan."
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
output "number_of_frameworks" {
  description = "(Optional) Specifies the number of frameworks a report covers."
  value       = aws_backup_report_plan.aws_backup_report_plan.number_of_frameworks
}
output "creation_time" {
  description = "The date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_report_plan.aws_backup_report_plan.creation_time
}
output "framework_arns" {
  description = "(Optional) Specifies the Amazon Resource Names (ARNs) of the frameworks a report covers."
  value       = aws_backup_report_plan.aws_backup_report_plan.framework_arns
}
output "description" {
  description = "(Optional) The description of the report plan with a maximum of 1,024 characters"
  value       = aws_backup_report_plan.aws_backup_report_plan.description
}
output "s3_key_prefix" {
  description = "(Optional) The prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name. If not specified, there is no prefix.Report Setting ArgumentsFor strongreport_setting the following attributes are supported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.s3_key_prefix
}
output "report_delivery_channel" {
  description = "(Required) An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below."
  value       = aws_backup_report_plan.aws_backup_report_plan.report_delivery_channel
}
output "report_setting" {
  description = "(Required) An object that identifies the report template for the report. Reports are built using a report template. Detailed below."
  value       = aws_backup_report_plan.aws_backup_report_plan.report_setting
}
output "arn" {
  description = "The ARN of the backup report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.arn
}
output "id" {
  description = "The id of the backup report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.id
}
output "name" {
  description = "(Required) The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores."
  value       = aws_backup_report_plan.aws_backup_report_plan.name
}
output "report_template" {
  description = "(Required) Identifies the report template for the report. Reports are built using a report template. The report templates are: RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT.In addition to all arguments above, the following attributes are exported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.report_template
}
output "s3_bucket_name" {
  description = "(Required) The unique name of the S3 bucket that receives your reports."
  value       = aws_backup_report_plan.aws_backup_report_plan.s3_bucket_name
}
output "tags" {
  description = "(Optional) Metadata that you can assign to help organize the report plans you create. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Report Delivery Channel ArgumentsFor strongreport_delivery_channel the following attributes are supported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.tags
}
output "deployment_status" {
  description = "The deployment status of a report plan. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED."
  value       = aws_backup_report_plan.aws_backup_report_plan.deployment_status
}
output "formats" {
  description = "(Optional) A list of the format of your reports: CSV, JSON, or both. If not specified, the default format is CSV."
  value       = aws_backup_report_plan.aws_backup_report_plan.formats
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_backup_report_plan.aws_backup_report_plan.tags_all
}
output "arn" {
  description = "The ARN of the backup report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.arn
}
output "creation_time" {
  description = "The date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_report_plan.aws_backup_report_plan.creation_time
}
output "deployment_status" {
  description = "The deployment status of a report plan. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED."
  value       = aws_backup_report_plan.aws_backup_report_plan.deployment_status
}
output "id" {
  description = "The id of the backup report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.id
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
      "kind/name"                   = "aws_backup_report_plan"
      "kind/version"                = "v0.1.0"
    }
  }
}
