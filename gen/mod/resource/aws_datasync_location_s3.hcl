resource "aws_datasync_location_s3" "aws_datasync_location_s3" {
  arn                    = var.arn
  id                     = var.id
  s3_storage_class       = var.s3_storage_class
  subdirectory           = var.subdirectory
  tags                   = var.tags
  agent_arns             = var.agent_arns
  s3_bucket_arn          = var.s3_bucket_arn
  s3_config              = var.s3_config
  bucket_access_role_arn = var.bucket_access_role_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "agent_arns" {
  description = "(Optional) A list of DataSync Agent ARNs with which this location will be associated."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "s3_storage_class" {
  description = "(Optional) The Amazon S3 storage class that you want to store your files in when this location is used as a task destination. Valid values"
  type        = string
  default     = ""
}
variable "subdirectory" {
  description = "(Required) Prefix to perform actions as source or destination."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.s3_config Argument References3_config configuration block:"
  type        = string
  default     = ""
}
variable "bucket_access_role_arn" {
  description = "(Required) ARN of the IAM Role used to connect to the S3 Bucket.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "s3_bucket_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the S3 Bucket."
  type        = string
}
variable "s3_config" {
  description = "(Required) Configuration block containing information for connecting to S3."
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
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.id
}
output "s3_storage_class" {
  description = "(Optional) The Amazon S3 storage class that you want to store your files in when this location is used as a task destination. Valid values"
  value       = aws_datasync_location_s3.aws_datasync_location_s3.s3_storage_class
}
output "subdirectory" {
  description = "(Required) Prefix to perform actions as source or destination."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.subdirectory
}
output "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.s3_config Argument References3_config configuration block:"
  value       = aws_datasync_location_s3.aws_datasync_location_s3.tags
}
output "agent_arns" {
  description = "(Optional) A list of DataSync Agent ARNs with which this location will be associated."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.agent_arns
}
output "s3_bucket_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the S3 Bucket."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.s3_bucket_arn
}
output "s3_config" {
  description = "(Required) Configuration block containing information for connecting to S3."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.s3_config
}
output "bucket_access_role_arn" {
  description = "(Required) ARN of the IAM Role used to connect to the S3 Bucket.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datasync_location_s3.aws_datasync_location_s3.bucket_access_role_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_s3.aws_datasync_location_s3.id
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
      "kind/name"                   = "aws_datasync_location_s3"
      "kind/version"                = "v0.1.0"
    }
  }
}
