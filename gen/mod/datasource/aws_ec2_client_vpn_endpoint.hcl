datasource "aws_ec2_client_vpn_endpoint" "aws_ec2_client_vpn_endpoint" {
  client_cidr_block           = var.client_cidr_block
  client_vpn_endpoint_id      = var.client_vpn_endpoint_id
  description                 = var.description
  dns_name                    = var.dns_name
  server_certificate_arn      = var.server_certificate_arn
  authentication_options      = var.authentication_options
  name                        = var.name
  security_group_ids          = var.security_group_ids
  split_tunnel                = var.split_tunnel
  transport_protocol          = var.transport_protocol
  arn                         = var.arn
  connection_log_options      = var.connection_log_options
  dns_servers                 = var.dns_servers
  filter                      = var.filter
  self_service_portal         = var.self_service_portal
  session_timeout_hours       = var.session_timeout_hours
  vpc_id                      = var.vpc_id
  vpn_port                    = var.vpn_port
  client_connect_options      = var.client_connect_options
  client_login_banner_options = var.client_login_banner_options
  tags                        = var.tags
  values                      = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpn_port" {
  description = "Port number for the Client VPN endpoint.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = " The ARN of the Client VPN endpoint."
  type        = string
}
variable "connection_log_options" {
  description = "Information about the client connection logging options for the Client VPN endpoint."
  type        = string
}
variable "dns_servers" {
  description = "Information about the DNS servers to be used for DNS resolution."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
  default     = ""
}
variable "self_service_portal" {
  description = "Whether the self-service portal for the Client VPN endpoint is enabled."
  type        = string
}
variable "session_timeout_hours" {
  description = "The maximum VPN session duration time in hours."
  type        = string
}
variable "vpc_id" {
  description = "ID of the VPC associated with the Client VPN endpoint."
  type        = string
}
variable "client_connect_options" {
  description = "The options for managing connection authorization for new client connections."
  type        = string
}
variable "client_login_banner_options" {
  description = "Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired endpoint.filterThis block allows for complex filters. You can use one or more filter blocks."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field. An endpoint will be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "client_cidr_block" {
  description = "IPv4 address range, in CIDR notation, from which client IP addresses are assigned."
  type        = string
}
variable "client_vpn_endpoint_id" {
  description = "(Optional) ID of the Client VPN endpoint."
  type        = string
  default     = ""
}
variable "description" {
  description = "Brief description of the endpoint."
  type        = string
}
variable "dns_name" {
  description = "DNS name to be used by clients when connecting to the Client VPN endpoint."
  type        = string
}
variable "server_certificate_arn" {
  description = "The ARN of the server certificate."
  type        = string
}
variable "authentication_options" {
  description = "Information about the authentication method used by the Client VPN endpoint."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "security_group_ids" {
  description = "IDs of the security groups for the target network associated with the Client VPN endpoint."
  type        = string
}
variable "split_tunnel" {
  description = "Whether split-tunnel is enabled in the AWS Client VPN endpoint."
  type        = string
}
variable "transport_protocol" {
  description = "Transport protocol used by the Client VPN endpoint."
  type        = string
}
output "authentication_options" {
  description = "Information about the authentication method used by the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.authentication_options
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.name
}
output "security_group_ids" {
  description = "IDs of the security groups for the target network associated with the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.security_group_ids
}
output "split_tunnel" {
  description = "Whether split-tunnel is enabled in the AWS Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.split_tunnel
}
output "transport_protocol" {
  description = "Transport protocol used by the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.transport_protocol
}
output "vpn_port" {
  description = "Port number for the Client VPN endpoint.TimeoutsConfiguration options:"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.vpn_port
}
output "arn" {
  description = " The ARN of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.arn
}
output "connection_log_options" {
  description = "Information about the client connection logging options for the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.connection_log_options
}
output "dns_servers" {
  description = "Information about the DNS servers to be used for DNS resolution."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.dns_servers
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.filter
}
output "self_service_portal" {
  description = "Whether the self-service portal for the Client VPN endpoint is enabled."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.self_service_portal
}
output "session_timeout_hours" {
  description = "The maximum VPN session duration time in hours."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.session_timeout_hours
}
output "vpc_id" {
  description = "ID of the VPC associated with the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.vpc_id
}
output "client_connect_options" {
  description = "The options for managing connection authorization for new client connections."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_connect_options
}
output "client_login_banner_options" {
  description = "Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_login_banner_options
}
output "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired endpoint.filterThis block allows for complex filters. You can use one or more filter blocks."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.tags
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field. An endpoint will be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.values
}
output "client_cidr_block" {
  description = "IPv4 address range, in CIDR notation, from which client IP addresses are assigned."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_cidr_block
}
output "client_vpn_endpoint_id" {
  description = "(Optional) ID of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_vpn_endpoint_id
}
output "description" {
  description = "Brief description of the endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.description
}
output "dns_name" {
  description = "DNS name to be used by clients when connecting to the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.dns_name
}
output "server_certificate_arn" {
  description = "The ARN of the server certificate."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.server_certificate_arn
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
