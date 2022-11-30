resource "aws_mskconnect_custom_plugin" "aws_mskconnect_custom_plugin" {
  object_version  = var.object_version
  state           = var.state
  bucket_arn      = var.bucket_arn
  create          = var.create
  delete          = var.delete
  file_key        = var.file_key
  location        = var.location
  name            = var.name
  s3              = var.s3
  arn             = var.arn
  content_type    = var.content_type
  description     = var.description
  latest_revision = var.latest_revision
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "object_version" {
  description = "(Optional) The version of an object in an S3 bucket.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "state" {
  description = "the state of the custom plugin.TimeoutsConfiguration options:"
  type        = string
}
variable "bucket_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of an S3 bucket."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "delete" {
  description = "(Default 10m)"
  type        = string
}
variable "file_key" {
  description = "(Required) The file key for an object in an S3 bucket."
  type        = string
}
variable "location" {
  description = "(Required) Information about the location of a custom plugin. See below."
  type        = string
}
variable "name" {
  description = "(Required) The name of the custom plugin.."
  type        = string
}
variable "s3" {
  description = "(Required) Information of the plugin file stored in Amazon S3. See below.location s3 Argument Reference"
  type        = string
}
variable "arn" {
  description = "the Amazon Resource Name (ARN) of the custom plugin."
  type        = string
}
variable "content_type" {
  description = "(Required) The type of the plugin file. Allowed values are ZIP and JAR."
  type        = string
}
variable "description" {
  description = "(Optional) A summary description of the custom plugin.location Argument Reference"
  type        = string
}
variable "latest_revision" {
  description = "an ID of the latest successfully created revision of the custom plugin."
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
output "latest_revision" {
  description = "an ID of the latest successfully created revision of the custom plugin."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.latest_revision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "(Required) Information about the location of a custom plugin. See below."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the custom plugin.."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3" {
  description = "(Required) Information of the plugin file stored in Amazon S3. See below.location s3 Argument Reference"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.s3
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "the Amazon Resource Name (ARN) of the custom plugin."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_type" {
  description = "(Required) The type of the plugin file. Allowed values are ZIP and JAR."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.content_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A summary description of the custom plugin.location Argument Reference"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_key" {
  description = "(Required) The file key for an object in an S3 bucket."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.file_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "object_version" {
  description = "(Optional) The version of an object in an S3 bucket.In addition to all arguments above, the following attributes are exported:"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.object_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "the state of the custom plugin.TimeoutsConfiguration options:"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of an S3 bucket."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.bucket_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "the Amazon Resource Name (ARN) of the custom plugin."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "latest_revision" {
  description = "an ID of the latest successfully created revision of the custom plugin."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.latest_revision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "the state of the custom plugin.TimeoutsConfiguration options:"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.state
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
      "kind/name"                   = "aws_mskconnect_custom_plugin"
      "kind/version"                = "v0.1.0"
    }
  }
}
