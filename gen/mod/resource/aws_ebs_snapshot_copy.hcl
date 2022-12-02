resource "aws_ebs_snapshot_copy" "aws_ebs_snapshot_copy" {
  data_encryption_key_id = var.data_encryption_key_id
  storage_tier           = var.storage_tier
  tags                   = var.tags
  tags_all               = var.tags_all
  arn                    = var.arn
  id                     = var.id
  owner_id               = var.owner_id
  source_snapshot_id     = var.source_snapshot_id
  create                 = var.create
  encrypted              = var.encrypted
  owner_alias            = var.owner_alias
  volume_size            = var.volume_size
  description            = var.description
  kms_key_id             = var.kms_key_id
  permanent_restore      = var.permanent_restore
  source_region          = var.source_region
  temporary_restore_days = var.temporary_restore_days
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  type        = string
}
variable "storage_tier" {
  description = "(Optional) The name of the storage tier. Valid values are archive and standard. Default value is standard."
  type        = string
  default     = ""
}
variable "tags" {
  description = "A map of tags for the snapshot. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  type        = string
}
variable "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
  type        = string
}
variable "owner_id" {
  description = "The AWS account ID of the snapshot owner."
  type        = string
}
variable "source_snapshot_id" {
  description = " The ARN for the snapshot to be copied."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "encrypted" {
  description = "Whether the snapshot is encrypted."
  type        = string
}
variable "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  type        = string
}
variable "volume_size" {
  description = "The size of the drive in GiBs."
  type        = string
}
variable "description" {
  description = "(Optional) A description of what the snapshot is."
  type        = string
  default     = ""
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
variable "source_region" {
  description = " The region of the source snapshot."
  type        = string
}
variable "temporary_restore_days" {
  description = "(Optional) Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period."
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
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.data_encryption_key_id
}
output "storage_tier" {
  description = "(Optional) The name of the storage tier. Valid values are archive and standard. Default value is standard."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.storage_tier
}
output "tags" {
  description = "A map of tags for the snapshot. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.arn
}
output "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.id
}
output "owner_id" {
  description = "The AWS account ID of the snapshot owner."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.owner_id
}
output "source_snapshot_id" {
  description = " The ARN for the snapshot to be copied."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.source_snapshot_id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.create
}
output "encrypted" {
  description = "Whether the snapshot is encrypted."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.encrypted
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.owner_alias
}
output "volume_size" {
  description = "The size of the drive in GiBs."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.volume_size
}
output "description" {
  description = "(Optional) A description of what the snapshot is."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.description
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.kms_key_id
}
output "permanent_restore" {
  description = "(Optional) Indicates whether to permanently restore an archived snapshot."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.permanent_restore
}
output "source_region" {
  description = " The region of the source snapshot."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.source_region
}
output "temporary_restore_days" {
  description = "(Optional) Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.temporary_restore_days
}
output "owner_id" {
  description = "The AWS account ID of the snapshot owner."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.tags_all
}
output "volume_size" {
  description = "The size of the drive in GiBs."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.volume_size
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.create
}
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.data_encryption_key_id
}
output "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.id
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot_copy.aws_ebs_snapshot_copy.owner_alias
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
      "kind/name"                   = "aws_ebs_snapshot_copy"
      "kind/version"                = "v0.1.0"
    }
  }
}
