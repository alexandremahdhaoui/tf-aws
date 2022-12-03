resource "aws_dx_hosted_private_virtual_interface_accepter" "aws_dx_hosted_private_virtual_interface_accepter" {
  tags_all             = var.tags_all
  virtual_interface_id = var.virtual_interface_id
  vpn_gateway_id       = var.vpn_gateway_id
  arn                  = var.arn
  create               = var.create
  dx_gateway_id        = var.dx_gateway_id
  id                   = var.id
  tags                 = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "virtual_interface_id" {
  description = "(Required) The ID of the Direct Connect virtual interface to accept."
  type        = string
}
variable "vpn_gateway_id" {
  description = "(Optional) The ID of the virtual private gateway to which to connect the virtual interface.Removing aws_dx_hosted_private_virtual_interface_accepter from your configurationaws_dx_hosted_private_virtual_interfaceaws_dx_hosted_private_virtual_interface_accepterstrongbut will not delete the Direct Connect virtual interface.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the virtual interface."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "dx_gateway_id" {
  description = "(Optional) The ID of the Direct Connect gateway to which to connect the virtual interface."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the virtual interface."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
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
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.tags_all
}
output "virtual_interface_id" {
  description = "(Required) The ID of the Direct Connect virtual interface to accept."
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.virtual_interface_id
}
output "vpn_gateway_id" {
  description = "(Optional) The ID of the virtual private gateway to which to connect the virtual interface.Removing aws_dx_hosted_private_virtual_interface_accepter from your configurationaws_dx_hosted_private_virtual_interfaceaws_dx_hosted_private_virtual_interface_accepterstrongbut will not delete the Direct Connect virtual interface.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.vpn_gateway_id
}
output "arn" {
  description = "The ARN of the virtual interface."
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.create
}
output "dx_gateway_id" {
  description = "(Optional) The ID of the Direct Connect gateway to which to connect the virtual interface."
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.dx_gateway_id
}
output "id" {
  description = "The ID of the virtual interface."
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.id
}
output "arn" {
  description = "The ARN of the virtual interface."
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.delete
}
output "id" {
  description = "The ID of the virtual interface."
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dx_hosted_private_virtual_interface_accepter.aws_dx_hosted_private_virtual_interface_accepter.tags_all
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
      "kind/name"                   = "aws_dx_hosted_private_virtual_interface_accepter"
      "kind/version"                = "v0.1.0"
    }
  }
}
