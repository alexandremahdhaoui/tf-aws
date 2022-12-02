datasource "aws_directory_service_directory" "aws_directory_service_directory" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "ID of the VPC that the connector is in.radius_settings is also exported with the following attributes:"
  value       = aws_directory_service_directory.aws_directory_service_directory.vpc_id
}
output "customer_dns_ips" {
  description = "DNS IP addresses of the domain to connect to."
  value       = aws_directory_service_directory.aws_directory_service_directory.customer_dns_ips
}
output "dns_ip_addresses" {
  description = "List of IP addresses of the DNS servers for the directory/connector."
  value       = aws_directory_service_directory.aws_directory_service_directory.dns_ip_addresses
}
output "radius_retries" {
  description = "Maximum number of times that communication with the RADIUS server is attempted."
  value       = aws_directory_service_directory.aws_directory_service_directory.radius_retries
}
output "radius_servers" {
  description = "Set of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer."
  value       = aws_directory_service_directory.aws_directory_service_directory.radius_servers
}
output "short_name" {
  description = "Short name of the directory/connector, such as CORP."
  value       = aws_directory_service_directory.aws_directory_service_directory.short_name
}
output "tags" {
  description = " – A map of tags assigned to the directory/connector.vpc_settings (for SimpleAD and MicrosoftAD) is also exported with the following attributes:"
  value       = aws_directory_service_directory.aws_directory_service_directory.tags
}
output "connect_ips" {
  description = "IP addresses of the AD Connector servers."
  value       = aws_directory_service_directory.aws_directory_service_directory.connect_ips
}
output "radius_port" {
  description = "Port that your RADIUS server is using for communications."
  value       = aws_directory_service_directory.aws_directory_service_directory.radius_port
}
output "radius_timeout" {
  description = "Amount of time, in seconds, to wait for the RADIUS server to respond."
  value       = aws_directory_service_directory.aws_directory_service_directory.radius_timeout
}
output "security_group_id" {
  description = "ID of the security group created by the directory/connector."
  value       = aws_directory_service_directory.aws_directory_service_directory.security_group_id
}
output "size" {
  description = "(for SimpleAD and ADConnector) Size of the directory/connector (Small or Large)."
  value       = aws_directory_service_directory.aws_directory_service_directory.size
}
output "subnet_ids" {
  description = "Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs)."
  value       = aws_directory_service_directory.aws_directory_service_directory.subnet_ids
}
output "password" {
  description = "Password for the directory administrator or connector user."
  value       = aws_directory_service_directory.aws_directory_service_directory.password
}
output "type" {
  description = "Directory type (SimpleAD, ADConnector or MicrosoftAD)."
  value       = aws_directory_service_directory.aws_directory_service_directory.type
}
output "customer_username" {
  description = "Username corresponding to the password provided."
  value       = aws_directory_service_directory.aws_directory_service_directory.customer_username
}
output "description" {
  description = "Textual description for the directory/connector."
  value       = aws_directory_service_directory.aws_directory_service_directory.description
}
output "display_label" {
  description = "Display label."
  value       = aws_directory_service_directory.aws_directory_service_directory.display_label
}
output "edition" {
  description = "(for MicrosoftAD) Microsoft AD edition (Standard or Enterprise)."
  value       = aws_directory_service_directory.aws_directory_service_directory.edition
}
output "enable_sso" {
  description = "Directory/connector single-sign on status."
  value       = aws_directory_service_directory.aws_directory_service_directory.enable_sso
}
output "name" {
  description = "Fully qualified name for the directory/connector."
  value       = aws_directory_service_directory.aws_directory_service_directory.name
}
output "access_url" {
  description = "Access URL for the directory/connector, such as http://alias.awsapps.com."
  value       = aws_directory_service_directory.aws_directory_service_directory.access_url
}
output "alias" {
  description = "Alias for the directory/connector, such as d-991708b282.awsapps.com."
  value       = aws_directory_service_directory.aws_directory_service_directory.alias
}
output "authentication_protocol" {
  description = "The protocol specified for your RADIUS endpoints."
  value       = aws_directory_service_directory.aws_directory_service_directory.authentication_protocol
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
