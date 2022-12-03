datasource "aws_imagebuilder_image_recipe" "aws_imagebuilder_image_recipe" {
  iops                  = var.iops
  volume_type           = var.volume_type
  value                 = var.value
  device_name           = var.device_name
  ebs                   = var.ebs
  parameter             = var.parameter
  volume_size           = var.volume_size
  component_arn         = var.component_arn
  encrypted             = var.encrypted
  user_data_base64      = var.user_data_base64
  date_created          = var.date_created
  no_device             = var.no_device
  tags                  = var.tags
  arn                   = var.arn
  block_device_mapping  = var.block_device_mapping
  component             = var.component
  version               = var.version
  delete_on_termination = var.delete_on_termination
  name                  = var.name
  owner                 = var.owner
  description           = var.description
  platform              = var.platform
  snapshot_id           = var.snapshot_id
  kms_key_id            = var.kms_key_id
  parent_image          = var.parent_image
  throughput            = var.throughput
  virtual_name          = var.virtual_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of the image recipe."
  type        = string
}
variable "platform" {
  description = "Platform of the image recipe."
  type        = string
}
variable "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  type        = string
}
variable "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
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
variable "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  type        = string
}
variable "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  type        = string
}
variable "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  type        = string
}
variable "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  type        = string
}
variable "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  type        = string
}
variable "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  type        = string
}
variable "value" {
  description = "Value of the component parameter."
  type        = string
}
variable "component_arn" {
  description = "ARN of the Image Builder Component."
  type        = string
}
variable "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  type        = string
}
variable "volume_size" {
  description = "Size of the volume, in GiB."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the image recipe.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  type        = string
}
variable "component" {
  description = "List of objects with components for the image recipe.\n"
  type        = string
}
variable "date_created" {
  description = "Date the image recipe was created."
  type        = string
}
variable "no_device" {
  description = "Whether to remove a mapping from the parent image."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the image recipe."
  type        = string
}
variable "version" {
  description = "Version of the image recipe."
  type        = string
}
variable "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "name" {
  description = "Name of the image recipe."
  type        = string
}
variable "owner" {
  description = "Owner of the image recipe."
  type        = string
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.snapshot_id
}
output "description" {
  description = "Description of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.description
}
output "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.kms_key_id
}
output "parent_image" {
  description = "Base image of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parent_image
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.virtual_name
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.throughput
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_type
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.iops
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.ebs
}
output "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parameter
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.value
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.device_name
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.encrypted
}
output "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.user_data_base64
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_size
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component_arn
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.block_device_mapping
}
output "component" {
  description = "List of objects with components for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.no_device
}
output "tags" {
  description = "Key-value map of resource tags for the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags
}
output "arn" {
  description = "(Required) ARN of the image recipe.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.arn
}
output "version" {
  description = "Version of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.version
}
output "name" {
  description = "Name of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.name
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.delete_on_termination
}
output "parent_image" {
  description = "Base image of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parent_image
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.snapshot_id
}
output "tags" {
  description = "Key-value map of resource tags for the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags
}
output "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.user_data_base64
}
output "version" {
  description = "Version of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.version
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.block_device_mapping
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.ebs
}
output "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parameter
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
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.virtual_name
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_size
}
output "description" {
  description = "Description of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.description
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.device_name
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.iops
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_type
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.throughput
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.delete_on_termination
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.encrypted
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.value
}
output "component" {
  description = "List of objects with components for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component_arn
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
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
