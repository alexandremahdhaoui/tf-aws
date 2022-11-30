datasource "aws_ec2_client_vpn_endpoint" "aws_ec2_client_vpn_endpoint" {
  values                      = var.values
  vpc_id                      = var.vpc_id
  vpn_port                    = var.vpn_port
  client_vpn_endpoint_id      = var.client_vpn_endpoint_id
  connection_log_options      = var.connection_log_options
  server_certificate_arn      = var.server_certificate_arn
  session_timeout_hours       = var.session_timeout_hours
  self_service_portal         = var.self_service_portal
  split_tunnel                = var.split_tunnel
  client_login_banner_options = var.client_login_banner_options
  dns_name                    = var.dns_name
  filter                      = var.filter
  name                        = var.name
  arn                         = var.arn
  authentication_options      = var.authentication_options
  client_cidr_block           = var.client_cidr_block
  dns_servers                 = var.dns_servers
  transport_protocol          = var.transport_protocol
  client_connect_options      = var.client_connect_options
  description                 = var.description
  security_group_ids          = var.security_group_ids
  tags                        = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "transport_protocol" {
  description = "Transport protocol used by the Client VPN endpoint."
  type        = string
}
variable "client_connect_options" {
  description = "The options for managing connection authorization for new client connections."
  type        = string
}
variable "description" {
  description = "Brief description of the endpoint."
  type        = string
}
variable "security_group_ids" {
  description = "IDs of the security groups for the target network associated with the Client VPN endpoint."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired endpoint.filterThis block allows for complex filters. You can use one or more filter blocks."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field. An endpoint will be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpc_id" {
  description = "ID of the VPC associated with the Client VPN endpoint."
  type        = string
}
variable "vpn_port" {
  description = "Port number for the Client VPN endpoint.TimeoutsConfiguration options:"
  type        = string
}
variable "client_vpn_endpoint_id" {
  description = "(Optional) ID of the Client VPN endpoint."
  type        = string
}
variable "connection_log_options" {
  description = "Information about the client connection logging options for the Client VPN endpoint."
  type        = string
}
variable "server_certificate_arn" {
  description = "The ARN of the server certificate."
  type        = string
}
variable "session_timeout_hours" {
  description = "The maximum VPN session duration time in hours."
  type        = string
}
variable "self_service_portal" {
  description = "Whether the self-service portal for the Client VPN endpoint is enabled."
  type        = string
}
variable "split_tunnel" {
  description = "Whether split-tunnel is enabled in the AWS Client VPN endpoint."
  type        = string
}
variable "client_login_banner_options" {
  description = "Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established."
  type        = string
}
variable "dns_name" {
  description = "DNS name to be used by clients when connecting to the Client VPN endpoint."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "arn" {
  description = " The ARN of the Client VPN endpoint."
  type        = string
}
variable "authentication_options" {
  description = "Information about the authentication method used by the Client VPN endpoint."
  type        = string
}
variable "client_cidr_block" {
  description = "IPv4 address range, in CIDR notation, from which client IP addresses are assigned."
  type        = string
}
variable "dns_servers" {
  description = "Information about the DNS servers to be used for DNS resolution."
  type        = string
}
output "security_group_ids" {
  description = "IDs of the security groups for the target network associated with the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired endpoint.filterThis block allows for complex filters. You can use one or more filter blocks."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transport_protocol" {
  description = "Transport protocol used by the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.transport_protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_connect_options" {
  description = "The options for managing connection authorization for new client connections."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_connect_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Brief description of the endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "server_certificate_arn" {
  description = "The ARN of the server certificate."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.server_certificate_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "session_timeout_hours" {
  description = "The maximum VPN session duration time in hours."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.session_timeout_hours
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field. An endpoint will be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "ID of the VPC associated with the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpn_port" {
  description = "Port number for the Client VPN endpoint.TimeoutsConfiguration options:"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.vpn_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_vpn_endpoint_id" {
  description = "(Optional) ID of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_vpn_endpoint_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_log_options" {
  description = "Information about the client connection logging options for the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.connection_log_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "self_service_portal" {
  description = "Whether the self-service portal for the Client VPN endpoint is enabled."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.self_service_portal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "split_tunnel" {
  description = "Whether split-tunnel is enabled in the AWS Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.split_tunnel
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_login_banner_options" {
  description = "Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_login_banner_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "DNS name to be used by clients when connecting to the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_cidr_block" {
  description = "IPv4 address range, in CIDR notation, from which client IP addresses are assigned."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_servers" {
  description = "Information about the DNS servers to be used for DNS resolution."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.dns_servers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " The ARN of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_options" {
  description = "Information about the authentication method used by the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.authentication_options
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
