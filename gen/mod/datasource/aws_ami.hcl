datasource "aws_ami" "aws_ami" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_id" {
  description = "ID of the AMI. Should be the same as the resource id."
  value       = aws_ami.aws_ami.image_id
}
output "image_owner_alias" {
  description = "AWS account alias (for example, amazon, self"
  value       = aws_ami.aws_ami.image_owner_alias
}
output "image_type" {
  description = "Type of image."
  value       = aws_ami.aws_ami.image_type
}
output "ramdisk_id" {
  description = "RAM disk associated with the image, if any. Only applicable\nfor machine images."
  value       = aws_ami.aws_ami.ramdisk_id
}
output "root_device_type" {
  description = "Type of root device (ie: ebs or instance-store)."
  value       = aws_ami.aws_ami.root_device_type
}
output "volume_size" {
  description = "The size of the volume, in GiB."
  value       = aws_ami.aws_ami.volume_size
}
output "block_device_mappings" {
  description = "Set of objects with block device mappings of the AMI.\n"
  value       = aws_ami.aws_ami.block_device_mappings
}
output "creation_date" {
  description = "Date and time the image was created."
  value       = aws_ami.aws_ami.creation_date
}
output "deprecation_time" {
  description = "Date and time when the image will be deprecated."
  value       = aws_ami.aws_ami.deprecation_time
}
output "ebs" {
  description = "Map containing EBS information, if the device is EBS based. Unlike most object attributes, these are accessed directly (e.g., ebs.volume_size or ebs[\"volume_size\"]) rather than accessed through the first element of a list (e.g., ebs[0].volume_size"
  value       = aws_ami.aws_ami.ebs
}
output "tags" {
  description = "Any tags assigned to the image.\n"
  value       = aws_ami.aws_ami.tags
}
output "virtual_name" {
  description = "Virtual device name (for instance stores)."
  value       = aws_ami.aws_ami.virtual_name
}
output "boot_mode" {
  description = "Boot mode of the image."
  value       = aws_ami.aws_ami.boot_mode
}
output "device_name" {
  description = "Physical name of the device."
  value       = aws_ami.aws_ami.device_name
}
output "ena_support" {
  description = "Whether enhanced networking with ENA is enabled.TimeoutsConfiguration options:"
  value       = aws_ami.aws_ami.ena_support
}
output "kernel_id" {
  description = ""
  value       = aws_ami.aws_ami.kernel_id
}
output "owner_id" {
  description = "AWS account ID of the image owner."
  value       = aws_ami.aws_ami.owner_id
}
output "sriov_net_support" {
  description = "Whether enhanced networking is enabled."
  value       = aws_ami.aws_ami.sriov_net_support
}
output "state_reason.code" {
  description = "The reason code for the state change."
  value       = aws_ami.aws_ami.state_reason.code
}
output "tpm_support" {
  description = "If the image is configured for NitroTPM support, the value is v2.0."
  value       = aws_ami.aws_ami.tpm_support
}
output "usage_operation" {
  description = "Operation of the Amazon EC2 instance and the billing code that is associated with the AMI."
  value       = aws_ami.aws_ami.usage_operation
}
output "platform" {
  description = "Value is Windows for Windows AMIs; otherwise blank."
  value       = aws_ami.aws_ami.platform
}
output "platform_details" {
  description = "Platform details associated with the billing code of the AMI."
  value       = aws_ami.aws_ami.platform_details
}
output "product_codes.#.product_code_type" {
  description = "The type of product code."
  value       = aws_ami.aws_ami.product_codes.#.product_code_type
}
output "tags.#.value" {
  description = "Value of the tag."
  value       = aws_ami.aws_ami.tags.#.value
}
output "image_location" {
  description = "Location of the AMI."
  value       = aws_ami.aws_ami.image_location
}
output "product_codes" {
  description = ""
  value       = aws_ami.aws_ami.product_codes
}
output "root_snapshot_id" {
  description = "Snapshot id associated with the root device, if any\n(only applies to ebs root devices)."
  value       = aws_ami.aws_ami.root_snapshot_id
}
output "state_reason" {
  description = "Describes a state change. Fields are UNSET"
  value       = aws_ami.aws_ami.state_reason
}
output "state_reason.message" {
  description = "The message for the state change."
  value       = aws_ami.aws_ami.state_reason.message
}
output "description" {
  description = ""
  value       = aws_ami.aws_ami.description
}
output "encrypted" {
  description = "true if the EBS volume is encrypted."
  value       = aws_ami.aws_ami.encrypted
}
output "hypervisor" {
  description = "Hypervisor type of the image."
  value       = aws_ami.aws_ami.hypervisor
}
output "state" {
  description = "Current state of the AMI. If the state is available"
  value       = aws_ami.aws_ami.state
}
output "virtualization_type" {
  description = "Type of virtualization of the AMI (ie: hvmparavirtual)."
  value       = aws_ami.aws_ami.virtualization_type
}
output "volume_type" {
  description = "The volume type."
  value       = aws_ami.aws_ami.volume_type
}
output "delete_on_termination" {
  description = "true if the EBS volume will be deleted on termination."
  value       = aws_ami.aws_ami.delete_on_termination
}
output "iops" {
  description = "0 if the EBS volume is not a provisioned IOPS image, otherwise the supported IOPS count."
  value       = aws_ami.aws_ami.iops
}
output "snapshot_id" {
  description = "The ID of the snapshot."
  value       = aws_ami.aws_ami.snapshot_id
}
output "tags.#.key" {
  description = "Key name of the tag."
  value       = aws_ami.aws_ami.tags.#.key
}
output "throughput" {
  description = "The throughput that the EBS volume supports, in MiB/s."
  value       = aws_ami.aws_ami.throughput
}
output "architecture" {
  description = "OS architecture of the AMI (ie: i386 or x86_64)."
  value       = aws_ami.aws_ami.architecture
}
output "arn" {
  description = "ARN of the AMI."
  value       = aws_ami.aws_ami.arn
}
output "imds_support" {
  description = "Instance Metadata Service (IMDS) support mode for the image. Set to v2.0 if instances ran from this image enforce IMDSv2."
  value       = aws_ami.aws_ami.imds_support
}
output "name" {
  description = "Name of the AMI that was provided during image creation."
  value       = aws_ami.aws_ami.name
}
output "no_device" {
  description = "Suppresses the specified device included in the block device mapping of the AMI."
  value       = aws_ami.aws_ami.no_device
}
output "product_codes.#.product_code_id" {
  description = "The product code."
  value       = aws_ami.aws_ami.product_codes.#.product_code_id
}
output "public" {
  description = "true if the image has public launch permissions."
  value       = aws_ami.aws_ami.public
}
output "root_device_name" {
  description = "Device name of the root device."
  value       = aws_ami.aws_ami.root_device_name
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
