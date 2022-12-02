resource "aws_gamelift_build" "aws_gamelift_build" {
  arn              = var.arn
  key              = var.key
  name             = var.name
  operating_system = var.operating_system
  role_arn         = var.role_arn
  storage_location = var.storage_location
  bucket           = var.bucket
  id               = var.id
  object_version   = var.object_version
  tags             = var.tags
  version          = var.version
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "version" {
  description = "(Optional) Version that is associated with this build."
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) Name of your S3 bucket."
  type        = string
}
variable "id" {
  description = "GameLift Build ID."
  type        = string
}
variable "object_version" {
  description = "(Optional) A specific version of the file. If not set, the latest version of the file is retrieved.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldsstorage_location"
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Required) ARN of the access role that allows Amazon GameLift to access your S3 bucket."
  type        = string
}
variable "storage_location" {
  description = "(Required) Information indicating where your game build files are stored. See below."
  type        = string
}
variable "arn" {
  description = "GameLift Build ARN."
  type        = string
}
variable "key" {
  description = "(Required) Name of the zip file containing your build files."
  type        = string
}
variable "name" {
  description = "(Required) Name of the build"
  type        = string
}
variable "operating_system" {
  description = "(Required) Operating system that the game server binaries are built to run onE.g., WINDOWS_2012, AMAZON_LINUX or AMAZON_LINUX_2."
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
output "name" {
  description = "(Required) Name of the build"
  value       = aws_gamelift_build.aws_gamelift_build.name
}
output "operating_system" {
  description = "(Required) Operating system that the game server binaries are built to run onE.g., WINDOWS_2012, AMAZON_LINUX or AMAZON_LINUX_2."
  value       = aws_gamelift_build.aws_gamelift_build.operating_system
}
output "role_arn" {
  description = "(Required) ARN of the access role that allows Amazon GameLift to access your S3 bucket."
  value       = aws_gamelift_build.aws_gamelift_build.role_arn
}
output "storage_location" {
  description = "(Required) Information indicating where your game build files are stored. See below."
  value       = aws_gamelift_build.aws_gamelift_build.storage_location
}
output "arn" {
  description = "GameLift Build ARN."
  value       = aws_gamelift_build.aws_gamelift_build.arn
}
output "key" {
  description = "(Required) Name of the zip file containing your build files."
  value       = aws_gamelift_build.aws_gamelift_build.key
}
output "object_version" {
  description = "(Optional) A specific version of the file. If not set, the latest version of the file is retrieved.In addition to all arguments above, the following attributes are exported:"
  value       = aws_gamelift_build.aws_gamelift_build.object_version
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldsstorage_location"
  value       = aws_gamelift_build.aws_gamelift_build.tags
}
output "version" {
  description = "(Optional) Version that is associated with this build."
  value       = aws_gamelift_build.aws_gamelift_build.version
}
output "bucket" {
  description = "(Required) Name of your S3 bucket."
  value       = aws_gamelift_build.aws_gamelift_build.bucket
}
output "id" {
  description = "GameLift Build ID."
  value       = aws_gamelift_build.aws_gamelift_build.id
}
output "arn" {
  description = "GameLift Build ARN."
  value       = aws_gamelift_build.aws_gamelift_build.arn
}
output "id" {
  description = "GameLift Build ID."
  value       = aws_gamelift_build.aws_gamelift_build.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_gamelift_build.aws_gamelift_build.tags_all
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
      "kind/name"                   = "aws_gamelift_build"
      "kind/version"                = "v0.1.0"
    }
  }
}
