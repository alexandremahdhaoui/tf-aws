datasource "aws_imagebuilder_container_recipe" "aws_imagebuilder_container_recipe" {
  owner                    = var.owner
  virtual_name             = var.virtual_name
  ebs                      = var.ebs
  name                     = var.name
  snapshot_id              = var.snapshot_id
  repository_name          = var.repository_name
  version                  = var.version
  arn                      = var.arn
  date_created             = var.date_created
  dockerfile_template_data = var.dockerfile_template_data
  platform                 = var.platform
  component                = var.component
  image                    = var.image
  volume_size              = var.volume_size
  delete_on_termination    = var.delete_on_termination
  parameter                = var.parameter
  tags                     = var.tags
  value                    = var.value
  block_device_mapping     = var.block_device_mapping
  container_type           = var.container_type
  description              = var.description
  device_name              = var.device_name
  target_repository        = var.target_repository
  throughput               = var.throughput
  component_arn            = var.component_arn
  encrypted                = var.encrypted
  instance_configuration   = var.instance_configuration
  service                  = var.service
  volume_type              = var.volume_type
  iops                     = var.iops
  kms_key_id               = var.kms_key_id
  no_device                = var.no_device
  parent_image             = var.parent_image
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  type        = string
}
variable "kms_key_id" {
  description = "KMS key used to encrypt the container image."
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
variable "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  type        = string
}
variable "owner" {
  description = "Owner of the container recipe."
  type        = string
}
variable "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  type        = string
}
variable "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  type        = string
}
variable "name" {
  description = "Name of the container recipe."
  type        = string
}
variable "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the container recipe.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "date_created" {
  description = "Date the container recipe was created."
  type        = string
}
variable "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  type        = string
}
variable "platform" {
  description = "Platform of the container recipe."
  type        = string
}
variable "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  type        = string
}
variable "version" {
  description = "Version of the container recipe."
  type        = string
}
variable "component" {
  description = "List of objects with components for the container recipe.\n"
  type        = string
}
variable "image" {
  description = "AMI ID of the base image for container build and test instance."
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
variable "parameter" {
  description = ""
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the container recipe."
  type        = string
}
variable "block_device_mapping" {
  description = ""
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
variable "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
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
variable "instance_configuration" {
  description = ""
  type        = string
}
variable "service" {
  description = "Service in which this image is registered."
  type        = string
}
variable "target_repository" {
  description = ""
  type        = string
}
variable "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  type        = string
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "parent_image" {
  description = "Base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "name" {
  description = "Name of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "version" {
  description = "Version of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
}
output "arn" {
  description = "(Required) ARN of the container recipe.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.arn
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "component" {
  description = "List of objects with components for the container recipe.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "image" {
  description = "AMI ID of the base image for container build and test instance."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "parameter" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "tags" {
  description = "Key-value map of resource tags for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "block_device_mapping" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "container_type" {
  description = "Type of the container."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "description" {
  description = "Description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "instance_configuration" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "service" {
  description = "Service in which this image is registered."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "target_repository" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
}
output "delete_on_termination" {
  description = "Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "kms_key_id" {
  description = "KMS key used to encrypt the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "ebs" {
  description = "Single list of object with Elastic Block Storage (EBS) block device mapping settings.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "tags" {
  description = "Key-value map of resource tags for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "component" {
  description = "List of objects with components for the container recipe.\n"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "device_name" {
  description = "Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "name" {
  description = "Name of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "snapshot_id" {
  description = "Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "volume_type" {
  description = "Type of the volume. For example, gp2 or io2."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "version" {
  description = "Version of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
}
output "component_arn" {
  description = "ARN of the Image Builder Component."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "iops" {
  description = "Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "no_device" {
  description = "Whether to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "service" {
  description = "Service in which this image is registered."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "encrypted" {
  description = "Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "instance_configuration" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "repository_name" {
  description = "Name of the container repository where the output container image is stored. The name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "throughput" {
  description = "For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "block_device_mapping" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "dockerfile_template_data" {
  description = "Dockerfile template used to build the image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "parent_image" {
  description = "Base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "virtual_name" {
  description = "Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "value" {
  description = "Value of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "container_type" {
  description = "Type of the container."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "description" {
  description = "Description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
}
output "image" {
  description = "AMI ID of the base image for container build and test instance."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "parameter" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "target_repository" {
  description = ""
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
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
