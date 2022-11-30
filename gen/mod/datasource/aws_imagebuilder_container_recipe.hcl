datasource "aws_imagebuilder_container_recipe" "aws_imagebuilder_container_recipe" {
  encrypted                = var.encrypted
  parameter                = var.parameter
  throughput               = var.throughput
  owner                    = var.owner
  description              = var.description
  dockerfile_template_data = var.dockerfile_template_data
  image                    = var.image
  volume_type              = var.volume_type
  container_type           = var.container_type
  name                     = var.name
  version                  = var.version
  service                  = var.service
  tags                     = var.tags
  component_arn            = var.component_arn
  delete_on_termination    = var.delete_on_termination
  platform                 = var.platform
  no_device                = var.no_device
  parent_image             = var.parent_image
  component                = var.component
  date_created             = var.date_created
  iops                     = var.iops
  kms_key_id               = var.kms_key_id
  snapshot_id              = var.snapshot_id
  target_repository        = var.target_repository
  volume_size              = var.volume_size
  arn                      = var.arn
  block_device_mapping     = var.block_device_mapping
  device_name              = var.device_name
  ebs                      = var.ebs
  repository_name          = var.repository_name
  value                    = var.value
  instance_configuration   = var.instance_configuration
  virtual_name             = var.virtual_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of the container recipe."
  type        = string
}
variable "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  type        = string
}
variable "image" {
  description = "AMI ID of the base image for container build and test instance."
  type        = string
}
variable "owner" {
  description = "Owner of the container recipe."
  type        = string
}
variable "container_type" {
  description = "Type of the container."
  type        = string
}
variable "name" {
  description = "Name of the container recipe."
  type        = string
}
variable "version" {
  description = "Version of the container recipe."
  type        = string
}
variable "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  type        = string
}
variable "component_arn" {
  description = "ARN of the Image Builder Component."
  type        = string
}
variable "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "platform" {
  description = "Platform of the container recipe."
  type        = string
}
variable "service" {
  description = "Service in which this image is registered."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the container recipe."
  type        = string
}
variable "component" {
  description = "List of objects with components for the container recipe.\n"
  type        = string
}
variable "date_created" {
  description = "Date the container recipe was created."
  type        = string
}
variable "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  type        = string
}
variable "no_device" {
  description = "Whether to remove a mapping from the parent image."
  type        = string
}
variable "parent_image" {
  description = "Base image for the container recipe."
  type        = string
}
variable "target_repository" {
  description = ""
  type        = string
}
variable "volume_size" {
  description = "Size of the volume, in GiB."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the container recipe.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "block_device_mapping" {
  description = ""
  type        = string
}
variable "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  type        = string
}
variable "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  type        = string
}
variable "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  type        = string
}
variable "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  type        = string
}
variable "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  type        = string
}
variable "value" {
  description = "Value of the component parameter."
  type        = string
}
variable "instance_configuration" {
  description = ""
  type        = string
}
variable "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  type        = string
}
variable "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "parameter" {
  description = ""
  type        = string
}
variable "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  type        = string
}
output "name" {
  description = "Name of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Version of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_type" {
  description = "Type of the container."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service" {
  description = "Service in which this image is registered."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_image" {
  description = "Base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component" {
  description = "List of objects with components for the container recipe.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_device_mapping" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_repository" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) ARN of the container recipe.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_configuration" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "AMI ID of the base image for container build and test instance."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component" {
  description = "List of objects with components for the container recipe.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_configuration" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "AMI ID of the base image for container build and test instance."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Version of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_image" {
  description = "Base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_repository" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_device_mapping" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service" {
  description = "Service in which this image is registered."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_type" {
  description = "Type of the container."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
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
