datasource "aws_imagebuilder_image_recipe" "aws_imagebuilder_image_recipe" {
  ebs                   = var.ebs
  encrypted             = var.encrypted
  owner                 = var.owner
  virtual_name          = var.virtual_name
  block_device_mapping  = var.block_device_mapping
  no_device             = var.no_device
  throughput            = var.throughput
  user_data_base64      = var.user_data_base64
  component             = var.component
  delete_on_termination = var.delete_on_termination
  device_name           = var.device_name
  parent_image          = var.parent_image
  description           = var.description
  iops                  = var.iops
  tags                  = var.tags
  value                 = var.value
  volume_size           = var.volume_size
  arn                   = var.arn
  kms_key_id            = var.kms_key_id
  name                  = var.name
  parameter             = var.parameter
  platform              = var.platform
  snapshot_id           = var.snapshot_id
  version               = var.version
  component_arn         = var.component_arn
  date_created          = var.date_created
  volume_type           = var.volume_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  type        = string
}
variable "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  type        = string
}
variable "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  type        = string
}
variable "no_device" {
  description = "Whether to remove a mapping from the parent image."
  type        = string
}
variable "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  type        = string
}
variable "component" {
  description = "List of objects with components for the image recipe.\n"
  type        = string
}
variable "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  type        = string
}
variable "parent_image" {
  description = "Base image of the image recipe."
  type        = string
}
variable "description" {
  description = "Description of the image recipe."
  type        = string
}
variable "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the image recipe."
  type        = string
}
variable "value" {
  description = "Value of the component parameter."
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
variable "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
  type        = string
}
variable "name" {
  description = "Name of the image recipe."
  type        = string
}
variable "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  type        = string
}
variable "version" {
  description = "Version of the image recipe."
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
variable "component_arn" {
  description = "ARN of the Image Builder Component."
  type        = string
}
variable "date_created" {
  description = "Date the image recipe was created."
  type        = string
}
variable "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  type        = string
}
variable "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  type        = string
}
variable "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "owner" {
  description = "Owner of the image recipe."
  type        = string
}
output "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) ARN of the image recipe.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Version of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.ebs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.user_data_base64
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.block_device_mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_image" {
  description = "Base image of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parent_image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component" {
  description = "List of objects with components for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.block_device_mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter" {
  description = "Set of parameters that are used to configure the component.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_image" {
  description = "Base image of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parent_image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data_base64" {
  description = "Base64 encoded contents of user data. Commands or a command script to run when build instance is launched."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.user_data_base64
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.ebs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Version of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component" {
  description = "List of objects with components for the image recipe.\n"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.iops
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
