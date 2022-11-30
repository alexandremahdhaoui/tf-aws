resource "aws_vpc_peering_connection_options" "aws_vpc_peering_connection_options" {
  accepter                         = var.accepter
  allow_classic_link_to_remote_vpc = var.allow_classic_link_to_remote_vpc
  allow_remote_vpc_dns_resolution  = var.allow_remote_vpc_dns_resolution
  allow_vpc_to_remote_classic_link = var.allow_vpc_to_remote_classic_link
  requester                        = var.requester
  vpc_peering_connection_id        = var.vpc_peering_connection_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "allow_remote_vpc_dns_resolution" {
  description = "(Optional) Allow a local VPC to resolve public DNS hostnames to\nprivate IP addresses when queried from instances in the peer VPC."
  type        = string
}
variable "allow_vpc_to_remote_classic_link" {
  description = "(Optional) Allow a local VPC to communicate with a linked EC2-Classic\ninstance in a peer VPC. This enables an outbound communication from the local VPC to the remote ClassicLink\nconnection. This option is not supported for inter-region VPC peering.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "requester" {
  description = "Accepter and Requester Arguments-> strongNote:enable_dns_hostnamesaws_vpc"
  type        = string
}
variable "vpc_peering_connection_id" {
  description = "(Required) The ID of the requester VPC peering connection."
  type        = string
}
variable "accepter" {
  description = ""
  type        = string
}
variable "allow_classic_link_to_remote_vpc" {
  description = ""
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
output "accepter" {
  description = ""
  value       = aws_vpc_peering_connection_options.aws_vpc_peering_connection_options.accepter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_classic_link_to_remote_vpc" {
  description = ""
  value       = aws_vpc_peering_connection_options.aws_vpc_peering_connection_options.allow_classic_link_to_remote_vpc
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_remote_vpc_dns_resolution" {
  description = "(Optional) Allow a local VPC to resolve public DNS hostnames to\nprivate IP addresses when queried from instances in the peer VPC."
  value       = aws_vpc_peering_connection_options.aws_vpc_peering_connection_options.allow_remote_vpc_dns_resolution
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_vpc_to_remote_classic_link" {
  description = "(Optional) Allow a local VPC to communicate with a linked EC2-Classic\ninstance in a peer VPC. This enables an outbound communication from the local VPC to the remote ClassicLink\nconnection. This option is not supported for inter-region VPC peering.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_peering_connection_options.aws_vpc_peering_connection_options.allow_vpc_to_remote_classic_link
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester" {
  description = "Accepter and Requester Arguments-> strongNote:enable_dns_hostnamesaws_vpc"
  value       = aws_vpc_peering_connection_options.aws_vpc_peering_connection_options.requester
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_peering_connection_id" {
  description = "(Required) The ID of the requester VPC peering connection."
  value       = aws_vpc_peering_connection_options.aws_vpc_peering_connection_options.vpc_peering_connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC Peering Connection Options."
  value       = aws_vpc_peering_connection_options.aws_vpc_peering_connection_options.id
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
      "kind/name"                   = "aws_vpc_peering_connection_options"
      "kind/version"                = "v0.1.0"
    }
  }
}
