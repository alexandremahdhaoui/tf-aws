resource "aws_fsx_backup" "aws_fsx_backup" {
  id             = var.id
  kms_key_id     = var.kms_key_id
  owner_id       = var.owner_id
  tags           = var.tags
  volume_id      = var.volume_id
  arn            = var.arn
  create         = var.create
  file_system_id = var.file_system_id
  tags_all       = var.tags_all
  type           = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "file_system_id" {
  description = "(Optional) The ID of the file system to back up. Required if backing up Lustre or Windows file systems."
  type        = string
  default     = ""
}
variable "id" {
  description = "Identifier of the backup, e.g., fs-12345678"
  type        = string
}
variable "kms_key_id" {
  description = " The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the backup of the Amazon FSx file system's data at rest."
  type        = string
}
variable "owner_id" {
  description = "AWS account identifier that created the file system."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set copy_tags_to_backups to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup."
  type        = string
  default     = ""
}
variable "volume_id" {
  description = "(Optional) The ID of the volume to back up. Required if backing up a ONTAP Volume.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name of the backup."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "type" {
  description = "The type of the file system backup.TimeoutsConfiguration options:"
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
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_backup.aws_fsx_backup.tags_all
}
output "type" {
  description = "The type of the file system backup.TimeoutsConfiguration options:"
  value       = aws_fsx_backup.aws_fsx_backup.type
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set copy_tags_to_backups to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup."
  value       = aws_fsx_backup.aws_fsx_backup.tags
}
output "volume_id" {
  description = "(Optional) The ID of the volume to back up. Required if backing up a ONTAP Volume.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_backup.aws_fsx_backup.volume_id
}
output "arn" {
  description = "Amazon Resource Name of the backup."
  value       = aws_fsx_backup.aws_fsx_backup.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_fsx_backup.aws_fsx_backup.create
}
output "file_system_id" {
  description = "(Optional) The ID of the file system to back up. Required if backing up Lustre or Windows file systems."
  value       = aws_fsx_backup.aws_fsx_backup.file_system_id
}
output "id" {
  description = "Identifier of the backup, e.g., fs-12345678"
  value       = aws_fsx_backup.aws_fsx_backup.id
}
output "kms_key_id" {
  description = " The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the backup of the Amazon FSx file system's data at rest."
  value       = aws_fsx_backup.aws_fsx_backup.kms_key_id
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_backup.aws_fsx_backup.owner_id
}
output "arn" {
  description = "Amazon Resource Name of the backup."
  value       = aws_fsx_backup.aws_fsx_backup.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_fsx_backup.aws_fsx_backup.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_fsx_backup.aws_fsx_backup.delete
}
output "id" {
  description = "Identifier of the backup, e.g., fs-12345678"
  value       = aws_fsx_backup.aws_fsx_backup.id
}
output "kms_key_id" {
  description = " The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the backup of the Amazon FSx file system's data at rest."
  value       = aws_fsx_backup.aws_fsx_backup.kms_key_id
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_backup.aws_fsx_backup.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_backup.aws_fsx_backup.tags_all
}
output "type" {
  description = "The type of the file system backup.TimeoutsConfiguration options:"
  value       = aws_fsx_backup.aws_fsx_backup.type
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
      "kind/name"                   = "aws_fsx_backup"
      "kind/version"                = "v0.1.0"
    }
  }
}
