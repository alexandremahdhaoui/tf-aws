datasource "aws_cur_report_definition" "aws_cur_report_definition" {
  s3_bucket                  = var.s3_bucket
  s3_region                  = var.s3_region
  compression                = var.compression
  format                     = var.format
  refresh_closed_reports     = var.refresh_closed_reports
  report_name                = var.report_name
  additional_artifacts       = var.additional_artifacts
  additional_schema_elements = var.additional_schema_elements
  s3_prefix                  = var.s3_prefix
  time_unit                  = var.time_unit
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "additional_artifacts" {
  description = "A list of additional artifacts."
  type        = string
}
variable "additional_schema_elements" {
  description = "A list of schema elements."
  type        = string
}
variable "s3_prefix" {
  description = "Preferred report path prefix."
  type        = string
}
variable "time_unit" {
  description = "Frequency on which report data are measured and displayed."
  type        = string
}
variable "compression" {
  description = "Preferred format for report."
  type        = string
}
variable "format" {
  description = "Preferred compression format for report."
  type        = string
}
variable "refresh_closed_reports" {
  description = "If true reports are updated after they have been finalized."
  type        = string
}
variable "report_name" {
  description = "(Required) Name of the report definition to match."
  type        = string
}
variable "s3_bucket" {
  description = "Name of customer S3 bucket."
  type        = string
}
variable "s3_region" {
  description = "Region of customer S3 bucket."
  type        = string
}
output "s3_region" {
  description = "Region of customer S3 bucket."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_region
}
output "compression" {
  description = "Preferred format for report."
  value       = aws_cur_report_definition.aws_cur_report_definition.compression
}
output "format" {
  description = "Preferred compression format for report."
  value       = aws_cur_report_definition.aws_cur_report_definition.format
}
output "refresh_closed_reports" {
  description = "If true reports are updated after they have been finalized."
  value       = aws_cur_report_definition.aws_cur_report_definition.refresh_closed_reports
}
output "report_name" {
  description = "(Required) Name of the report definition to match."
  value       = aws_cur_report_definition.aws_cur_report_definition.report_name
}
output "s3_bucket" {
  description = "Name of customer S3 bucket."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_bucket
}
output "additional_artifacts" {
  description = "A list of additional artifacts."
  value       = aws_cur_report_definition.aws_cur_report_definition.additional_artifacts
}
output "additional_schema_elements" {
  description = "A list of schema elements."
  value       = aws_cur_report_definition.aws_cur_report_definition.additional_schema_elements
}
output "s3_prefix" {
  description = "Preferred report path prefix."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_prefix
}
output "time_unit" {
  description = "Frequency on which report data are measured and displayed."
  value       = aws_cur_report_definition.aws_cur_report_definition.time_unit
}
output "additional_artifacts" {
  description = "A list of additional artifacts."
  value       = aws_cur_report_definition.aws_cur_report_definition.additional_artifacts
}
output "additional_schema_elements" {
  description = "A list of schema elements."
  value       = aws_cur_report_definition.aws_cur_report_definition.additional_schema_elements
}
output "compression" {
  description = "Preferred format for report."
  value       = aws_cur_report_definition.aws_cur_report_definition.compression
}
output "format" {
  description = "Preferred compression format for report."
  value       = aws_cur_report_definition.aws_cur_report_definition.format
}
output "s3_bucket" {
  description = "Name of customer S3 bucket."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_bucket
}
output "s3_region" {
  description = "Region of customer S3 bucket."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_region
}
output "refresh_closed_reports" {
  description = "If true reports are updated after they have been finalized."
  value       = aws_cur_report_definition.aws_cur_report_definition.refresh_closed_reports
}
output "s3_prefix" {
  description = "Preferred report path prefix."
  value       = aws_cur_report_definition.aws_cur_report_definition.s3_prefix
}
output "time_unit" {
  description = "Frequency on which report data are measured and displayed."
  value       = aws_cur_report_definition.aws_cur_report_definition.time_unit
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
