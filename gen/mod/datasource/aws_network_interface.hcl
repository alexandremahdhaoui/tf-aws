datasource "aws_network_interface" "aws_network_interface" {
  arn               = var.arn
  outpost_arn       = var.outpost_arn
  private_dns_name  = var.private_dns_name
  requester_id      = var.requester_id
  security_groups   = var.security_groups
  tags              = var.tags
  owner_id          = var.owner_id
  private_ips       = var.private_ips
  allocation_id     = var.allocation_id
  association_id    = var.association_id
  customer_owned_ip = var.customer_owned_ip
  filter            = var.filter
  id                = var.id
  interface_type    = var.interface_type
  description       = var.description
  ip_owner_id       = var.ip_owner_id
  subnet_id         = var.subnet_id
  public_dns_name   = var.public_dns_name
  public_ip         = var.public_ip
  association       = var.association
  availability_zone = var.availability_zone
  carrier_ip        = var.carrier_ip
  ipv6_addresses    = var.ipv6_addresses
  mac_address       = var.mac_address
  private_ip        = var.private_ip
  vpc_id            = var.vpc_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "requester_id" {
  description = "ID of the entity that launched the instance on your behalf."
  type        = string
}
variable "security_groups" {
  description = "List of security groups for the network interface."
  type        = string
}
variable "tags" {
  description = "Any tags assigned to the network interface."
  type        = string
}
variable "arn" {
  description = "ARN of the network interface."
  type        = string
}
variable "outpost_arn" {
  description = "ARN of the Outpost."
  type        = string
}
variable "private_dns_name" {
  description = "Private DNS name."
  type        = string
}
variable "filter" {
  description = " – (Optional) One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out describe-network-interfaces in the AWS CLI reference.See the Network Interface for details on the returned attributes.Additionally, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = " – (Optional) Identifier for the network interface."
  type        = string
  default     = ""
}
variable "interface_type" {
  description = "Type of interface."
  type        = string
}
variable "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  type        = string
}
variable "private_ips" {
  description = "Private IPv4 addresses associated with the network interface."
  type        = string
}
variable "allocation_id" {
  description = "Allocation ID."
  type        = string
}
variable "association_id" {
  description = "Association ID."
  type        = string
}
variable "customer_owned_ip" {
  description = "Customer-owned IP address."
  type        = string
}
variable "description" {
  description = "Description of the network interface."
  type        = string
}
variable "ip_owner_id" {
  description = "ID of the Elastic IP address owner."
  type        = string
}
variable "subnet_id" {
  description = "ID of the subnet."
  type        = string
}
variable "ipv6_addresses" {
  description = "List of IPv6 addresses to assign to the ENI."
  type        = string
}
variable "mac_address" {
  description = "MAC address."
  type        = string
}
variable "private_ip" {
  description = "Private IPv4 address of the network interface within the subnet."
  type        = string
}
variable "public_dns_name" {
  description = "Public DNS name."
  type        = string
}
variable "public_ip" {
  description = "Address of the Elastic IP address bound to the network interface.TimeoutsConfiguration options:"
  type        = string
}
variable "association" {
  description = "Association information for an Elastic IP address (IPv4) associated with the network interface. See supported fields below."
  type        = string
}
variable "availability_zone" {
  description = "Availability Zone."
  type        = string
}
variable "carrier_ip" {
  description = "Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone."
  type        = string
}
variable "vpc_id" {
  description = "ID of the VPC.association"
  type        = string
}
output "customer_owned_ip" {
  description = "Customer-owned IP address."
  value       = aws_network_interface.aws_network_interface.customer_owned_ip
}
output "filter" {
  description = " – (Optional) One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out describe-network-interfaces in the AWS CLI reference.See the Network Interface for details on the returned attributes.Additionally, the following attributes are exported:"
  value       = aws_network_interface.aws_network_interface.filter
}
output "id" {
  description = " – (Optional) Identifier for the network interface."
  value       = aws_network_interface.aws_network_interface.id
}
output "interface_type" {
  description = "Type of interface."
  value       = aws_network_interface.aws_network_interface.interface_type
}
output "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  value       = aws_network_interface.aws_network_interface.owner_id
}
output "private_ips" {
  description = "Private IPv4 addresses associated with the network interface."
  value       = aws_network_interface.aws_network_interface.private_ips
}
output "allocation_id" {
  description = "Allocation ID."
  value       = aws_network_interface.aws_network_interface.allocation_id
}
output "association_id" {
  description = "Association ID."
  value       = aws_network_interface.aws_network_interface.association_id
}
output "subnet_id" {
  description = "ID of the subnet."
  value       = aws_network_interface.aws_network_interface.subnet_id
}
output "description" {
  description = "Description of the network interface."
  value       = aws_network_interface.aws_network_interface.description
}
output "ip_owner_id" {
  description = "ID of the Elastic IP address owner."
  value       = aws_network_interface.aws_network_interface.ip_owner_id
}
output "carrier_ip" {
  description = "Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone."
  value       = aws_network_interface.aws_network_interface.carrier_ip
}
output "ipv6_addresses" {
  description = "List of IPv6 addresses to assign to the ENI."
  value       = aws_network_interface.aws_network_interface.ipv6_addresses
}
output "mac_address" {
  description = "MAC address."
  value       = aws_network_interface.aws_network_interface.mac_address
}
output "private_ip" {
  description = "Private IPv4 address of the network interface within the subnet."
  value       = aws_network_interface.aws_network_interface.private_ip
}
output "public_dns_name" {
  description = "Public DNS name."
  value       = aws_network_interface.aws_network_interface.public_dns_name
}
output "public_ip" {
  description = "Address of the Elastic IP address bound to the network interface.TimeoutsConfiguration options:"
  value       = aws_network_interface.aws_network_interface.public_ip
}
output "association" {
  description = "Association information for an Elastic IP address (IPv4) associated with the network interface. See supported fields below."
  value       = aws_network_interface.aws_network_interface.association
}
output "availability_zone" {
  description = "Availability Zone."
  value       = aws_network_interface.aws_network_interface.availability_zone
}
output "vpc_id" {
  description = "ID of the VPC.association"
  value       = aws_network_interface.aws_network_interface.vpc_id
}
output "private_dns_name" {
  description = "Private DNS name."
  value       = aws_network_interface.aws_network_interface.private_dns_name
}
output "requester_id" {
  description = "ID of the entity that launched the instance on your behalf."
  value       = aws_network_interface.aws_network_interface.requester_id
}
output "security_groups" {
  description = "List of security groups for the network interface."
  value       = aws_network_interface.aws_network_interface.security_groups
}
output "tags" {
  description = "Any tags assigned to the network interface."
  value       = aws_network_interface.aws_network_interface.tags
}
output "arn" {
  description = "ARN of the network interface."
  value       = aws_network_interface.aws_network_interface.arn
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_network_interface.aws_network_interface.outpost_arn
}
output "private_ips" {
  description = "Private IPv4 addresses associated with the network interface."
  value       = aws_network_interface.aws_network_interface.private_ips
}
output "allocation_id" {
  description = "Allocation ID."
  value       = aws_network_interface.aws_network_interface.allocation_id
}
output "arn" {
  description = "ARN of the network interface."
  value       = aws_network_interface.aws_network_interface.arn
}
output "customer_owned_ip" {
  description = "Customer-owned IP address."
  value       = aws_network_interface.aws_network_interface.customer_owned_ip
}
output "interface_type" {
  description = "Type of interface."
  value       = aws_network_interface.aws_network_interface.interface_type
}
output "ip_owner_id" {
  description = "ID of the Elastic IP address owner."
  value       = aws_network_interface.aws_network_interface.ip_owner_id
}
output "availability_zone" {
  description = "Availability Zone."
  value       = aws_network_interface.aws_network_interface.availability_zone
}
output "mac_address" {
  description = "MAC address."
  value       = aws_network_interface.aws_network_interface.mac_address
}
output "vpc_id" {
  description = "ID of the VPC.association"
  value       = aws_network_interface.aws_network_interface.vpc_id
}
output "public_dns_name" {
  description = "Public DNS name."
  value       = aws_network_interface.aws_network_interface.public_dns_name
}
output "requester_id" {
  description = "ID of the entity that launched the instance on your behalf."
  value       = aws_network_interface.aws_network_interface.requester_id
}
output "security_groups" {
  description = "List of security groups for the network interface."
  value       = aws_network_interface.aws_network_interface.security_groups
}
output "association" {
  description = "Association information for an Elastic IP address (IPv4) associated with the network interface. See supported fields below."
  value       = aws_network_interface.aws_network_interface.association
}
output "description" {
  description = "Description of the network interface."
  value       = aws_network_interface.aws_network_interface.description
}
output "ipv6_addresses" {
  description = "List of IPv6 addresses to assign to the ENI."
  value       = aws_network_interface.aws_network_interface.ipv6_addresses
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_network_interface.aws_network_interface.outpost_arn
}
output "private_ip" {
  description = "Private IPv4 address of the network interface within the subnet."
  value       = aws_network_interface.aws_network_interface.private_ip
}
output "subnet_id" {
  description = "ID of the subnet."
  value       = aws_network_interface.aws_network_interface.subnet_id
}
output "tags" {
  description = "Any tags assigned to the network interface."
  value       = aws_network_interface.aws_network_interface.tags
}
output "association_id" {
  description = "Association ID."
  value       = aws_network_interface.aws_network_interface.association_id
}
output "carrier_ip" {
  description = "Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone."
  value       = aws_network_interface.aws_network_interface.carrier_ip
}
output "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  value       = aws_network_interface.aws_network_interface.owner_id
}
output "private_dns_name" {
  description = "Private DNS name."
  value       = aws_network_interface.aws_network_interface.private_dns_name
}
output "public_ip" {
  description = "Address of the Elastic IP address bound to the network interface.TimeoutsConfiguration options:"
  value       = aws_network_interface.aws_network_interface.public_ip
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
