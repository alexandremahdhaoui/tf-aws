datasource "aws_imagebuilder_container_recipe" "aws_imagebuilder_container_recipe" {
  container_type           = var.container_type
  description              = var.description
  dockerfile_template_data = var.dockerfile_template_data
  encrypted                = var.encrypted
  owner                    = var.owner
  parameter                = var.parameter
  platform                 = var.platform
  block_device_mapping     = var.block_device_mapping
  component_arn            = var.component_arn
  date_created             = var.date_created
  throughput               = var.throughput
  arn                      = var.arn
  device_name              = var.device_name
  ebs                      = var.ebs
  service                  = var.service
  version                  = var.version
  volume_size              = var.volume_size
  delete_on_termination    = var.delete_on_termination
  no_device                = var.no_device
  parent_image             = var.parent_image
  name                     = var.name
  image                    = var.image
  iops                     = var.iops
  snapshot_id              = var.snapshot_id
  tags                     = var.tags
  component                = var.component
  target_repository        = var.target_repository
  value                    = var.value
  virtual_name             = var.virtual_name
  repository_name          = var.repository_name
  kms_key_id               = var.kms_key_id
  volume_type              = var.volume_type
  instance_configuration   = var.instance_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "instance_configuration" {
  description = "List of objects with instance configurations for building and testing container images.\n"
  type        = string
}
variable "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  type        = string
}
variable "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  type        = string
}
variable "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "owner" {
  description = "Owner of the container recipe."
  type        = string
}
variable "parameter" {
  description = ""
  type        = string
}
variable "platform" {
  description = "Platform of the container recipe."
  type        = string
}
variable "block_device_mapping" {
  description = "Set of objects with block device mappings for the instance configuration.\n"
  type        = string
}
variable "container_type" {
  description = "Type of the container."
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
variable "arn" {
  description = "(Required) ARN of the container recipe.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "component_arn" {
  description = "ARN of the Image Builder Component."
  type        = string
}
variable "date_created" {
  description = "Date the container recipe was created."
  type        = string
}
variable "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  type        = string
}
variable "version" {
  description = "Version of the container recipe."
  type        = string
}
variable "volume_size" {
  description = "Size of the volume, in GiB."
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
variable "ebs" {
  description = ""
  type        = string
}
variable "service" {
  description = "Service in which this image is registered."
  type        = string
}
variable "name" {
  description = "Name of the container recipe."
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
variable "tags" {
  description = "Key-value map of resource tags for the container recipe."
  type        = string
}
variable "component" {
  description = ""
  type        = string
}
variable "image" {
  description = "AMI ID of the base image for container build and test instance."
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
variable "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  type        = string
}
variable "target_repository" {
  description = "Destination repository for the container image.\n"
  type        = string
}
variable "value" {
  description = "Value of the component parameter."
  type        = string
}
variable "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  type        = string
}
output "parent_image" {
  description = "Base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "name" {
  description = "Name of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "tags" {
  description = "Key-value map of resource tags for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "component" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "image" {
  description = "AMI ID of the base image for container build and test instance."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "target_repository" {
  description = "Destination repository for the container image.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "instance_configuration" {
  description = "List of objects with instance configurations for building and testing container images.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "description" {
  description = "Description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
}
output "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "parameter" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the instance configuration.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "container_type" {
  description = "Type of the container."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "arn" {
  description = "(Required) ARN of the container recipe.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.arn
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "ebs" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "service" {
  description = "Service in which this image is registered."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "version" {
  description = "Version of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "parent_image" {
  description = "Base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "service" {
  description = "Service in which this image is registered."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "tags" {
  description = "Key-value map of resource tags for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "description" {
  description = "Description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
}
output "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "parameter" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "component" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "image" {
  description = "AMI ID of the base image for container build and test instance."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "name" {
  description = "Name of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "container_type" {
  description = "Type of the container."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "target_repository" {
  description = "Destination repository for the container image.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
}
output "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "ebs" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "block_device_mapping" {
  description = "Set of objects with block device mappings for the instance configuration.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "instance_configuration" {
  description = "List of objects with instance configurations for building and testing container images.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "version" {
  description = "Version of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
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
