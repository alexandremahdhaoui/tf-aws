datasource "aws_networkfirewall_firewall" "aws_networkfirewall_firewall" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN that identifies the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.id
}
output "resolved_cidr_count" {
  description = "Total number of CIDR blocks used by the IP set references in a firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.resolved_cidr_count
}
output "subnet_id" {
  description = "The unique identifier for the subnet."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.subnet_id
}
output "attachment" {
  description = ""
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.attachment
}
output "description" {
  description = "Description of the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.description
}
output "key_id" {
  description = "The ID of the AWS Key Management Service (AWS KMS) customer managed key."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.key_id
}
output "subnet_change_protection" {
  description = "A boolean flag indicating whether it is possible to change the associated subnet(s)."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.subnet_change_protection
}
output "tags" {
  description = "Map of resource tags to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.tags
}
output "capacity_usage_summary" {
  description = "Aggregated count of all resources used by reference sets in a firewall.\n"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.capacity_usage_summary
}
output "configuration_sync_state_summary" {
  description = "Summary of sync states for all availability zones in which the firewall is configured."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.configuration_sync_state_summary
}
output "name" {
  description = "Descriptive name of the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.name
}
output "arn" {
  description = "ARN of the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.arn
}
output "delete_protection" {
  description = "Boolean flag indicating whether it is possible to delete the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.delete_protection
}
output "encryption_configuration" {
  description = "AWS Key Management Service (AWS KMS) encryption settings for the firewall.\n"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.encryption_configuration
}
output "available_cidr_count" {
  description = "Available number of CIDR blocks available for use by the IP set references in a firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.available_cidr_count
}
output "cidrs" {
  description = "Capacity usage of CIDR blocks used by IP set references in a firewall.\n"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.cidrs
}
output "type" {
  description = "The type of the AWS Key Management Service (AWS KMS) key use by the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.type
}
output "subnet_mapping" {
  description = "Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet.\n"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.subnet_mapping
}
output "utilized_cidr_count" {
  description = "Number of CIDR blocks used by the IP set references in a firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.utilized_cidr_count
}
output "firewall_status" {
  description = "Nested list of information about the current status of the firewall.\n"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.firewall_status
}
output "endpoint_id" {
  description = "The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.endpoint_id
}
output "update_token" {
  description = "String token used when updating a firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.update_token
}
output "availability_zone" {
  description = "The Availability Zone where the subnet is configured."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.availability_zone
}
output "firewall_policy_arn" {
  description = "ARN of the VPC Firewall policy."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.firewall_policy_arn
}
output "firewall_policy_change_protection" {
  description = "A boolean flag indicating whether it is possible to change the associated firewall policy."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.firewall_policy_change_protection
}
output "ip_set_references" {
  description = "The list of IP set references used by a firewall.\n"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.ip_set_references
}
output "sync_states" {
  description = "Set of subnets configured for use by the firewall.\n"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.sync_states
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
