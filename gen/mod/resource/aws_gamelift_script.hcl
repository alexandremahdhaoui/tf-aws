resource "aws_gamelift_script" "aws_gamelift_script" {
  bucket           = var.bucket
  key              = var.key
  object_version   = var.object_version
  tags             = var.tags
  storage_location = var.storage_location
  version          = var.version
  zip_file         = var.zip_file
  arn              = var.arn
  id               = var.id
  name             = var.name
  role_arn         = var.role_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket" {
  description = "(Required) Name of your S3 bucket."
  type        = string
}
variable "key" {
  description = "(Required) Name of the zip file containing your script files."
  type        = string
}
variable "object_version" {
  description = "(Optional) A specific version of the file. If not set, the latest version of the file is retrieved.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "version" {
  description = "(Optional) Version that is associated with this script."
  type        = string
  default     = ""
}
variable "zip_file" {
  description = "(Optional) A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.Nested Fieldsstorage_location"
  type        = string
  default     = ""
}
variable "arn" {
  description = "GameLift Script ARN."
  type        = string
}
variable "id" {
  description = "GameLift Script ID."
  type        = string
}
variable "name" {
  description = "(Required) Name of the script"
  type        = string
}
variable "role_arn" {
  description = "(Required) ARN of the access role that allows Amazon GameLift to access your S3 bucket."
  type        = string
}
variable "storage_location" {
  description = "(Optional) Information indicating where your game script files are stored. See below."
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
output "object_version" {
  description = "(Optional) A specific version of the file. If not set, the latest version of the file is retrieved.In addition to all arguments above, the following attributes are exported:"
  value       = aws_gamelift_script.aws_gamelift_script.object_version
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_gamelift_script.aws_gamelift_script.tags
}
output "bucket" {
  description = "(Required) Name of your S3 bucket."
  value       = aws_gamelift_script.aws_gamelift_script.bucket
}
output "key" {
  description = "(Required) Name of the zip file containing your script files."
  value       = aws_gamelift_script.aws_gamelift_script.key
}
output "name" {
  description = "(Required) Name of the script"
  value       = aws_gamelift_script.aws_gamelift_script.name
}
output "role_arn" {
  description = "(Required) ARN of the access role that allows Amazon GameLift to access your S3 bucket."
  value       = aws_gamelift_script.aws_gamelift_script.role_arn
}
output "storage_location" {
  description = "(Optional) Information indicating where your game script files are stored. See below."
  value       = aws_gamelift_script.aws_gamelift_script.storage_location
}
output "version" {
  description = "(Optional) Version that is associated with this script."
  value       = aws_gamelift_script.aws_gamelift_script.version
}
output "zip_file" {
  description = "(Optional) A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.Nested Fieldsstorage_location"
  value       = aws_gamelift_script.aws_gamelift_script.zip_file
}
output "arn" {
  description = "GameLift Script ARN."
  value       = aws_gamelift_script.aws_gamelift_script.arn
}
output "id" {
  description = "GameLift Script ID."
  value       = aws_gamelift_script.aws_gamelift_script.id
}
output "arn" {
  description = "GameLift Script ARN."
  value       = aws_gamelift_script.aws_gamelift_script.arn
}
output "id" {
  description = "GameLift Script ID."
  value       = aws_gamelift_script.aws_gamelift_script.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_gamelift_script.aws_gamelift_script.tags_all
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
      "kind/name"                   = "aws_gamelift_script"
      "kind/version"                = "v0.1.0"
    }
  }
}
