resource "aws_vpc_peering_connection_accepter" "aws_vpc_peering_connection_accepter" {
  allow_classic_link_to_remote_vpc = var.allow_classic_link_to_remote_vpc
  id                               = var.id
  peer_vpc_id                      = var.peer_vpc_id
  requester                        = var.requester
  accepter                         = var.accepter
  auto_accept                      = var.auto_accept
  vpc_id                           = var.vpc_id
  vpc_peering_connection_id        = var.vpc_peering_connection_id
  allow_remote_vpc_dns_resolution  = var.allow_remote_vpc_dns_resolution
  peer_region                      = var.peer_region
  tags                             = var.tags
  tags_all                         = var.tags_all
  accept_status                    = var.accept_status
  peer_owner_id                    = var.peer_owner_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpc_id" {
  description = "The ID of the accepter VPC."
  type        = string
}
variable "vpc_peering_connection_id" {
  description = "(Required) The VPC Peering Connection ID to manage."
  type        = string
}
variable "allow_remote_vpc_dns_resolution" {
  description = ""
  type        = string
}
variable "peer_region" {
  description = "The region of the accepter VPC."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Removing aws_vpc_peering_connection_accepter from your configurationaws_vpc_peering_connectionaws_vpc_peering_connection_accepterstrongbut will not destroy the VPC Peering Connection.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Accepter and Requester Attributes Reference"
  type        = string
}
variable "accept_status" {
  description = "The status of the VPC Peering Connection request."
  type        = string
}
variable "peer_owner_id" {
  description = "The AWS account ID of the owner of the requester VPC."
  type        = string
}
variable "allow_classic_link_to_remote_vpc" {
  description = ""
  type        = string
}
variable "id" {
  description = "The ID of the VPC Peering Connection."
  type        = string
}
variable "peer_vpc_id" {
  description = "The ID of the requester VPC."
  type        = string
}
variable "requester" {
  description = ""
  type        = string
}
variable "accepter" {
  description = ""
  type        = string
}
variable "auto_accept" {
  description = "(Optional) Whether or not to accept the peering request. Defaults to false."
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
output "allow_classic_link_to_remote_vpc" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.allow_classic_link_to_remote_vpc
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC Peering Connection."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_vpc_id" {
  description = "The ID of the requester VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.peer_vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.requester
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accepter" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.accepter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_accept" {
  description = "(Optional) Whether or not to accept the peering request. Defaults to false."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.auto_accept
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The ID of the accepter VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_peering_connection_id" {
  description = "(Required) The VPC Peering Connection ID to manage."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.vpc_peering_connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_remote_vpc_dns_resolution" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.allow_remote_vpc_dns_resolution
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_region" {
  description = "The region of the accepter VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.peer_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Removing aws_vpc_peering_connection_accepter from your configurationaws_vpc_peering_connectionaws_vpc_peering_connection_accepterstrongbut will not destroy the VPC Peering Connection.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Accepter and Requester Attributes Reference"
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accept_status" {
  description = "The status of the VPC Peering Connection request."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.accept_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_owner_id" {
  description = "The AWS account ID of the owner of the requester VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.peer_owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accepter" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.accepter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_owner_id" {
  description = "The AWS account ID of the owner of the requester VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.peer_owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_vpc_id" {
  description = "The ID of the requester VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.peer_vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The ID of the accepter VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accept_status" {
  description = "The status of the VPC Peering Connection request."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.accept_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_remote_vpc_dns_resolution" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.allow_remote_vpc_dns_resolution
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_vpc_to_remote_classic_link" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.allow_vpc_to_remote_classic_link
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC Peering Connection."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_region" {
  description = "The region of the accepter VPC."
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.peer_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.requester
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Accepter and Requester Attributes Reference"
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_classic_link_to_remote_vpc" {
  description = ""
  value       = aws_vpc_peering_connection_accepter.aws_vpc_peering_connection_accepter.allow_classic_link_to_remote_vpc
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
      "kind/name"                   = "aws_vpc_peering_connection_accepter"
      "kind/version"                = "v0.1.0"
    }
  }
}