resource "aws_vpc_ipam_pool_cidr_allocation" "aws_vpc_ipam_pool_cidr_allocation" {
  description      = var.description
  disallowed_cidrs = var.disallowed_cidrs
  id               = var.id
  ipam_pool_id     = var.ipam_pool_id
  netmask_length   = var.netmask_length
  resource_id      = var.resource_id
  resource_owner   = var.resource_owner
  cidr             = var.cidr
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "disallowed_cidrs" {
  description = "(Optional) Exclude a particular CIDR range from being returned by the pool."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the allocation."
  type        = string
}
variable "ipam_pool_id" {
  description = "(Required) The ID of the pool to which you want to assign a CIDR."
  type        = string
}
variable "netmask_length" {
  description = "(Optional) The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: 0-32.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "resource_id" {
  description = "The ID of the resource."
  type        = string
}
variable "resource_owner" {
  description = "The owner of the resource."
  type        = string
}
variable "cidr" {
  description = "(Optional) The CIDR you want to assign to the pool."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The description for the allocation."
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
output "netmask_length" {
  description = "(Optional) The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: 0-32.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.netmask_length
}
output "resource_id" {
  description = "The ID of the resource."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.resource_id
}
output "resource_owner" {
  description = "The owner of the resource."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.resource_owner
}
output "cidr" {
  description = "(Optional) The CIDR you want to assign to the pool."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.cidr
}
output "description" {
  description = "(Optional) The description for the allocation."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.description
}
output "disallowed_cidrs" {
  description = "(Optional) Exclude a particular CIDR range from being returned by the pool."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.disallowed_cidrs
}
output "id" {
  description = "The ID of the allocation."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.id
}
output "ipam_pool_id" {
  description = "(Required) The ID of the pool to which you want to assign a CIDR."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.ipam_pool_id
}
output "resource_type" {
  description = "The type of the resource."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.resource_type
}
output "id" {
  description = "The ID of the allocation."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.id
}
output "resource_id" {
  description = "The ID of the resource."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.resource_id
}
output "resource_owner" {
  description = "The owner of the resource."
  value       = aws_vpc_ipam_pool_cidr_allocation.aws_vpc_ipam_pool_cidr_allocation.resource_owner
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
      "kind/name"                   = "aws_vpc_ipam_pool_cidr_allocation"
      "kind/version"                = "v0.1.0"
    }
  }
}
