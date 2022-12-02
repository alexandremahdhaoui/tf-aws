datasource "aws_launch_configuration" "aws_launch_configuration" {
  ebs_optimized                    = var.ebs_optimized
  instance_type                    = var.instance_type
  root_block_device                = var.root_block_device
  spot_price                       = var.spot_price
  vpc_classic_link_id              = var.vpc_classic_link_id
  http_tokens                      = var.http_tokens
  key_name                         = var.key_name
  metadata_options                 = var.metadata_options
  no_device                        = var.no_device
  placement_tenancy                = var.placement_tenancy
  user_data                        = var.user_data
  volume_size                      = var.volume_size
  ephemeral_block_device           = var.ephemeral_block_device
  snapshot_id                      = var.snapshot_id
  throughput                       = var.throughput
  volume_type                      = var.volume_type
  arn                              = var.arn
  vpc_classic_link_security_groups = var.vpc_classic_link_security_groups
  ebs_block_device                 = var.ebs_block_device
  encrypted                        = var.encrypted
  id                               = var.id
  delete_on_termination            = var.delete_on_termination
  http_put_response_hop_limit      = var.http_put_response_hop_limit
  name                             = var.name
  security_groups                  = var.security_groups
  http_endpoint                    = var.http_endpoint
  iam_instance_profile             = var.iam_instance_profile
  iops                             = var.iops
  associate_public_ip_address      = var.associate_public_ip_address
  device_name                      = var.device_name
  enable_monitoring                = var.enable_monitoring
  image_id                         = var.image_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ebs_optimized" {
  description = "Whether the launched EC2 instance will be EBS-optimized."
  type        = string
}
variable "instance_type" {
  description = "Instance Type of the instance to launch."
  type        = string
}
variable "root_block_device" {
  description = "Root Block Device of the instance."
  type        = string
}
variable "spot_price" {
  description = "Price to use for reserving Spot instances."
  type        = string
}
variable "vpc_classic_link_id" {
  description = "ID of a ClassicLink-enabled VPC."
  type        = string
}
variable "http_tokens" {
  description = "If session tokens are required: optional, required."
  type        = string
}
variable "key_name" {
  description = "Key Name that should be used for the instance."
  type        = string
}
variable "metadata_options" {
  description = ""
  type        = string
}
variable "no_device" {
  description = "Whether the device in the block device mapping of the AMI is suppressed."
  type        = string
}
variable "placement_tenancy" {
  description = "Tenancy of the instance.root_block_device is exported with the following attributes:"
  type        = string
}
variable "user_data" {
  description = "User Data of the instance."
  type        = string
}
variable "volume_size" {
  description = "Size of the volume."
  type        = string
}
variable "ephemeral_block_device" {
  description = "The Ephemeral volumes on the instance."
  type        = string
}
variable "snapshot_id" {
  description = "Snapshot ID of the mount."
  type        = string
}
variable "throughput" {
  description = "Throughput of the volume."
  type        = string
}
variable "volume_type" {
  description = "Type of the volume.ephemeral_block_device is exported with the following attributes:"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the launch configuration."
  type        = string
}
variable "vpc_classic_link_security_groups" {
  description = "The IDs of one or more Security Groups for the specified ClassicLink-enabled VPC."
  type        = string
}
variable "ebs_block_device" {
  description = "EBS Block Devices attached to the instance."
  type        = string
}
variable "encrypted" {
  description = "Whether the volume is Encrypted."
  type        = string
}
variable "id" {
  description = "ID of the launch configuration."
  type        = string
}
variable "delete_on_termination" {
  description = "Whether the EBS Volume will be deleted on instance termination."
  type        = string
}
variable "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  type        = string
}
variable "name" {
  description = "Name of the launch configuration."
  type        = string
}
variable "security_groups" {
  description = "List of associated Security Group IDS."
  type        = string
}
variable "http_endpoint" {
  description = "State of the metadata service: enabled, disabled."
  type        = string
}
variable "iam_instance_profile" {
  description = "The IAM Instance Profile to associate with launched instances."
  type        = string
}
variable "iops" {
  description = "Provisioned IOPs of the volume."
  type        = string
}
variable "associate_public_ip_address" {
  description = "Whether a Public IP address is associated with the instance."
  type        = string
}
variable "device_name" {
  description = "Name of the device."
  type        = string
}
variable "enable_monitoring" {
  description = "Whether Detailed Monitoring is Enabled."
  type        = string
}
variable "image_id" {
  description = "EC2 Image ID of the instance."
  type        = string
}
output "ephemeral_block_device" {
  description = "The Ephemeral volumes on the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ephemeral_block_device
}
output "snapshot_id" {
  description = "Snapshot ID of the mount."
  value       = aws_launch_configuration.aws_launch_configuration.snapshot_id
}
output "throughput" {
  description = "Throughput of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.throughput
}
output "volume_type" {
  description = "Type of the volume.ephemeral_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.volume_type
}
output "arn" {
  description = "Amazon Resource Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.arn
}
output "vpc_classic_link_security_groups" {
  description = "The IDs of one or more Security Groups for the specified ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_security_groups
}
output "ebs_block_device" {
  description = "EBS Block Devices attached to the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_block_device
}
output "encrypted" {
  description = "Whether the volume is Encrypted."
  value       = aws_launch_configuration.aws_launch_configuration.encrypted
}
output "id" {
  description = "ID of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.id
}
output "delete_on_termination" {
  description = "Whether the EBS Volume will be deleted on instance termination."
  value       = aws_launch_configuration.aws_launch_configuration.delete_on_termination
}
output "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  value       = aws_launch_configuration.aws_launch_configuration.http_put_response_hop_limit
}
output "name" {
  description = "Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.name
}
output "security_groups" {
  description = "List of associated Security Group IDS."
  value       = aws_launch_configuration.aws_launch_configuration.security_groups
}
output "http_endpoint" {
  description = "State of the metadata service: enabled, disabled."
  value       = aws_launch_configuration.aws_launch_configuration.http_endpoint
}
output "iam_instance_profile" {
  description = "The IAM Instance Profile to associate with launched instances."
  value       = aws_launch_configuration.aws_launch_configuration.iam_instance_profile
}
output "iops" {
  description = "Provisioned IOPs of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.iops
}
output "associate_public_ip_address" {
  description = "Whether a Public IP address is associated with the instance."
  value       = aws_launch_configuration.aws_launch_configuration.associate_public_ip_address
}
output "device_name" {
  description = "Name of the device."
  value       = aws_launch_configuration.aws_launch_configuration.device_name
}
output "enable_monitoring" {
  description = "Whether Detailed Monitoring is Enabled."
  value       = aws_launch_configuration.aws_launch_configuration.enable_monitoring
}
output "image_id" {
  description = "EC2 Image ID of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.image_id
}
output "ebs_optimized" {
  description = "Whether the launched EC2 instance will be EBS-optimized."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_optimized
}
output "instance_type" {
  description = "Instance Type of the instance to launch."
  value       = aws_launch_configuration.aws_launch_configuration.instance_type
}
output "root_block_device" {
  description = "Root Block Device of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.root_block_device
}
output "spot_price" {
  description = "Price to use for reserving Spot instances."
  value       = aws_launch_configuration.aws_launch_configuration.spot_price
}
output "vpc_classic_link_id" {
  description = "ID of a ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_id
}
output "user_data" {
  description = "User Data of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.user_data
}
output "volume_size" {
  description = "Size of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.volume_size
}
output "http_tokens" {
  description = "If session tokens are required: optional, required."
  value       = aws_launch_configuration.aws_launch_configuration.http_tokens
}
output "key_name" {
  description = "Key Name that should be used for the instance."
  value       = aws_launch_configuration.aws_launch_configuration.key_name
}
output "metadata_options" {
  description = ""
  value       = aws_launch_configuration.aws_launch_configuration.metadata_options
}
output "no_device" {
  description = "Whether the device in the block device mapping of the AMI is suppressed."
  value       = aws_launch_configuration.aws_launch_configuration.no_device
}
output "placement_tenancy" {
  description = "Tenancy of the instance.root_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.placement_tenancy
}
output "device_name" {
  description = "Name of the device."
  value       = aws_launch_configuration.aws_launch_configuration.device_name
}
output "ebs_block_device" {
  description = "EBS Block Devices attached to the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_block_device
}
output "enable_monitoring" {
  description = "Whether Detailed Monitoring is Enabled."
  value       = aws_launch_configuration.aws_launch_configuration.enable_monitoring
}
output "instance_type" {
  description = "Instance Type of the instance to launch."
  value       = aws_launch_configuration.aws_launch_configuration.instance_type
}
output "vpc_classic_link_security_groups" {
  description = "The IDs of one or more Security Groups for the specified ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_security_groups
}
output "ephemeral_block_device" {
  description = "The Ephemeral volumes on the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ephemeral_block_device
}
output "image_id" {
  description = "EC2 Image ID of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.image_id
}
output "root_block_device" {
  description = "Root Block Device of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.root_block_device
}
output "http_endpoint" {
  description = "State of the metadata service: enabled, disabled."
  value       = aws_launch_configuration.aws_launch_configuration.http_endpoint
}
output "http_tokens" {
  description = "If session tokens are required: optional, required."
  value       = aws_launch_configuration.aws_launch_configuration.http_tokens
}
output "iam_instance_profile" {
  description = "The IAM Instance Profile to associate with launched instances."
  value       = aws_launch_configuration.aws_launch_configuration.iam_instance_profile
}
output "user_data" {
  description = "User Data of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.user_data
}
output "arn" {
  description = "Amazon Resource Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.arn
}
output "encrypted" {
  description = "Whether the volume is Encrypted."
  value       = aws_launch_configuration.aws_launch_configuration.encrypted
}
output "id" {
  description = "ID of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.id
}
output "metadata_options" {
  description = ""
  value       = aws_launch_configuration.aws_launch_configuration.metadata_options
}
output "associate_public_ip_address" {
  description = "Whether a Public IP address is associated with the instance."
  value       = aws_launch_configuration.aws_launch_configuration.associate_public_ip_address
}
output "delete_on_termination" {
  description = "Whether the EBS Volume will be deleted on instance termination."
  value       = aws_launch_configuration.aws_launch_configuration.delete_on_termination
}
output "ebs_optimized" {
  description = "Whether the launched EC2 instance will be EBS-optimized."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_optimized
}
output "name" {
  description = "Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.name
}
output "no_device" {
  description = "Whether the device in the block device mapping of the AMI is suppressed."
  value       = aws_launch_configuration.aws_launch_configuration.no_device
}
output "placement_tenancy" {
  description = "Tenancy of the instance.root_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.placement_tenancy
}
output "snapshot_id" {
  description = "Snapshot ID of the mount."
  value       = aws_launch_configuration.aws_launch_configuration.snapshot_id
}
output "volume_size" {
  description = "Size of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.volume_size
}
output "iops" {
  description = "Provisioned IOPs of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.iops
}
output "spot_price" {
  description = "Price to use for reserving Spot instances."
  value       = aws_launch_configuration.aws_launch_configuration.spot_price
}
output "vpc_classic_link_id" {
  description = "ID of a ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_id
}
output "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  value       = aws_launch_configuration.aws_launch_configuration.http_put_response_hop_limit
}
output "key_name" {
  description = "Key Name that should be used for the instance."
  value       = aws_launch_configuration.aws_launch_configuration.key_name
}
output "security_groups" {
  description = "List of associated Security Group IDS."
  value       = aws_launch_configuration.aws_launch_configuration.security_groups
}
output "throughput" {
  description = "Throughput of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.throughput
}
output "volume_type" {
  description = "Type of the volume.ephemeral_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.volume_type
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
