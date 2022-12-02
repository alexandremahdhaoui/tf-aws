datasource "aws_ebs_volume" "aws_ebs_volume" {
  availability_zone    = var.availability_zone
  encrypted            = var.encrypted
  id                   = var.id
  throughput           = var.throughput
  iops                 = var.iops
  kms_key_id           = var.kms_key_id
  outpost_arn          = var.outpost_arn
  snapshot_id          = var.snapshot_id
  tags                 = var.tags
  arn                  = var.arn
  filter               = var.filter
  size                 = var.size
  volume_id            = var.volume_id
  most_recent          = var.most_recent
  multi_attach_enabled = var.multi_attach_enabled
  volume_type          = var.volume_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  type        = string
}
variable "filter" {
  description = "describe-volumes in the AWS CLI reference.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "size" {
  description = "Size of the drive in GiBs."
  type        = string
}
variable "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  type        = string
}
variable "most_recent" {
  description = ""
  type        = string
}
variable "multi_attach_enabled" {
  description = "(Optional) Specifies whether Amazon EBS Multi-Attach is enabled."
  type        = string
  default     = ""
}
variable "volume_type" {
  description = "Type of EBS volume."
  type        = string
}
variable "availability_zone" {
  description = "AZ where the EBS volume exists."
  type        = string
}
variable "encrypted" {
  description = "Whether the disk is encrypted."
  type        = string
}
variable "id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  type        = string
}
variable "throughput" {
  description = "Throughput that the volume supports, in MiB/s.TimeoutsConfiguration options:"
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
variable "outpost_arn" {
  description = "ARN of the Outpost."
  type        = string
}
variable "snapshot_id" {
  description = "Snapshot_id the EBS volume is based off."
  type        = string
}
variable "tags" {
  description = "Map of tags for the resource."
  type        = string
}
output "size" {
  description = "Size of the drive in GiBs."
  value       = aws_ebs_volume.aws_ebs_volume.size
}
output "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.volume_id
}
output "arn" {
  description = "Volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.arn
}
output "filter" {
  description = "describe-volumes in the AWS CLI reference.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ebs_volume.aws_ebs_volume.filter
}
output "volume_type" {
  description = "Type of EBS volume."
  value       = aws_ebs_volume.aws_ebs_volume.volume_type
}
output "most_recent" {
  description = ""
  value       = aws_ebs_volume.aws_ebs_volume.most_recent
}
output "multi_attach_enabled" {
  description = "(Optional) Specifies whether Amazon EBS Multi-Attach is enabled."
  value       = aws_ebs_volume.aws_ebs_volume.multi_attach_enabled
}
output "id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.id
}
output "throughput" {
  description = "Throughput that the volume supports, in MiB/s.TimeoutsConfiguration options:"
  value       = aws_ebs_volume.aws_ebs_volume.throughput
}
output "availability_zone" {
  description = "AZ where the EBS volume exists."
  value       = aws_ebs_volume.aws_ebs_volume.availability_zone
}
output "encrypted" {
  description = "Whether the disk is encrypted."
  value       = aws_ebs_volume.aws_ebs_volume.encrypted
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_ebs_volume.aws_ebs_volume.outpost_arn
}
output "snapshot_id" {
  description = "Snapshot_id the EBS volume is based off."
  value       = aws_ebs_volume.aws_ebs_volume.snapshot_id
}
output "tags" {
  description = "Map of tags for the resource."
  value       = aws_ebs_volume.aws_ebs_volume.tags
}
output "iops" {
  description = "Amount of IOPS for the disk."
  value       = aws_ebs_volume.aws_ebs_volume.iops
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_ebs_volume.aws_ebs_volume.kms_key_id
}
output "id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.id
}
output "iops" {
  description = "Amount of IOPS for the disk."
  value       = aws_ebs_volume.aws_ebs_volume.iops
}
output "tags" {
  description = "Map of tags for the resource."
  value       = aws_ebs_volume.aws_ebs_volume.tags
}
output "volume_type" {
  description = "Type of EBS volume."
  value       = aws_ebs_volume.aws_ebs_volume.volume_type
}
output "arn" {
  description = "Volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.arn
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_ebs_volume.aws_ebs_volume.kms_key_id
}
output "snapshot_id" {
  description = "Snapshot_id the EBS volume is based off."
  value       = aws_ebs_volume.aws_ebs_volume.snapshot_id
}
output "throughput" {
  description = "Throughput that the volume supports, in MiB/s.TimeoutsConfiguration options:"
  value       = aws_ebs_volume.aws_ebs_volume.throughput
}
output "volume_id" {
  description = "Volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.volume_id
}
output "size" {
  description = "Size of the drive in GiBs."
  value       = aws_ebs_volume.aws_ebs_volume.size
}
output "availability_zone" {
  description = "AZ where the EBS volume exists."
  value       = aws_ebs_volume.aws_ebs_volume.availability_zone
}
output "encrypted" {
  description = "Whether the disk is encrypted."
  value       = aws_ebs_volume.aws_ebs_volume.encrypted
}
output "multi_attach_enabled" {
  description = "(Optional) Specifies whether Amazon EBS Multi-Attach is enabled."
  value       = aws_ebs_volume.aws_ebs_volume.multi_attach_enabled
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_ebs_volume.aws_ebs_volume.outpost_arn
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
