datasource "aws_vpc_dhcp_options" "aws_vpc_dhcp_options" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ntp_servers" {
  description = "List of NTP servers."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.ntp_servers
}
output "owner_id" {
  description = "ID of the AWS account that owns the DHCP options set.TimeoutsConfiguration options:"
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.owner_id
}
output "tags" {
  description = "Map of tags assigned to the resource."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.tags
}
output "arn" {
  description = "ARN of the DHCP Options Set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.arn
}
output "dhcp_options_id" {
  description = "EC2 DHCP Options ID"
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.dhcp_options_id
}
output "domain_name_servers" {
  description = "List of name servers."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.domain_name_servers
}
output "netbios_node_type" {
  description = "NetBIOS node type (1, 2, 4, or 8). For more information about these node types, see RFC 2132."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.netbios_node_type
}
output "domain_name" {
  description = "Suffix domain name to used when resolving non Fully Qualified Domain NamesE.g., the search value in the /etc/resolv.conf file."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.domain_name
}
output "id" {
  description = "EC2 DHCP Options ID"
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.id
}
output "netbios_name_servers" {
  description = "List of NETBIOS name servers."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.netbios_name_servers
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
