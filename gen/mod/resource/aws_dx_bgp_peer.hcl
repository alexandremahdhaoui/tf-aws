resource "aws_dx_bgp_peer" "aws_dx_bgp_peer" {
  id                   = var.id
  address_family       = var.address_family
  aws_device           = var.aws_device
  bgp_asn              = var.bgp_asn
  bgp_peer_id          = var.bgp_peer_id
  create               = var.create
  amazon_address       = var.amazon_address
  bgp_auth_key         = var.bgp_auth_key
  bgp_status           = var.bgp_status
  customer_address     = var.customer_address
  virtual_interface_id = var.virtual_interface_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "address_family" {
  description = "(Required) The address family for the BGP peer. ipv4  or ipv6."
  type        = string
}
variable "aws_device" {
  description = "The Direct Connect endpoint on which the BGP peer terminates.TimeoutsConfiguration options:"
  type        = string
}
variable "bgp_asn" {
  description = "(Required) The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration."
  type        = string
}
variable "bgp_peer_id" {
  description = "The ID of the BGP peer."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "id" {
  description = "The ID of the BGP peer resource."
  type        = string
}
variable "amazon_address" {
  description = "(Optional) The IPv4 CIDR address to use to send traffic to Amazon.\nRequired for IPv4 BGP peers on public virtual interfaces."
  type        = string
}
variable "bgp_auth_key" {
  description = "(Optional) The authentication key for BGP configuration."
  type        = string
}
variable "bgp_status" {
  description = "The Up/Down state of the BGP peer."
  type        = string
}
variable "customer_address" {
  description = "In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "virtual_interface_id" {
  description = "(Required) The ID of the Direct Connect virtual interface on which to create the BGP peer."
  type        = string
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
output "bgp_auth_key" {
  description = "(Optional) The authentication key for BGP configuration."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.bgp_auth_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bgp_status" {
  description = "The Up/Down state of the BGP peer."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.bgp_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customer_address" {
  description = "In addition to all arguments above, the following attributes are exported:"
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.customer_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_interface_id" {
  description = "(Required) The ID of the Direct Connect virtual interface on which to create the BGP peer."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.virtual_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amazon_address" {
  description = "(Optional) The IPv4 CIDR address to use to send traffic to Amazon.\nRequired for IPv4 BGP peers on public virtual interfaces."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.amazon_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aws_device" {
  description = "The Direct Connect endpoint on which the BGP peer terminates.TimeoutsConfiguration options:"
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.aws_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bgp_asn" {
  description = "(Required) The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.bgp_asn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bgp_peer_id" {
  description = "The ID of the BGP peer."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.bgp_peer_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the BGP peer resource."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address_family" {
  description = "(Required) The address family for the BGP peer. ipv4  or ipv6."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.address_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bgp_peer_id" {
  description = "The ID of the BGP peer."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.bgp_peer_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bgp_status" {
  description = "The Up/Down state of the BGP peer."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.bgp_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the BGP peer resource."
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aws_device" {
  description = "The Direct Connect endpoint on which the BGP peer terminates.TimeoutsConfiguration options:"
  value       = aws_dx_bgp_peer.aws_dx_bgp_peer.aws_device
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
      "kind/name"                   = "aws_dx_bgp_peer"
      "kind/version"                = "v0.1.0"
    }
  }
}
