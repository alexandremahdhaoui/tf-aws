resource "aws_ebs_snapshot" "aws_ebs_snapshot" {
  description            = var.description
  id                     = var.id
  tags_all               = var.tags_all
  temporary_restore_days = var.temporary_restore_days
  create                 = var.create
  owner_id               = var.owner_id
  permanent_restore      = var.permanent_restore
  storage_tier           = var.storage_tier
  volume_id              = var.volume_id
  volume_size            = var.volume_size
  encrypted              = var.encrypted
  kms_key_id             = var.kms_key_id
  outpost_arn            = var.outpost_arn
  owner_alias            = var.owner_alias
  tags                   = var.tags
  arn                    = var.arn
  data_encryption_key_id = var.data_encryption_key_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "owner_id" {
  description = "The AWS account ID of the EBS snapshot owner."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "temporary_restore_days" {
  description = "(Optional) Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period."
  type        = string
  default     = ""
}
variable "volume_id" {
  description = "(Required) The Volume ID of which to make a snapshot."
  type        = string
}
variable "volume_size" {
  description = "The size of the drive in GiBs."
  type        = string
}
variable "encrypted" {
  description = "Whether the snapshot is encrypted."
  type        = string
}
variable "kms_key_id" {
  description = "The ARN for the KMS encryption key."
  type        = string
}
variable "permanent_restore" {
  description = "(Optional) Indicates whether to permanently restore an archived snapshot."
  type        = string
  default     = ""
}
variable "storage_tier" {
  description = "(Optional) The name of the storage tier. Valid values are archive and standard. Default value is standard."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the snapshot. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  type        = string
}
variable "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  type        = string
}
variable "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot."
  type        = string
  default     = ""
}
variable "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  type        = string
}
variable "description" {
  description = "(Optional) A description of what the snapshot is."
  type        = string
  default     = ""
}
variable "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
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
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.arn
}
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.data_encryption_key_id
}
output "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.outpost_arn
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_alias
}
output "tags" {
  description = "(Optional) A map of tags to assign to the snapshot. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.tags
}
output "description" {
  description = "(Optional) A description of what the snapshot is."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.description
}
output "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.create
}
output "owner_id" {
  description = "The AWS account ID of the EBS snapshot owner."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.tags_all
}
output "temporary_restore_days" {
  description = "(Optional) Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.temporary_restore_days
}
output "encrypted" {
  description = "Whether the snapshot is encrypted."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.encrypted
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.kms_key_id
}
output "permanent_restore" {
  description = "(Optional) Indicates whether to permanently restore an archived snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.permanent_restore
}
output "storage_tier" {
  description = "(Optional) The name of the storage tier. Valid values are archive and standard. Default value is standard."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.storage_tier
}
output "volume_id" {
  description = "(Required) The Volume ID of which to make a snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.volume_id
}
output "volume_size" {
  description = "The size of the drive in GiBs."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.volume_size
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.create
}
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.data_encryption_key_id
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.kms_key_id
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_alias
}
output "owner_id" {
  description = "The AWS account ID of the EBS snapshot owner."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_id
}
output "volume_size" {
  description = "The size of the drive in GiBs."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.volume_size
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.arn
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.delete
}
output "encrypted" {
  description = "Whether the snapshot is encrypted."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.encrypted
}
output "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.tags_all
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
      "kind/name"                   = "aws_ebs_snapshot"
      "kind/version"                = "v0.1.0"
    }
  }
}
