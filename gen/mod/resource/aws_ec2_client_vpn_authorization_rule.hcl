resource "aws_ec2_client_vpn_authorization_rule" "aws_ec2_client_vpn_authorization_rule" {
  access_group_id        = var.access_group_id
  authorize_all_groups   = var.authorize_all_groups
  client_vpn_endpoint_id = var.client_vpn_endpoint_id
  create                 = var.create
  description            = var.description
  target_network_cidr    = var.target_network_cidr
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "access_group_id" {
  description = "(Optional) The ID of the group to which the authorization rule grants access. One of access_group_id or authorize_all_groups must be set."
  type        = string
  default     = ""
}
variable "authorize_all_groups" {
  description = "(Optional) Indicates whether the authorization rule grants access to all clients. One of access_group_id or authorize_all_groups must be set."
  type        = string
  default     = ""
}
variable "client_vpn_endpoint_id" {
  description = "(Required) The ID of the Client VPN endpoint."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "description" {
  description = "(Optional) A brief description of the authorization rule.No additional attributes are exported.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "target_network_cidr" {
  description = "(Required) The IPv4 address range, in CIDR notation, of the network to which the authorization rule applies."
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
output "authorize_all_groups" {
  description = "(Optional) Indicates whether the authorization rule grants access to all clients. One of access_group_id or authorize_all_groups must be set."
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.authorize_all_groups
}
output "client_vpn_endpoint_id" {
  description = "(Required) The ID of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.client_vpn_endpoint_id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.create
}
output "description" {
  description = "(Optional) A brief description of the authorization rule.No additional attributes are exported.TimeoutsConfiguration options:"
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.description
}
output "target_network_cidr" {
  description = "(Required) The IPv4 address range, in CIDR notation, of the network to which the authorization rule applies."
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.target_network_cidr
}
output "access_group_id" {
  description = "(Optional) The ID of the group to which the authorization rule grants access. One of access_group_id or authorize_all_groups must be set."
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.access_group_id
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.delete
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_client_vpn_authorization_rule.aws_ec2_client_vpn_authorization_rule.create
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
      "kind/name"                   = "aws_ec2_client_vpn_authorization_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
