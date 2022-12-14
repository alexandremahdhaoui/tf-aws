resource "aws_vpc_ipv6_cidr_block_association" "aws_vpc_ipv6_cidr_block_association" {
  ipv6_cidr_block     = var.ipv6_cidr_block
  ipv6_ipam_pool_id   = var.ipv6_ipam_pool_id
  ipv6_netmask_length = var.ipv6_netmask_length
  vpc_id              = var.vpc_id
  create              = var.create
  delete              = var.delete
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpc_id" {
  description = "(Required) The ID of the VPC to make the association with.TimeoutsConfiguration options:"
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "delete" {
  description = "(Default 10m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "ipv6_cidr_block" {
  description = "(Optional) The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv6_netmask_length. This parameter is required if ipv6_netmask_length is not set and he IPAM pool does not have allocation_default_netmask set."
  type        = string
  default     = ""
}
variable "ipv6_ipam_pool_id" {
  description = "(Required) The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts."
  type        = string
}
variable "ipv6_netmask_length" {
  description = "(Optional) The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a ipv6_ipam_pool_id. This parameter is optional if the IPAM pool has allocation_default_netmask set, otherwise it or cidr_block are required"
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
output "delete" {
  description = "(Default 10m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_ipv6_cidr_block_association.aws_vpc_ipv6_cidr_block_association.delete
}
output "ipv6_cidr_block" {
  description = "(Optional) The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv6_netmask_length. This parameter is required if ipv6_netmask_length is not set and he IPAM pool does not have allocation_default_netmask set."
  value       = aws_vpc_ipv6_cidr_block_association.aws_vpc_ipv6_cidr_block_association.ipv6_cidr_block
}
output "ipv6_ipam_pool_id" {
  description = "(Required) The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts."
  value       = aws_vpc_ipv6_cidr_block_association.aws_vpc_ipv6_cidr_block_association.ipv6_ipam_pool_id
}
output "ipv6_netmask_length" {
  description = "(Optional) The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a ipv6_ipam_pool_id. This parameter is optional if the IPAM pool has allocation_default_netmask set, otherwise it or cidr_block are required"
  value       = aws_vpc_ipv6_cidr_block_association.aws_vpc_ipv6_cidr_block_association.ipv6_netmask_length
}
output "vpc_id" {
  description = "(Required) The ID of the VPC to make the association with.TimeoutsConfiguration options:"
  value       = aws_vpc_ipv6_cidr_block_association.aws_vpc_ipv6_cidr_block_association.vpc_id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_vpc_ipv6_cidr_block_association.aws_vpc_ipv6_cidr_block_association.create
}
output "id" {
  description = "The ID of the VPC CIDR association"
  value       = aws_vpc_ipv6_cidr_block_association.aws_vpc_ipv6_cidr_block_association.id
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
      "kind/name"                   = "aws_vpc_ipv6_cidr_block_association"
      "kind/version"                = "v0.1.0"
    }
  }
}
