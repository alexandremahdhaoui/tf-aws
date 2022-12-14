datasource "aws_ebs_snapshot" "aws_ebs_snapshot" {
  arn                    = var.arn
  filter                 = var.filter
  id                     = var.id
  storage_tier           = var.storage_tier
  volume_size            = var.volume_size
  data_encryption_key_id = var.data_encryption_key_id
  description            = var.description
  encrypted              = var.encrypted
  kms_key_id             = var.kms_key_id
  owners                 = var.owners
  restorable_by_user_ids = var.restorable_by_user_ids
  owner_id               = var.owner_id
  snapshot_id            = var.snapshot_id
  snapshot_ids           = var.snapshot_ids
  tags                   = var.tags
  most_recent            = var.most_recent
  outpost_arn            = var.outpost_arn
  owner_alias            = var.owner_alias
  state                  = var.state
  volume_id              = var.volume_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more name/value pairs to filter off of. There are\nseveral valid keys, for a full reference, check out\ndescribe-snapshots in the AWS CLI reference.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "Snapshot ID (e.g., snap-59fcb34e)."
  type        = string
}
variable "storage_tier" {
  description = "Storage tier in which the snapshot is stored."
  type        = string
}
variable "volume_size" {
  description = "Size of the drive in GiBs."
  type        = string
}
variable "arn" {
  description = "ARN of the EBS Snapshot."
  type        = string
}
variable "description" {
  description = "Description for the snapshot"
  type        = string
}
variable "encrypted" {
  description = "Whether the snapshot is encrypted."
  type        = string
}
variable "kms_key_id" {
  description = "ARN for the KMS encryption key."
  type        = string
}
variable "owners" {
  description = "(Optional) Returns the snapshots owned by the specified owner id. Multiple owners can be specified."
  type        = string
  default     = ""
}
variable "restorable_by_user_ids" {
  description = "(Optional) One or more AWS accounts IDs that can create volumes from the snapshot."
  type        = string
  default     = ""
}
variable "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  type        = string
}
variable "snapshot_id" {
  description = "Snapshot ID (e.g., snap-59fcb34e)."
  type        = string
}
variable "snapshot_ids" {
  description = "(Optional) Returns information on a specific snapshot_id."
  type        = string
  default     = ""
}
variable "tags" {
  description = "Map of tags for the resource.TimeoutsConfiguration options:"
  type        = string
}
variable "owner_id" {
  description = "AWS account ID of the EBS snapshot owner."
  type        = string
}
variable "outpost_arn" {
  description = "ARN of the Outpost on which the snapshot is stored."
  type        = string
}
variable "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  type        = string
}
variable "state" {
  description = "Snapshot state."
  type        = string
}
variable "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  type        = string
}
variable "most_recent" {
  description = "(Optional) If more than one result is returned, use the most recent snapshot."
  type        = string
  default     = ""
}
output "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.volume_id
}
output "most_recent" {
  description = "(Optional) If more than one result is returned, use the most recent snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.most_recent
}
output "outpost_arn" {
  description = "ARN of the Outpost on which the snapshot is stored."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.outpost_arn
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_alias
}
output "state" {
  description = "Snapshot state."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.state
}
output "volume_size" {
  description = "Size of the drive in GiBs."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.volume_size
}
output "arn" {
  description = "ARN of the EBS Snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.arn
}
output "filter" {
  description = "(Optional) One or more name/value pairs to filter off of. There are\nseveral valid keys, for a full reference, check out\ndescribe-snapshots in the AWS CLI reference.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.filter
}
output "id" {
  description = "Snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.id
}
output "storage_tier" {
  description = "Storage tier in which the snapshot is stored."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.storage_tier
}
output "owners" {
  description = "(Optional) Returns the snapshots owned by the specified owner id. Multiple owners can be specified."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owners
}
output "restorable_by_user_ids" {
  description = "(Optional) One or more AWS accounts IDs that can create volumes from the snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.restorable_by_user_ids
}
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.data_encryption_key_id
}
output "description" {
  description = "Description for the snapshot"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.description
}
output "encrypted" {
  description = "Whether the snapshot is encrypted."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.encrypted
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.kms_key_id
}
output "owner_id" {
  description = "AWS account ID of the EBS snapshot owner."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_id
}
output "snapshot_id" {
  description = "Snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.snapshot_id
}
output "snapshot_ids" {
  description = "(Optional) Returns information on a specific snapshot_id."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.snapshot_ids
}
output "tags" {
  description = "Map of tags for the resource.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.tags
}
output "id" {
  description = "Snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.id
}
output "outpost_arn" {
  description = "ARN of the Outpost on which the snapshot is stored."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.outpost_arn
}
output "volume_size" {
  description = "Size of the drive in GiBs."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.volume_size
}
output "data_encryption_key_id" {
  description = "The data encryption key identifier for the snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.data_encryption_key_id
}
output "description" {
  description = "Description for the snapshot"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.description
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.kms_key_id
}
output "state" {
  description = "Snapshot state."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.state
}
output "storage_tier" {
  description = "Storage tier in which the snapshot is stored."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.storage_tier
}
output "tags" {
  description = "Map of tags for the resource.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot.aws_ebs_snapshot.tags
}
output "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.volume_id
}
output "arn" {
  description = "ARN of the EBS Snapshot."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.arn
}
output "encrypted" {
  description = "Whether the snapshot is encrypted."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.encrypted
}
output "owner_alias" {
  description = "Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_alias
}
output "owner_id" {
  description = "AWS account ID of the EBS snapshot owner."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.owner_id
}
output "snapshot_id" {
  description = "Snapshot ID (e.g., snap-59fcb34e)."
  value       = aws_ebs_snapshot.aws_ebs_snapshot.snapshot_id
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
