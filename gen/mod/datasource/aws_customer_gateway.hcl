datasource "aws_customer_gateway" "aws_customer_gateway" {
  bgp_asn         = var.bgp_asn
  id              = var.id
  tags            = var.tags
  arn             = var.arn
  device_name     = var.device_name
  filter          = var.filter
  ip_address      = var.ip_address
  type            = var.type
  certificate_arn = var.certificate_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "Map of key-value pairs assigned to the gateway."
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
variable "id" {
  description = "(Optional) ID of the gateway."
  type        = string
  default     = ""
}
variable "ip_address" {
  description = "IP address of the gateway's Internet-routable external interface."
  type        = string
}
variable "type" {
  description = "Type of customer gateway. The only type AWS supports at this time is \"ipsec.1\".TimeoutsConfiguration options:"
  type        = string
}
variable "certificate_arn" {
  description = "ARN for the customer gateway certificate."
  type        = string
}
variable "device_name" {
  description = "Name for the customer gateway device."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more name-value pairs to filter by.Attribute ReferenceIn addition to the arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "certificate_arn" {
  description = "ARN for the customer gateway certificate."
  value       = aws_customer_gateway.aws_customer_gateway.certificate_arn
}
output "device_name" {
  description = "Name for the customer gateway device."
  value       = aws_customer_gateway.aws_customer_gateway.device_name
}
output "filter" {
  description = "(Optional) One or more name-value pairs to filter by.Attribute ReferenceIn addition to the arguments above, the following attributes are exported:"
  value       = aws_customer_gateway.aws_customer_gateway.filter
}
output "ip_address" {
  description = "IP address of the gateway's Internet-routable external interface."
  value       = aws_customer_gateway.aws_customer_gateway.ip_address
}
output "type" {
  description = "Type of customer gateway. The only type AWS supports at this time is \"ipsec.1\".TimeoutsConfiguration options:"
  value       = aws_customer_gateway.aws_customer_gateway.type
}
output "arn" {
  description = "ARN of the customer gateway."
  value       = aws_customer_gateway.aws_customer_gateway.arn
}
output "bgp_asn" {
  description = "Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN)."
  value       = aws_customer_gateway.aws_customer_gateway.bgp_asn
}
output "id" {
  description = "(Optional) ID of the gateway."
  value       = aws_customer_gateway.aws_customer_gateway.id
}
output "tags" {
  description = "Map of key-value pairs assigned to the gateway."
  value       = aws_customer_gateway.aws_customer_gateway.tags
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
