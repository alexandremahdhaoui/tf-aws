datasource "aws_imagebuilder_image_recipe" "aws_imagebuilder_image_recipe" {
  volume_type           = var.volume_type
  iops                  = var.iops
  snapshot_id           = var.snapshot_id
  delete_on_termination = var.delete_on_termination
  encrypted             = var.encrypted
  arn                   = var.arn
  component             = var.component
  kms_key_id            = var.kms_key_id
  no_device             = var.no_device
  user_data_base64      = var.user_data_base64
  ebs                   = var.ebs
  owner                 = var.owner
  name                  = var.name
  tags                  = var.tags
  virtual_name          = var.virtual_name
  date_created          = var.date_created
  device_name           = var.device_name
  volume_size           = var.volume_size
  version               = var.version
  block_device_mapping  = var.block_device_mapping
  component_arn         = var.component_arn
  parameter             = var.parameter
  platform              = var.platform
  throughput            = var.throughput
  value                 = var.value
  description           = var.description
  parent_image          = var.parent_image
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the image recipe.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "component" {
  description = "List of objects with components for the image recipe.\n"
  type        = string
}
variable "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
  type        = string
}
variable "no_device" {
  description = "Whether to remove a mapping from the parent image."
  type        = string
}
variable "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  type        = string
}
variable "owner" {
  description = "Owner of the image recipe."
  type        = string
}
variable "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  type        = string
}
variable "name" {
  description = "Name of the image recipe."
  type        = string
}
variable "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  type        = string
}
variable "date_created" {
  description = "Date the image recipe was created."
  type        = string
}
variable "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the image recipe."
  type        = string
}
variable "volume_size" {
  description = "Size of the volume, in GiB."
  type        = string
}
variable "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  type        = string
}
variable "component_arn" {
  description = "ARN of the Image Builder Component."
  type        = string
}
variable "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  type        = string
}
variable "platform" {
  description = "Platform of the image recipe."
  type        = string
}
variable "version" {
  description = "Version of the image recipe."
  type        = string
}
variable "description" {
  description = "Description of the image recipe."
  type        = string
}
variable "parent_image" {
  description = "Base image of the image recipe."
  type        = string
}
variable "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  type        = string
}
variable "value" {
  description = "Value of the component parameter."
  type        = string
}
variable "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  type        = string
}
variable "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  type        = string
}
variable "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  type        = string
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.virtual_name
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.device_name
}
output "tags" {
  description = "Key-value map of resource tags for the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_size
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.block_device_mapping
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component_arn
}
output "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parameter
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "version" {
  description = "Version of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.version
}
output "description" {
  description = "Description of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.description
}
output "parent_image" {
  description = "Base image of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parent_image
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.throughput
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.value
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_type
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.delete_on_termination
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.encrypted
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.iops
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.snapshot_id
}
output "arn" {
  description = "(Required) ARN of the image recipe.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.arn
}
output "component" {
  description = "List of objects with components for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component
}
output "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.kms_key_id
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.no_device
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.ebs
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.user_data_base64
}
output "name" {
  description = "Name of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.name
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.ebs
}
output "parent_image" {
  description = "Base image of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parent_image
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.value
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_size
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
}
output "description" {
  description = "Description of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.description
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.device_name
}
output "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.kms_key_id
}
output "name" {
  description = "Name of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.name
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.no_device
}
output "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parameter
}
output "tags" {
  description = "Key-value map of resource tags for the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.block_device_mapping
}
output "component" {
  description = "List of objects with components for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.iops
}
output "version" {
  description = "Version of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.version
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.virtual_name
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.snapshot_id
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.throughput
}
output "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.user_data_base64
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component_arn
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.delete_on_termination
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.encrypted
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_type
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
