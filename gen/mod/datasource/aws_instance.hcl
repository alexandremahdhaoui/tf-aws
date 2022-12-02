datasource "aws_instance" "aws_instance" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "Throughput of the volume, in MiB/s."
  value       = aws_instance.aws_instance.throughput
}
output "availability_zone" {
  description = "Availability zone of the Instance."
  value       = aws_instance.aws_instance.availability_zone
}
output "device_name" {
  description = "Physical name of the device."
  value       = aws_instance.aws_instance.device_name
}
output "hostname_type" {
  description = "Type of hostname for EC2 instances."
  value       = aws_instance.aws_instance.hostname_type
}
output "public_ip" {
  description = "Public IP address assigned to the Instance, if applicable. strongNOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use public_ip, as this field will change after the EIP is attached."
  value       = aws_instance.aws_instance.public_ip
}
output "password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if get_password_data is true. See GetPasswordData for more information."
  value       = aws_instance.aws_instance.password_data
}
output "root_block_device" {
  description = "Root block device mappings of the Instance\n"
  value       = aws_instance.aws_instance.root_block_device
}
output "private_dns_name_options" {
  description = ""
  value       = aws_instance.aws_instance.private_dns_name_options
}
output "volume_type" {
  description = "Type of the volume."
  value       = aws_instance.aws_instance.volume_type
}
output "disable_api_termination" {
  description = "Whether or not EC2 Instance Termination Protection is enabled (Boolean)."
  value       = aws_instance.aws_instance.disable_api_termination
}
output "instance_type" {
  description = "Type of the Instance."
  value       = aws_instance.aws_instance.instance_type
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_instance.aws_instance.outpost_arn
}
output "virtual_name" {
  description = "Virtual device name."
  value       = aws_instance.aws_instance.virtual_name
}
output "no_device" {
  description = "Whether the specified device included in the device mapping was suppressed or not (Boolean)."
  value       = aws_instance.aws_instance.no_device
}
output "placement_group" {
  description = "Placement group of the Instance."
  value       = aws_instance.aws_instance.placement_group
}
output "credit_specification" {
  description = "Credit specification of the Instance."
  value       = aws_instance.aws_instance.credit_specification
}
output "instance_state" {
  description = "State of the instance. One of: pending, running, shutting-down, terminated, stopping, stopped. See Instance Lifecycle for more information."
  value       = aws_instance.aws_instance.instance_state
}
output "iops" {
  description = "0 If the volume is not a provisioned IOPS image, otherwise the supported IOPS count."
  value       = aws_instance.aws_instance.iops
}
output "ipv6_addresses" {
  description = "IPv6 addresses associated to the Instance, if applicable. strongNOTE: Unlike the IPv4 address, this doesn't change if you attach an EIP to the instance."
  value       = aws_instance.aws_instance.ipv6_addresses
}
output "http_put_response_hop_limit" {
  description = "Desired HTTP PUT response hop limit for instance metadata requests."
  value       = aws_instance.aws_instance.http_put_response_hop_limit
}
output "kms_key_arn" {
  description = "ARN of KMS Key, if EBS volume is encrypted."
  value       = aws_instance.aws_instance.kms_key_arn
}
output "vpc_security_group_ids" {
  description = "Associated security groups in a non-default VPC.TimeoutsConfiguration options:"
  value       = aws_instance.aws_instance.vpc_security_group_ids
}
output "user_data" {
  description = "SHA-1 hash of User Data supplied to the Instance."
  value       = aws_instance.aws_instance.user_data
}
output "arn" {
  description = "ARN of the instance."
  value       = aws_instance.aws_instance.arn
}
output "http_tokens" {
  description = "If session tokens are required: optional, required."
  value       = aws_instance.aws_instance.http_tokens
}
output "iam_instance_profile" {
  description = "Name of the instance profile associated with the Instance."
  value       = aws_instance.aws_instance.iam_instance_profile
}
output "instance_metadata_tags" {
  description = "If access to instance tags is allowed from the metadata service: enabled, disabled."
  value       = aws_instance.aws_instance.instance_metadata_tags
}
output "ami" {
  description = "ID of the AMI used to launch the instance."
  value       = aws_instance.aws_instance.ami
}
output "disable_api_stop" {
  description = "Whether or not EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection) is enabled (Boolean)."
  value       = aws_instance.aws_instance.disable_api_stop
}
output "encrypted" {
  description = "If the EBS volume is encrypted."
  value       = aws_instance.aws_instance.encrypted
}
output "host_id" {
  description = "ID of the dedicated host the instance will be assigned to."
  value       = aws_instance.aws_instance.host_id
}
output "monitoring" {
  description = "Whether detailed monitoring is enabled or disabled for the Instance (Boolean)."
  value       = aws_instance.aws_instance.monitoring
}
output "auto_recovery" {
  description = "Automatic recovery behavior of the instance."
  value       = aws_instance.aws_instance.auto_recovery
}
output "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_instance.aws_instance.enable_resource_name_dns_aaaa_record
}
output "enabled" {
  description = "Whether Nitro Enclaves are enabled."
  value       = aws_instance.aws_instance.enabled
}
output "enclave_options" {
  description = ""
  value       = aws_instance.aws_instance.enclave_options
}
output "private_dns" {
  description = "Private DNS name assigned to the Instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  value       = aws_instance.aws_instance.private_dns
}
output "private_ip" {
  description = "Private IP address assigned to the Instance."
  value       = aws_instance.aws_instance.private_ip
}
output "subnet_id" {
  description = "VPC subnet ID."
  value       = aws_instance.aws_instance.subnet_id
}
output "volume_size" {
  description = "Size of the volume, in GiB."
  value       = aws_instance.aws_instance.volume_size
}
output "security_groups" {
  description = "Associated security groups."
  value       = aws_instance.aws_instance.security_groups
}
output "ebs_block_device" {
  description = ""
  value       = aws_instance.aws_instance.ebs_block_device
}
output "maintenance_options" {
  description = ""
  value       = aws_instance.aws_instance.maintenance_options
}
output "source_dest_check" {
  description = "Whether the network interface performs source/destination checking (Boolean)."
  value       = aws_instance.aws_instance.source_dest_check
}
output "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_instance.aws_instance.enable_resource_name_dns_a_record
}
output "tenancy" {
  description = "Tenancy of the instance: dedicated, default, host."
  value       = aws_instance.aws_instance.tenancy
}
output "tags" {
  description = "Map of tags assigned to the Instance."
  value       = aws_instance.aws_instance.tags
}
output "ephemeral_block_device" {
  description = "Ephemeral block device mappings of the Instance.\n"
  value       = aws_instance.aws_instance.ephemeral_block_device
}
output "network_interface_id" {
  description = "ID of the network interface that was created with the Instance."
  value       = aws_instance.aws_instance.network_interface_id
}
output "public_dns" {
  description = "Public DNS name assigned to the Instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  value       = aws_instance.aws_instance.public_dns
}
output "snapshot_id" {
  description = "ID of the snapshot."
  value       = aws_instance.aws_instance.snapshot_id
}
output "user_data_base64" {
  description = "Base64 encoded contents of User Data supplied to the Instance. Valid UTF-8 contents can be decoded with the base64decode function. This attribute is only exported if get_user_data is true."
  value       = aws_instance.aws_instance.user_data_base64
}
output "delete_on_termination" {
  description = "If the root block device will be deleted on termination."
  value       = aws_instance.aws_instance.delete_on_termination
}
output "host_resource_group_arn" {
  description = "ARN of the host resource group the instance is associated with."
  value       = aws_instance.aws_instance.host_resource_group_arn
}
output "metadata_options" {
  description = "Metadata options of the Instance.\n"
  value       = aws_instance.aws_instance.metadata_options
}
output "placement_partition_number" {
  description = "Number of the partition the instance is in."
  value       = aws_instance.aws_instance.placement_partition_number
}
output "secondary_private_ips" {
  description = "Secondary private IPv4 addresses assigned to the instance's primary network interface (eth0) in a VPC."
  value       = aws_instance.aws_instance.secondary_private_ips
}
output "associate_public_ip_address" {
  description = "Whether or not the Instance is associated with a public IP address or not (Boolean)."
  value       = aws_instance.aws_instance.associate_public_ip_address
}
output "ebs_optimized" {
  description = "Whether the Instance is EBS optimized or not (Boolean)."
  value       = aws_instance.aws_instance.ebs_optimized
}
output "http_endpoint" {
  description = "State of the metadata service: enabled, disabled."
  value       = aws_instance.aws_instance.http_endpoint
}
output "key_name" {
  description = "Key name of the Instance."
  value       = aws_instance.aws_instance.key_name
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
