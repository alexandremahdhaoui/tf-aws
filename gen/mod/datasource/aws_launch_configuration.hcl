datasource "aws_launch_configuration" "aws_launch_configuration" {
  ebs_block_device                 = var.ebs_block_device
  enable_monitoring                = var.enable_monitoring
  http_put_response_hop_limit      = var.http_put_response_hop_limit
  id                               = var.id
  root_block_device                = var.root_block_device
  associate_public_ip_address      = var.associate_public_ip_address
  spot_price                       = var.spot_price
  volume_size                      = var.volume_size
  key_name                         = var.key_name
  no_device                        = var.no_device
  placement_tenancy                = var.placement_tenancy
  ebs_optimized                    = var.ebs_optimized
  iam_instance_profile             = var.iam_instance_profile
  image_id                         = var.image_id
  name                             = var.name
  vpc_classic_link_id              = var.vpc_classic_link_id
  delete_on_termination            = var.delete_on_termination
  ephemeral_block_device           = var.ephemeral_block_device
  iops                             = var.iops
  security_groups                  = var.security_groups
  encrypted                        = var.encrypted
  http_tokens                      = var.http_tokens
  instance_type                    = var.instance_type
  volume_type                      = var.volume_type
  vpc_classic_link_security_groups = var.vpc_classic_link_security_groups
  http_endpoint                    = var.http_endpoint
  snapshot_id                      = var.snapshot_id
  user_data                        = var.user_data
  arn                              = var.arn
  device_name                      = var.device_name
  metadata_options                 = var.metadata_options
  throughput                       = var.throughput
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "delete_on_termination" {
  description = "Whether the EBS Volume will be deleted on instance termination."
  type        = string
}
variable "ephemeral_block_device" {
  description = "The Ephemeral volumes on the instance."
  type        = string
}
variable "iops" {
  description = "Provisioned IOPs of the volume."
  type        = string
}
variable "security_groups" {
  description = "List of associated Security Group IDS."
  type        = string
}
variable "vpc_classic_link_security_groups" {
  description = "The IDs of one or more Security Groups for the specified ClassicLink-enabled VPC."
  type        = string
}
variable "encrypted" {
  description = "Whether the volume is Encrypted."
  type        = string
}
variable "http_tokens" {
  description = "If session tokens are required: optional, required."
  type        = string
}
variable "instance_type" {
  description = "Instance Type of the instance to launch."
  type        = string
}
variable "volume_type" {
  description = "Type of the volume.ephemeral_block_device is exported with the following attributes:"
  type        = string
}
variable "http_endpoint" {
  description = "State of the metadata service: enabled, disabled."
  type        = string
}
variable "snapshot_id" {
  description = "Snapshot ID of the mount."
  type        = string
}
variable "user_data" {
  description = "User Data of the instance."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the launch configuration."
  type        = string
}
variable "device_name" {
  description = "Name of the device."
  type        = string
}
variable "metadata_options" {
  description = ""
  type        = string
}
variable "throughput" {
  description = "Throughput of the volume."
  type        = string
}
variable "root_block_device" {
  description = "Root Block Device of the instance."
  type        = string
}
variable "ebs_block_device" {
  description = "EBS Block Devices attached to the instance."
  type        = string
}
variable "enable_monitoring" {
  description = "Whether Detailed Monitoring is Enabled."
  type        = string
}
variable "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  type        = string
}
variable "id" {
  description = "ID of the launch configuration."
  type        = string
}
variable "associate_public_ip_address" {
  description = "Whether a Public IP address is associated with the instance."
  type        = string
}
variable "spot_price" {
  description = "Price to use for reserving Spot instances."
  type        = string
}
variable "volume_size" {
  description = "Size of the volume."
  type        = string
}
variable "key_name" {
  description = "Key Name that should be used for the instance."
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
variable "vpc_classic_link_id" {
  description = "ID of a ClassicLink-enabled VPC."
  type        = string
}
variable "ebs_optimized" {
  description = "Whether the launched EC2 instance will be EBS-optimized."
  type        = string
}
variable "iam_instance_profile" {
  description = "The IAM Instance Profile to associate with launched instances."
  type        = string
}
variable "image_id" {
  description = "EC2 Image ID of the instance."
  type        = string
}
variable "name" {
  description = "Name of the launch configuration."
  type        = string
}
output "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  value       = aws_launch_configuration.aws_launch_configuration.http_put_response_hop_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_block_device" {
  description = "Root Block Device of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.root_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_block_device" {
  description = "EBS Block Devices attached to the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_monitoring" {
  description = "Whether Detailed Monitoring is Enabled."
  value       = aws_launch_configuration.aws_launch_configuration.enable_monitoring
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associate_public_ip_address" {
  description = "Whether a Public IP address is associated with the instance."
  value       = aws_launch_configuration.aws_launch_configuration.associate_public_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_price" {
  description = "Price to use for reserving Spot instances."
  value       = aws_launch_configuration.aws_launch_configuration.spot_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_tenancy" {
  description = "Tenancy of the instance.root_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.placement_tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_name" {
  description = "Key Name that should be used for the instance."
  value       = aws_launch_configuration.aws_launch_configuration.key_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "Whether the device in the block device mapping of the AMI is suppressed."
  value       = aws_launch_configuration.aws_launch_configuration.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_id" {
  description = "EC2 Image ID of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.image_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_classic_link_id" {
  description = "ID of a ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_optimized" {
  description = "Whether the launched EC2 instance will be EBS-optimized."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_optimized
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_instance_profile" {
  description = "The IAM Instance Profile to associate with launched instances."
  value       = aws_launch_configuration.aws_launch_configuration.iam_instance_profile
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Provisioned IOPs of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_groups" {
  description = "List of associated Security Group IDS."
  value       = aws_launch_configuration.aws_launch_configuration.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "Whether the EBS Volume will be deleted on instance termination."
  value       = aws_launch_configuration.aws_launch_configuration.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_block_device" {
  description = "The Ephemeral volumes on the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ephemeral_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "Instance Type of the instance to launch."
  value       = aws_launch_configuration.aws_launch_configuration.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of the volume.ephemeral_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_classic_link_security_groups" {
  description = "The IDs of one or more Security Groups for the specified ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether the volume is Encrypted."
  value       = aws_launch_configuration.aws_launch_configuration.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_tokens" {
  description = "If session tokens are required: optional, required."
  value       = aws_launch_configuration.aws_launch_configuration.http_tokens
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data" {
  description = "User Data of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.user_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_endpoint" {
  description = "State of the metadata service: enabled, disabled."
  value       = aws_launch_configuration.aws_launch_configuration.http_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Snapshot ID of the mount."
  value       = aws_launch_configuration.aws_launch_configuration.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metadata_options" {
  description = ""
  value       = aws_launch_configuration.aws_launch_configuration.metadata_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "Throughput of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Name of the device."
  value       = aws_launch_configuration.aws_launch_configuration.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_monitoring" {
  description = "Whether Detailed Monitoring is Enabled."
  value       = aws_launch_configuration.aws_launch_configuration.enable_monitoring
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_block_device" {
  description = "The Ephemeral volumes on the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ephemeral_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_price" {
  description = "Price to use for reserving Spot instances."
  value       = aws_launch_configuration.aws_launch_configuration.spot_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associate_public_ip_address" {
  description = "Whether a Public IP address is associated with the instance."
  value       = aws_launch_configuration.aws_launch_configuration.associate_public_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_optimized" {
  description = "Whether the launched EC2 instance will be EBS-optimized."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_optimized
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Provisioned IOPs of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_name" {
  description = "Key Name that should be used for the instance."
  value       = aws_launch_configuration.aws_launch_configuration.key_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "Whether the device in the block device mapping of the AMI is suppressed."
  value       = aws_launch_configuration.aws_launch_configuration.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data" {
  description = "User Data of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.user_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether the volume is Encrypted."
  value       = aws_launch_configuration.aws_launch_configuration.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  value       = aws_launch_configuration.aws_launch_configuration.http_put_response_hop_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_instance_profile" {
  description = "The IAM Instance Profile to associate with launched instances."
  value       = aws_launch_configuration.aws_launch_configuration.iam_instance_profile
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_classic_link_security_groups" {
  description = "The IDs of one or more Security Groups for the specified ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_id" {
  description = "EC2 Image ID of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.image_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_tokens" {
  description = "If session tokens are required: optional, required."
  value       = aws_launch_configuration.aws_launch_configuration.http_tokens
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_block_device" {
  description = "EBS Block Devices attached to the instance."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_block_device" {
  description = "Root Block Device of the instance."
  value       = aws_launch_configuration.aws_launch_configuration.root_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metadata_options" {
  description = ""
  value       = aws_launch_configuration.aws_launch_configuration.metadata_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_tenancy" {
  description = "Tenancy of the instance.root_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.placement_tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "Instance Type of the instance to launch."
  value       = aws_launch_configuration.aws_launch_configuration.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_groups" {
  description = "List of associated Security Group IDS."
  value       = aws_launch_configuration.aws_launch_configuration.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "Throughput of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Name of the device."
  value       = aws_launch_configuration.aws_launch_configuration.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_endpoint" {
  description = "State of the metadata service: enabled, disabled."
  value       = aws_launch_configuration.aws_launch_configuration.http_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of the volume."
  value       = aws_launch_configuration.aws_launch_configuration.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of the volume.ephemeral_block_device is exported with the following attributes:"
  value       = aws_launch_configuration.aws_launch_configuration.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_classic_link_id" {
  description = "ID of a ClassicLink-enabled VPC."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "Whether the EBS Volume will be deleted on instance termination."
  value       = aws_launch_configuration.aws_launch_configuration.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Snapshot ID of the mount."
  value       = aws_launch_configuration.aws_launch_configuration.snapshot_id
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
