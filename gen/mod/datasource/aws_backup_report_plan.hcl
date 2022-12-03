datasource "aws_backup_report_plan" "aws_backup_report_plan" {
  framework_arns          = var.framework_arns
  report_setting          = var.report_setting
  arn                     = var.arn
  creation_time           = var.creation_time
  description             = var.description
  formats                 = var.formats
  deployment_status       = var.deployment_status
  report_delivery_channel = var.report_delivery_channel
  s3_bucket_name          = var.s3_bucket_name
  s3_key_prefix           = var.s3_key_prefix
  tags                    = var.tags
  id                      = var.id
  name                    = var.name
  number_of_frameworks    = var.number_of_frameworks
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "report_delivery_channel" {
  description = "An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below."
  type        = string
}
variable "s3_bucket_name" {
  description = "Unique name of the S3 bucket that receives your reports."
  type        = string
}
variable "s3_key_prefix" {
  description = "Prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name.Report Setting AttributesFor strongreport_setting the following attributes are supported:"
  type        = string
}
variable "tags" {
  description = "Metadata that you can assign to help organize the report plans you create.Report Delivery Channel AttributesFor strongreport_delivery_channel the following attributes are supported:"
  type        = string
}
variable "id" {
  description = "ID of the report plan."
  type        = string
}
variable "name" {
  description = "(Required) Backup report plan name.In addition to the arguments above, the following attributes are exported:"
  type        = string
}
variable "number_of_frameworks" {
  description = "Specifies the number of frameworks a report covers."
  type        = string
}
variable "arn" {
  description = "ARN of the backup report plan."
  type        = string
}
variable "creation_time" {
  description = "Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC)."
  type        = string
}
variable "description" {
  description = "Description of the report plan."
  type        = string
}
variable "formats" {
  description = "List of the format of your reports: CSV, JSON, or both."
  type        = string
}
variable "framework_arns" {
  description = "ARNs of the frameworks a report covers."
  type        = string
}
variable "report_setting" {
  description = "An object that identifies the report template for the report. Reports are built using a report template. Detailed below."
  type        = string
}
variable "deployment_status" {
  description = "Deployment status of a report plan. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED."
  type        = string
}
output "id" {
  description = "ID of the report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.id
}
output "name" {
  description = "(Required) Backup report plan name.In addition to the arguments above, the following attributes are exported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.name
}
output "number_of_frameworks" {
  description = "Specifies the number of frameworks a report covers."
  value       = aws_backup_report_plan.aws_backup_report_plan.number_of_frameworks
}
output "formats" {
  description = "List of the format of your reports: CSV, JSON, or both."
  value       = aws_backup_report_plan.aws_backup_report_plan.formats
}
output "framework_arns" {
  description = "ARNs of the frameworks a report covers."
  value       = aws_backup_report_plan.aws_backup_report_plan.framework_arns
}
output "report_setting" {
  description = "An object that identifies the report template for the report. Reports are built using a report template. Detailed below."
  value       = aws_backup_report_plan.aws_backup_report_plan.report_setting
}
output "arn" {
  description = "ARN of the backup report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.arn
}
output "creation_time" {
  description = "Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_report_plan.aws_backup_report_plan.creation_time
}
output "description" {
  description = "Description of the report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.description
}
output "deployment_status" {
  description = "Deployment status of a report plan. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED."
  value       = aws_backup_report_plan.aws_backup_report_plan.deployment_status
}
output "tags" {
  description = "Metadata that you can assign to help organize the report plans you create.Report Delivery Channel AttributesFor strongreport_delivery_channel the following attributes are supported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.tags
}
output "report_delivery_channel" {
  description = "An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below."
  value       = aws_backup_report_plan.aws_backup_report_plan.report_delivery_channel
}
output "s3_bucket_name" {
  description = "Unique name of the S3 bucket that receives your reports."
  value       = aws_backup_report_plan.aws_backup_report_plan.s3_bucket_name
}
output "s3_key_prefix" {
  description = "Prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name.Report Setting AttributesFor strongreport_setting the following attributes are supported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.s3_key_prefix
}
output "deployment_status" {
  description = "Deployment status of a report plan. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED."
  value       = aws_backup_report_plan.aws_backup_report_plan.deployment_status
}
output "description" {
  description = "Description of the report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.description
}
output "id" {
  description = "ID of the report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.id
}
output "report_setting" {
  description = "An object that identifies the report template for the report. Reports are built using a report template. Detailed below."
  value       = aws_backup_report_plan.aws_backup_report_plan.report_setting
}
output "s3_bucket_name" {
  description = "Unique name of the S3 bucket that receives your reports."
  value       = aws_backup_report_plan.aws_backup_report_plan.s3_bucket_name
}
output "s3_key_prefix" {
  description = "Prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name.Report Setting AttributesFor strongreport_setting the following attributes are supported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.s3_key_prefix
}
output "tags" {
  description = "Metadata that you can assign to help organize the report plans you create.Report Delivery Channel AttributesFor strongreport_delivery_channel the following attributes are supported:"
  value       = aws_backup_report_plan.aws_backup_report_plan.tags
}
output "arn" {
  description = "ARN of the backup report plan."
  value       = aws_backup_report_plan.aws_backup_report_plan.arn
}
output "creation_time" {
  description = "Date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_report_plan.aws_backup_report_plan.creation_time
}
output "formats" {
  description = "List of the format of your reports: CSV, JSON, or both."
  value       = aws_backup_report_plan.aws_backup_report_plan.formats
}
output "framework_arns" {
  description = "ARNs of the frameworks a report covers."
  value       = aws_backup_report_plan.aws_backup_report_plan.framework_arns
}
output "number_of_frameworks" {
  description = "Specifies the number of frameworks a report covers."
  value       = aws_backup_report_plan.aws_backup_report_plan.number_of_frameworks
}
output "report_delivery_channel" {
  description = "An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below."
  value       = aws_backup_report_plan.aws_backup_report_plan.report_delivery_channel
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
}
