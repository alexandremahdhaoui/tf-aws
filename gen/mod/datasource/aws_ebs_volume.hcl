datasource "aws_ebs_volume" "aws_ebs_volume" {
  filter               = var.filter
  throughput           = var.throughput
  encrypted            = var.encrypted
  multi_attach_enabled = var.multi_attach_enabled
  size                 = var.size
  snapshot_id          = var.snapshot_id
  volume_id            = var.volume_id
  volume_type          = var.volume_type
  availability_zone    = var.availability_zone
  outpost_arn          = var.outpost_arn
  arn                  = var.arn
  id                   = var.id
  iops                 = var.iops
  kms_key_id           = var.kms_key_id
  most_recent          = var.most_recent
  tags                 = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "throughput" {
  description = "Throughput that the volume supports, in MiB/s.TimeoutsConfiguration options:"
  type        = string
}
variable "filter" {
  description = "describe-volumes in the AWS CLI reference.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "multi_attach_enabled" {
  description = "(Optional) Specifies whether Amazon EBS Multi-Attach is enabled."
  type        = string
}
variable "size" {
  description = "Size of the drive in GiBs."
  type        = string
}
variable "snapshot_id" {
  description = "Snapshot_id the EBS volume is based off."
  type        = string
}
variable "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  type        = string
}
variable "volume_type" {
  description = "Type of EBS volume."
  type        = string
}
variable "encrypted" {
  description = "Whether the disk is encrypted."
  type        = string
}
variable "outpost_arn" {
  description = "ARN of the Outpost."
  type        = string
}
variable "availability_zone" {
  description = "AZ where the EBS volume exists."
  type        = string
}
variable "id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  type        = string
}
variable "iops" {
  description = "Amount of IOPS for the disk."
  type        = string
}
variable "kms_key_id" {
  description = "ARN for the KMS encryption key."
  type        = string
}
variable "most_recent" {
  description = ""
  type        = string
}
variable "tags" {
  description = "Map of tags for the resource."
  type        = string
}
variable "arn" {
  description = "Volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  type        = string
}
output "filter" {
  description = "describe-volumes in the AWS CLI reference.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ebs_volume.aws_ebs_volume.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "Throughput that the volume supports, in MiB/s.TimeoutsConfiguration options:"
  value       = aws_ebs_volume.aws_ebs_volume.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether the disk is encrypted."
  value       = aws_ebs_volume.aws_ebs_volume.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multi_attach_enabled" {
  description = "(Optional) Specifies whether Amazon EBS Multi-Attach is enabled."
  value       = aws_ebs_volume.aws_ebs_volume.multi_attach_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size" {
  description = "Size of the drive in GiBs."
  value       = aws_ebs_volume.aws_ebs_volume.size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Snapshot_id the EBS volume is based off."
  value       = aws_ebs_volume.aws_ebs_volume.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of EBS volume."
  value       = aws_ebs_volume.aws_ebs_volume.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "AZ where the EBS volume exists."
  value       = aws_ebs_volume.aws_ebs_volume.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_ebs_volume.aws_ebs_volume.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Amount of IOPS for the disk."
  value       = aws_ebs_volume.aws_ebs_volume.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_ebs_volume.aws_ebs_volume.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "most_recent" {
  description = ""
  value       = aws_ebs_volume.aws_ebs_volume.most_recent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags for the resource."
  value       = aws_ebs_volume.aws_ebs_volume.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Snapshot_id the EBS volume is based off."
  value       = aws_ebs_volume.aws_ebs_volume.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of EBS volume."
  value       = aws_ebs_volume.aws_ebs_volume.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "AZ where the EBS volume exists."
  value       = aws_ebs_volume.aws_ebs_volume.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether the disk is encrypted."
  value       = aws_ebs_volume.aws_ebs_volume.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Amount of IOPS for the disk."
  value       = aws_ebs_volume.aws_ebs_volume.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_ebs_volume.aws_ebs_volume.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_ebs_volume.aws_ebs_volume.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size" {
  description = "Size of the drive in GiBs."
  value       = aws_ebs_volume.aws_ebs_volume.size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "Throughput that the volume supports, in MiB/s.TimeoutsConfiguration options:"
  value       = aws_ebs_volume.aws_ebs_volume.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multi_attach_enabled" {
  description = "(Optional) Specifies whether Amazon EBS Multi-Attach is enabled."
  value       = aws_ebs_volume.aws_ebs_volume.multi_attach_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags for the resource."
  value       = aws_ebs_volume.aws_ebs_volume.tags
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
}
