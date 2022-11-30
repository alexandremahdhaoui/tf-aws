datasource "aws_customer_gateway" "aws_customer_gateway" {
  ip_address      = var.ip_address
  tags            = var.tags
  arn             = var.arn
  bgp_asn         = var.bgp_asn
  certificate_arn = var.certificate_arn
  type            = var.type
  device_name     = var.device_name
  filter          = var.filter
  id              = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the customer gateway."
  type        = string
}
variable "bgp_asn" {
  description = "Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN)."
  type        = string
}
variable "certificate_arn" {
  description = "ARN for the customer gateway certificate."
  type        = string
}
variable "ip_address" {
  description = "IP address of the gateway's Internet-routable external interface."
  type        = string
}
variable "tags" {
  description = "Map of key-value pairs assigned to the gateway."
  type        = string
}
variable "device_name" {
  description = "Name for the customer gateway device."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more name-value pairs to filter by.Attribute ReferenceIn addition to the arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "(Optional) ID of the gateway."
  type        = string
}
variable "type" {
  description = "Type of customer gateway. The only type AWS supports at this time is \"ipsec.1\".TimeoutsConfiguration options:"
  type        = string
}
output "device_name" {
  description = "Name for the customer gateway device."
  value       = aws_customer_gateway.aws_customer_gateway.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more name-value pairs to filter by.Attribute ReferenceIn addition to the arguments above, the following attributes are exported:"
  value       = aws_customer_gateway.aws_customer_gateway.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) ID of the gateway."
  value       = aws_customer_gateway.aws_customer_gateway.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Type of customer gateway. The only type AWS supports at this time is \"ipsec.1\".TimeoutsConfiguration options:"
  value       = aws_customer_gateway.aws_customer_gateway.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the customer gateway."
  value       = aws_customer_gateway.aws_customer_gateway.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bgp_asn" {
  description = "Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN)."
  value       = aws_customer_gateway.aws_customer_gateway.bgp_asn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_arn" {
  description = "ARN for the customer gateway certificate."
  value       = aws_customer_gateway.aws_customer_gateway.certificate_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_address" {
  description = "IP address of the gateway's Internet-routable external interface."
  value       = aws_customer_gateway.aws_customer_gateway.ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of key-value pairs assigned to the gateway."
  value       = aws_customer_gateway.aws_customer_gateway.tags
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
