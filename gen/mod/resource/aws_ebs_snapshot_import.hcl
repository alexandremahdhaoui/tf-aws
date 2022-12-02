resource "aws_ebs_snapshot_import" "aws_ebs_snapshot_import" {
  upload_end             = var.upload_end
  user_bucket            = var.user_bucket
  volume_size            = var.volume_size
  id                     = var.id
  owner_alias            = var.owner_alias
  s3_key                 = var.s3_key
  format                 = var.format
  owner_id               = var.owner_id
  permanent_restore      = var.permanent_restore
  arn                    = var.arn
  data_encryption_key_id = var.data_encryption_key_id
  disk_container         = var.disk_container
  encrypted              = var.encrypted
  tags                   = var.tags
  upload_start           = var.upload_start
  url                    = var.url
  create                 = var.create
  delete                 = var.delete
  role_name              = var.role_name
  s3_bucket              = var.s3_bucket
  comment                = var.comment
  temporary_restore_days = var.temporary_restore_days
  kms_key_id             = var.kms_key_id
  description            = var.description
  storage_tier           = var.storage_tier
  upload_size            = var.upload_size
  client_data            = var.client_data
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  type        = string
}
variable "disk_container" {
  description = "(Required) Information about the disk container. Detailed below."
  type        = string
}
variable "format" {
  description = "(Required) The format of the disk image being imported. One of VHD or VMDK."
  type        = string
}
variable "owner_id" {
  description = "The AWS account ID of the EBS snapshot owner."
  type        = string
}
variable "permanent_restore" {
  description = "(Optional) Indicates whether to permanently restore an archived snapshot."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  type        = string
}
variable "encrypted" {
  description = "(Optional) Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 10m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "role_name" {
  description = "(Optional) The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: vmimport"
  type        = string
  default     = ""
}
variable "s3_bucket" {
  description = "The name of the Amazon S3 bucket where the disk image is located."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the snapshot.client_data Configuration Block"
  type        = string
  default     = ""
}
variable "upload_start" {
  description = "(Optional) The time that the disk upload starts."
  type        = string
  default     = ""
}
variable "url" {
  description = "(Optional) The URL to the Amazon S3-based disk image being imported. It can either be a https URL (https://..) or an Amazon S3 URL (s3://..). One of url or user_bucket must be set."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "temporary_restore_days" {
  description = "(Optional) Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period."
  type        = string
  default     = ""
}
variable "comment" {
  description = "(Optional) A user-defined comment about the disk upload."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The description of the disk image being imported."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set."
  type        = string
  default     = ""
}
variable "upload_size" {
  description = "(Optional) The size of the uploaded disk image, in GiB.disk_container Configuration Block"
  type        = string
  default     = ""
}
variable "storage_tier" {
  description = "(Optional) The name of the storage tier. Valid values are archive and standard. Default value is standard."
  type        = string
  default     = ""
}
variable "client_data" {
  description = "(Optional) The client-specific data. Detailed below."
  type        = string
  default     = ""
}
variable "user_bucket" {
  description = "(Optional) The Amazon S3 bucket for the disk image. One of url or user_bucket must be set. Detailed below.user_bucket Configuration Block"
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "The size of the drive in GiBs."
  type        = string
}
variable "upload_end" {
  description = "(Optional) The time that the disk upload ends."
  type        = string
  default     = ""
}
variable "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  type        = string
}
variable "s3_key" {
  description = "The file name of the disk image.TimeoutsConfiguration options:"
  type        = string
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
output "s3_bucket" {
  description = "The name of the Amazon S3 bucket where the disk image is located."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.s3_bucket
}
output "tags" {
  description = "(Optional) A map of tags to assign to the snapshot.client_data Configuration Block"
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.tags
}
output "upload_start" {
  description = "(Optional) The time that the disk upload starts."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.upload_start
}
output "url" {
  description = "(Optional) The URL to the Amazon S3-based disk image being imported. It can either be a https URL (https://..) or an Amazon S3 URL (s3://..). One of url or user_bucket must be set."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.url
}
output "create" {
  description = "(Default 60m)"
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.create
}
output "delete" {
  description = "(Default 10m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.delete
}
output "role_name" {
  description = "(Optional) The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: vmimport"
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.role_name
}
output "comment" {
  description = "(Optional) A user-defined comment about the disk upload."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.comment
}
output "temporary_restore_days" {
  description = "(Optional) Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.temporary_restore_days
}
output "kms_key_id" {
  description = "(Optional) An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.kms_key_id
}
output "description" {
  description = "(Optional) The description of the disk image being imported."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.description
}
output "storage_tier" {
  description = "(Optional) The name of the storage tier. Valid values are archive and standard. Default value is standard."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.storage_tier
}
output "upload_size" {
  description = "(Optional) The size of the uploaded disk image, in GiB.disk_container Configuration Block"
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.upload_size
}
output "client_data" {
  description = "(Optional) The client-specific data. Detailed below."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.client_data
}
output "upload_end" {
  description = "(Optional) The time that the disk upload ends."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.upload_end
}
output "user_bucket" {
  description = "(Optional) The Amazon S3 bucket for the disk image. One of url or user_bucket must be set. Detailed below.user_bucket Configuration Block"
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.user_bucket
}
output "volume_size" {
  description = "The size of the drive in GiBs."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.volume_size
}
output "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.id
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.owner_alias
}
output "s3_key" {
  description = "The file name of the disk image.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.s3_key
}
output "disk_container" {
  description = "(Required) Information about the disk container. Detailed below."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.disk_container
}
output "format" {
  description = "(Required) The format of the disk image being imported. One of VHD or VMDK."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.format
}
output "owner_id" {
  description = "The AWS account ID of the EBS snapshot owner."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.owner_id
}
output "permanent_restore" {
  description = "(Optional) Indicates whether to permanently restore an archived snapshot."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.permanent_restore
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.arn
}
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.data_encryption_key_id
}
output "encrypted" {
  description = "(Optional) Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.encrypted
}
output "volume_size" {
  description = "The size of the drive in GiBs."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.volume_size
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EBS Snapshot."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.arn
}
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.data_encryption_key_id
}
output "id" {
  description = "The snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.id
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.owner_alias
}
output "owner_id" {
  description = "The AWS account ID of the EBS snapshot owner."
  value       = aws_ebs_snapshot_import.aws_ebs_snapshot_import.owner_id
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
      "kind/name"                   = "aws_ebs_snapshot_import"
      "kind/version"                = "v0.1.0"
    }
  }
}
