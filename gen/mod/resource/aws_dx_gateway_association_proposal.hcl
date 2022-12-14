resource "aws_dx_gateway_association_proposal" "aws_dx_gateway_association_proposal" {
  allowed_prefixes                    = var.allowed_prefixes
  associated_gateway_id               = var.associated_gateway_id
  associated_gateway_owner_account_id = var.associated_gateway_owner_account_id
  dx_gateway_id                       = var.dx_gateway_id
  dx_gateway_owner_account_id         = var.dx_gateway_owner_account_id
  id                                  = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "dx_gateway_owner_account_id" {
  description = "(Required) AWS Account identifier of the Direct Connect Gateway's owner."
  type        = string
}
variable "id" {
  description = "Direct Connect Gateway Association Proposal identifier."
  type        = string
}
variable "allowed_prefixes" {
  description = "(Optional) VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "associated_gateway_id" {
  description = "(Required) The ID of the VGW or transit gateway with which to associate the Direct Connect gateway."
  type        = string
}
variable "associated_gateway_owner_account_id" {
  description = "The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway."
  type        = string
}
variable "dx_gateway_id" {
  description = "(Required) Direct Connect Gateway identifier."
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
output "associated_gateway_id" {
  description = "(Required) The ID of the VGW or transit gateway with which to associate the Direct Connect gateway."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.associated_gateway_id
}
output "associated_gateway_owner_account_id" {
  description = "The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.associated_gateway_owner_account_id
}
output "dx_gateway_id" {
  description = "(Required) Direct Connect Gateway identifier."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.dx_gateway_id
}
output "dx_gateway_owner_account_id" {
  description = "(Required) AWS Account identifier of the Direct Connect Gateway's owner."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.dx_gateway_owner_account_id
}
output "id" {
  description = "Direct Connect Gateway Association Proposal identifier."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.id
}
output "allowed_prefixes" {
  description = "(Optional) VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.allowed_prefixes
}
output "associated_gateway_owner_account_id" {
  description = "The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.associated_gateway_owner_account_id
}
output "associated_gateway_type" {
  description = "The type of the associated gateway, transitGateway or virtualPrivateGateway."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.associated_gateway_type
}
output "id" {
  description = "Direct Connect Gateway Association Proposal identifier."
  value       = aws_dx_gateway_association_proposal.aws_dx_gateway_association_proposal.id
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
      "kind/name"                   = "aws_dx_gateway_association_proposal"
      "kind/version"                = "v0.1.0"
    }
  }
}
