resource "aws_dx_hosted_public_virtual_interface" "aws_dx_hosted_public_virtual_interface" {
  route_filter_prefixes = var.route_filter_prefixes
  vlan                  = var.vlan
  address_family        = var.address_family
  arn                   = var.arn
  aws_device            = var.aws_device
  customer_address      = var.customer_address
  name                  = var.name
  id                    = var.id
  amazon_address        = var.amazon_address
  bgp_asn               = var.bgp_asn
  bgp_auth_key          = var.bgp_auth_key
  connection_id         = var.connection_id
  create                = var.create
  owner_account_id      = var.owner_account_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_account_id" {
  description = "(Required) The AWS account that will own the new virtual interface."
  type        = string
}
variable "customer_address" {
  description = "(Optional) The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name for the virtual interface."
  type        = string
}
variable "route_filter_prefixes" {
  description = "(Required) A list of routes to be advertised to the AWS network in this region."
  type        = string
}
variable "vlan" {
  description = "(Required) The VLAN ID."
  type        = string
}
variable "address_family" {
  description = "(Required) The address family for the BGP peer. ipv4  or ipv6."
  type        = string
}
variable "arn" {
  description = "The ARN of the virtual interface."
  type        = string
}
variable "aws_device" {
  description = "The Direct Connect endpoint on which the virtual interface terminates.TimeoutsConfiguration options:"
  type        = string
}
variable "id" {
  description = "The ID of the virtual interface."
  type        = string
}
variable "connection_id" {
  description = "(Required) The ID of the Direct Connect connection (or LAG) on which to create the virtual interface."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "amazon_address" {
  description = "(Optional) The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers."
  type        = string
  default     = ""
}
variable "bgp_asn" {
  description = "(Required) The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration."
  type        = string
}
variable "bgp_auth_key" {
  description = "(Optional) The authentication key for BGP configuration."
  type        = string
  default     = ""
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "id" {
  description = "The ID of the virtual interface."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.id
}
output "connection_id" {
  description = "(Required) The ID of the Direct Connect connection (or LAG) on which to create the virtual interface."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.connection_id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.create
}
output "amazon_address" {
  description = "(Optional) The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.amazon_address
}
output "bgp_asn" {
  description = "(Required) The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.bgp_asn
}
output "bgp_auth_key" {
  description = "(Optional) The authentication key for BGP configuration."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.bgp_auth_key
}
output "owner_account_id" {
  description = "(Required) The AWS account that will own the new virtual interface."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.owner_account_id
}
output "customer_address" {
  description = "(Optional) The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.customer_address
}
output "name" {
  description = "(Required) The name for the virtual interface."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.name
}
output "route_filter_prefixes" {
  description = "(Required) A list of routes to be advertised to the AWS network in this region."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.route_filter_prefixes
}
output "vlan" {
  description = "(Required) The VLAN ID."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.vlan
}
output "address_family" {
  description = "(Required) The address family for the BGP peer. ipv4  or ipv6."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.address_family
}
output "arn" {
  description = "The ARN of the virtual interface."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.arn
}
output "aws_device" {
  description = "The Direct Connect endpoint on which the virtual interface terminates.TimeoutsConfiguration options:"
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.aws_device
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.delete
}
output "id" {
  description = "The ID of the virtual interface."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.id
}
output "arn" {
  description = "The ARN of the virtual interface."
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.arn
}
output "aws_device" {
  description = "The Direct Connect endpoint on which the virtual interface terminates.TimeoutsConfiguration options:"
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.aws_device
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dx_hosted_public_virtual_interface.aws_dx_hosted_public_virtual_interface.create
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
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_dx_hosted_public_virtual_interface"
      "kind/version"                = "v0.1.0"
    }
  }
}
