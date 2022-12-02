datasource "aws_network_interface" "aws_network_interface" {
  association_id    = var.association_id
  filter            = var.filter
  id                = var.id
  mac_address       = var.mac_address
  private_ips       = var.private_ips
  requester_id      = var.requester_id
  vpc_id            = var.vpc_id
  arn               = var.arn
  customer_owned_ip = var.customer_owned_ip
  ip_owner_id       = var.ip_owner_id
  owner_id          = var.owner_id
  public_ip         = var.public_ip
  tags              = var.tags
  allocation_id     = var.allocation_id
  description       = var.description
  outpost_arn       = var.outpost_arn
  private_dns_name  = var.private_dns_name
  private_ip        = var.private_ip
  public_dns_name   = var.public_dns_name
  availability_zone = var.availability_zone
  carrier_ip        = var.carrier_ip
  interface_type    = var.interface_type
  ipv6_addresses    = var.ipv6_addresses
  security_groups   = var.security_groups
  subnet_id         = var.subnet_id
  association       = var.association
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "security_groups" {
  description = "List of security groups for the network interface."
  type        = string
}
variable "subnet_id" {
  description = "ID of the subnet."
  type        = string
}
variable "association" {
  description = "Association information for an Elastic IP address (IPv4) associated with the network interface. See supported fields below."
  type        = string
}
variable "carrier_ip" {
  description = "Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone."
  type        = string
}
variable "interface_type" {
  description = "Type of interface."
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
variable "private_ips" {
  description = "Private IPv4 addresses associated with the network interface."
  type        = string
}
variable "requester_id" {
  description = "ID of the entity that launched the instance on your behalf."
  type        = string
}
variable "vpc_id" {
  description = "ID of the VPC.association"
  type        = string
}
variable "arn" {
  description = "ARN of the network interface."
  type        = string
}
variable "association_id" {
  description = "Association ID."
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
variable "public_ip" {
  description = "Address of the Elastic IP address bound to the network interface.TimeoutsConfiguration options:"
  type        = string
}
variable "tags" {
  description = "Any tags assigned to the network interface."
  type        = string
}
variable "allocation_id" {
  description = "Allocation ID."
  type        = string
}
variable "customer_owned_ip" {
  description = "Customer-owned IP address."
  type        = string
}
variable "ip_owner_id" {
  description = "ID of the Elastic IP address owner."
  type        = string
}
variable "owner_id" {
  description = "AWS account ID of the owner of the network interface."
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
variable "availability_zone" {
  description = "Availability Zone."
  type        = string
}
variable "description" {
  description = "Description of the network interface."
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
output "availability_zone" {
  description = "Availability Zone."
  value       = aws_network_interface.aws_network_interface.availability_zone
}
output "description" {
  description = "Description of the network interface."
  value       = aws_network_interface.aws_network_interface.description
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_network_interface.aws_network_interface.outpost_arn
}
output "private_dns_name" {
  description = "Private DNS name."
  value       = aws_network_interface.aws_network_interface.private_dns_name
}
output "private_ip" {
  description = "Private IPv4 address of the network interface within the subnet."
  value       = aws_network_interface.aws_network_interface.private_ip
}
output "public_dns_name" {
  description = "Public DNS name."
  value       = aws_network_interface.aws_network_interface.public_dns_name
}
output "association" {
  description = "Association information for an Elastic IP address (IPv4) associated with the network interface. See supported fields below."
  value       = aws_network_interface.aws_network_interface.association
}
output "carrier_ip" {
  description = "Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone."
  value       = aws_network_interface.aws_network_interface.carrier_ip
}
output "interface_type" {
  description = "Type of interface."
  value       = aws_network_interface.aws_network_interface.interface_type
}
output "ipv6_addresses" {
  description = "List of IPv6 addresses to assign to the ENI."
  value       = aws_network_interface.aws_network_interface.ipv6_addresses
}
output "security_groups" {
  description = "List of security groups for the network interface."
  value       = aws_network_interface.aws_network_interface.security_groups
}
output "subnet_id" {
  description = "ID of the subnet."
  value       = aws_network_interface.aws_network_interface.subnet_id
}
output "requester_id" {
  description = "ID of the entity that launched the instance on your behalf."
  value       = aws_network_interface.aws_network_interface.requester_id
}
output "vpc_id" {
  description = "ID of the VPC.association"
  value       = aws_network_interface.aws_network_interface.vpc_id
}
output "arn" {
  description = "ARN of the network interface."
  value       = aws_network_interface.aws_network_interface.arn
}
output "association_id" {
  description = "Association ID."
  value       = aws_network_interface.aws_network_interface.association_id
}
output "filter" {
  description = " – (Optional) One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out describe-network-interfaces in the AWS CLI reference.See the Network Interface for details on the returned attributes.Additionally, the following attributes are exported:"
  value       = aws_network_interface.aws_network_interface.filter
}
output "id" {
  description = " – (Optional) Identifier for the network interface."
  value       = aws_network_interface.aws_network_interface.id
}
output "mac_address" {
  description = "MAC address."
  value       = aws_network_interface.aws_network_interface.mac_address
}
output "private_ips" {
  description = "Private IPv4 addresses associated with the network interface."
  value       = aws_network_interface.aws_network_interface.private_ips
}
output "allocation_id" {
  description = "Allocation ID."
  value       = aws_network_interface.aws_network_interface.allocation_id
}
output "customer_owned_ip" {
  description = "Customer-owned IP address."
  value       = aws_network_interface.aws_network_interface.customer_owned_ip
}
output "ip_owner_id" {
  description = "ID of the Elastic IP address owner."
  value       = aws_network_interface.aws_network_interface.ip_owner_id
}
output "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  value       = aws_network_interface.aws_network_interface.owner_id
}
output "public_ip" {
  description = "Address of the Elastic IP address bound to the network interface.TimeoutsConfiguration options:"
  value       = aws_network_interface.aws_network_interface.public_ip
}
output "tags" {
  description = "Any tags assigned to the network interface."
  value       = aws_network_interface.aws_network_interface.tags
}
output "interface_type" {
  description = "Type of interface."
  value       = aws_network_interface.aws_network_interface.interface_type
}
output "ip_owner_id" {
  description = "ID of the Elastic IP address owner."
  value       = aws_network_interface.aws_network_interface.ip_owner_id
}
output "mac_address" {
  description = "MAC address."
  value       = aws_network_interface.aws_network_interface.mac_address
}
output "private_dns_name" {
  description = "Private DNS name."
  value       = aws_network_interface.aws_network_interface.private_dns_name
}
output "public_ip" {
  description = "Address of the Elastic IP address bound to the network interface.TimeoutsConfiguration options:"
  value       = aws_network_interface.aws_network_interface.public_ip
}
output "security_groups" {
  description = "List of security groups for the network interface."
  value       = aws_network_interface.aws_network_interface.security_groups
}
output "subnet_id" {
  description = "ID of the subnet."
  value       = aws_network_interface.aws_network_interface.subnet_id
}
output "availability_zone" {
  description = "Availability Zone."
  value       = aws_network_interface.aws_network_interface.availability_zone
}
output "ipv6_addresses" {
  description = "List of IPv6 addresses to assign to the ENI."
  value       = aws_network_interface.aws_network_interface.ipv6_addresses
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_network_interface.aws_network_interface.outpost_arn
}
output "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  value       = aws_network_interface.aws_network_interface.owner_id
}
output "private_ip" {
  description = "Private IPv4 address of the network interface within the subnet."
  value       = aws_network_interface.aws_network_interface.private_ip
}
output "vpc_id" {
  description = "ID of the VPC.association"
  value       = aws_network_interface.aws_network_interface.vpc_id
}
output "allocation_id" {
  description = "Allocation ID."
  value       = aws_network_interface.aws_network_interface.allocation_id
}
output "description" {
  description = "Description of the network interface."
  value       = aws_network_interface.aws_network_interface.description
}
output "public_dns_name" {
  description = "Public DNS name."
  value       = aws_network_interface.aws_network_interface.public_dns_name
}
output "tags" {
  description = "Any tags assigned to the network interface."
  value       = aws_network_interface.aws_network_interface.tags
}
output "private_ips" {
  description = "Private IPv4 addresses associated with the network interface."
  value       = aws_network_interface.aws_network_interface.private_ips
}
output "requester_id" {
  description = "ID of the entity that launched the instance on your behalf."
  value       = aws_network_interface.aws_network_interface.requester_id
}
output "arn" {
  description = "ARN of the network interface."
  value       = aws_network_interface.aws_network_interface.arn
}
output "association" {
  description = "Association information for an Elastic IP address (IPv4) associated with the network interface. See supported fields below."
  value       = aws_network_interface.aws_network_interface.association
}
output "association_id" {
  description = "Association ID."
  value       = aws_network_interface.aws_network_interface.association_id
}
output "carrier_ip" {
  description = "Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone."
  value       = aws_network_interface.aws_network_interface.carrier_ip
}
output "customer_owned_ip" {
  description = "Customer-owned IP address."
  value       = aws_network_interface.aws_network_interface.customer_owned_ip
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
