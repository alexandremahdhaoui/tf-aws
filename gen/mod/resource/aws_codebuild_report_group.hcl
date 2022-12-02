resource "aws_codebuild_report_group" "aws_codebuild_report_group" {
  created             = var.created
  export_config       = var.export_config
  id                  = var.id
  name                = var.name
  packaging           = var.packaging
  type                = var.type
  arn                 = var.arn
  bucket              = var.bucket
  path                = var.path
  s3_destination      = var.s3_destination
  encryption_disabled = var.encryption_disabled
  delete_reports      = var.delete_reports
  encryption_key      = var.encryption_key
  tags                = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "encryption_disabled" {
  description = "strongNote: the API does not currently allow setting encryption as disabled"
  type        = string
}
variable "delete_reports" {
  description = "(Optional) If true, deletes any reports that belong to a report group before deleting the report group. If false, you must delete any reports in the report group before deleting it. Default value is false."
  type        = string
  default     = ""
}
variable "encryption_key" {
  description = "(Required) The encryption key for the report's encrypted raw data. The KMS key ARN."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Export Config"
  type        = string
  default     = ""
}
variable "created" {
  description = "The date and time this Report Group was created."
  type        = string
}
variable "export_config" {
  description = "(Required) Information about the destination where the raw data of this Report Group is exported. see Export Config documented below."
  type        = string
}
variable "id" {
  description = "The ARN of Report Group."
  type        = string
}
variable "name" {
  description = "(Required) The name of a Report Group."
  type        = string
}
variable "packaging" {
  description = "(Optional) The type of build output artifact to create. Valid values are: NONE (default) and ZIP."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) The export configuration type. Valid values are S3 and NO_EXPORT."
  type        = string
}
variable "arn" {
  description = "The ARN of Report Group."
  type        = string
}
variable "bucket" {
  description = "- (Required) The name of the S3 bucket where the raw data of a report are exported."
  type        = string
}
variable "path" {
  description = "(Optional) The path to the exported report's raw data results.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "s3_destination" {
  description = "(Required) contains information about the S3 bucket where the run of a report is exported. see S3 Destination documented below.S3 Destination"
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
output "arn" {
  description = "The ARN of Report Group."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.arn
}
output "bucket" {
  description = "- (Required) The name of the S3 bucket where the raw data of a report are exported."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.bucket
}
output "path" {
  description = "(Optional) The path to the exported report's raw data results.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codebuild_report_group.aws_codebuild_report_group.path
}
output "s3_destination" {
  description = "(Required) contains information about the S3 bucket where the run of a report is exported. see S3 Destination documented below.S3 Destination"
  value       = aws_codebuild_report_group.aws_codebuild_report_group.s3_destination
}
output "encryption_disabled" {
  description = "strongNote: the API does not currently allow setting encryption as disabled"
  value       = aws_codebuild_report_group.aws_codebuild_report_group.encryption_disabled
}
output "delete_reports" {
  description = "(Optional) If true, deletes any reports that belong to a report group before deleting the report group. If false, you must delete any reports in the report group before deleting it. Default value is false."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.delete_reports
}
output "encryption_key" {
  description = "(Required) The encryption key for the report's encrypted raw data. The KMS key ARN."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.encryption_key
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Export Config"
  value       = aws_codebuild_report_group.aws_codebuild_report_group.tags
}
output "packaging" {
  description = "(Optional) The type of build output artifact to create. Valid values are: NONE (default) and ZIP."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.packaging
}
output "type" {
  description = "(Required) The export configuration type. Valid values are S3 and NO_EXPORT."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.type
}
output "created" {
  description = "The date and time this Report Group was created."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.created
}
output "export_config" {
  description = "(Required) Information about the destination where the raw data of this Report Group is exported. see Export Config documented below."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.export_config
}
output "id" {
  description = "The ARN of Report Group."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.id
}
output "name" {
  description = "(Required) The name of a Report Group."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.tags_all
}
output "arn" {
  description = "The ARN of Report Group."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.arn
}
output "created" {
  description = "The date and time this Report Group was created."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.created
}
output "id" {
  description = "The ARN of Report Group."
  value       = aws_codebuild_report_group.aws_codebuild_report_group.id
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
      "kind/name"                   = "aws_codebuild_report_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
