resource "aws_vpc_peering_connection" "aws_vpc_peering_connection" {
  accepter                         = var.accepter
  allow_classic_link_to_remote_vpc = var.allow_classic_link_to_remote_vpc
  create                           = var.create
  id                               = var.id
  peer_owner_id                    = var.peer_owner_id
  allow_remote_vpc_dns_resolution  = var.allow_remote_vpc_dns_resolution
  tags_all                         = var.tags_all
  update                           = var.update
  vpc_id                           = var.vpc_id
  accept_status                    = var.accept_status
  auto_accept                      = var.auto_accept
  peer_vpc_id                      = var.peer_vpc_id
  requester                        = var.requester
  tags                             = var.tags
  allow_vpc_to_remote_classic_link = var.allow_vpc_to_remote_classic_link
  peer_region                      = var.peer_region
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "update" {
  description = "(Default 1m)"
  type        = string
}
variable "vpc_id" {
  description = "(Required) The ID of the requester VPC."
  type        = string
}
variable "allow_remote_vpc_dns_resolution" {
  description = "(Optional) Allow a local VPC to resolve public DNS hostnames to\nprivate IP addresses when queried from instances in the peer VPC."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.NotesIf both VPCs are not in the same AWS account and region do not enable the auto_acceptaws_vpc_peering_connection_accepterTimeoutsConfiguration options:"
  type        = string
}
variable "peer_vpc_id" {
  description = "(Required) The ID of the VPC with which you are creating the VPC Peering Connection."
  type        = string
}
variable "requester" {
  description = " (Optional) - A optional configuration block that allows for VPC Peering Connection"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Accepter and Requester Arguments-> strongNote:enable_dns_hostnames attribute in the aws_vpc resource. See Using DNS with Your VPC user guide for more information."
  type        = string
  default     = ""
}
variable "accept_status" {
  description = "The status of the VPC Peering Connection request."
  type        = string
}
variable "auto_accept" {
  description = "(Optional) Accept the peering (both VPCs need to be in the same AWS account and region)."
  type        = string
  default     = ""
}
variable "allow_vpc_to_remote_classic_link" {
  description = "(Optional) Allow a local VPC to communicate with a linked EC2-Classic\ninstance in a peer VPC. This enables an outbound communication from the local VPC to the remote ClassicLink\nconnection.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "peer_region" {
  description = "(Optional) The region of the accepter VPC of the VPC Peering Connection. auto_accept must be falseaws_vpc_peering_connection_accepter to manage the accepter side."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 1m)"
  type        = string
}
variable "id" {
  description = "The ID of the VPC Peering Connection."
  type        = string
}
variable "peer_owner_id" {
  description = "AWS provider is currently connected to."
  type        = string
}
variable "accepter" {
  description = " (Optional) - An optional configuration block that allows for VPC Peering Connection"
  type        = string
  default     = ""
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
output "accept_status" {
  description = "The status of the VPC Peering Connection request."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.accept_status
}
output "auto_accept" {
  description = "(Optional) Accept the peering (both VPCs need to be in the same AWS account and region)."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.auto_accept
}
output "peer_vpc_id" {
  description = "(Required) The ID of the VPC with which you are creating the VPC Peering Connection."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.peer_vpc_id
}
output "requester" {
  description = " (Optional) - A optional configuration block that allows for VPC Peering Connection"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.requester
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Accepter and Requester Arguments-> strongNote:enable_dns_hostnames attribute in the aws_vpc resource. See Using DNS with Your VPC user guide for more information."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.tags
}
output "allow_vpc_to_remote_classic_link" {
  description = "(Optional) Allow a local VPC to communicate with a linked EC2-Classic\ninstance in a peer VPC. This enables an outbound communication from the local VPC to the remote ClassicLink\nconnection.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.allow_vpc_to_remote_classic_link
}
output "peer_region" {
  description = "(Optional) The region of the accepter VPC of the VPC Peering Connection. auto_accept must be falseaws_vpc_peering_connection_accepter to manage the accepter side."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.peer_region
}
output "accepter" {
  description = " (Optional) - An optional configuration block that allows for VPC Peering Connection"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.accepter
}
output "allow_classic_link_to_remote_vpc" {
  description = ""
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.allow_classic_link_to_remote_vpc
}
output "create" {
  description = "(Default 1m)"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.create
}
output "id" {
  description = "The ID of the VPC Peering Connection."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.id
}
output "peer_owner_id" {
  description = "AWS provider is currently connected to."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.peer_owner_id
}
output "allow_remote_vpc_dns_resolution" {
  description = "(Optional) Allow a local VPC to resolve public DNS hostnames to\nprivate IP addresses when queried from instances in the peer VPC."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.allow_remote_vpc_dns_resolution
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.NotesIf both VPCs are not in the same AWS account and region do not enable the auto_acceptaws_vpc_peering_connection_accepterTimeoutsConfiguration options:"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.tags_all
}
output "update" {
  description = "(Default 1m)"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.update
}
output "vpc_id" {
  description = "(Required) The ID of the requester VPC."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.vpc_id
}
output "accept_status" {
  description = "The status of the VPC Peering Connection request."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.accept_status
}
output "create" {
  description = "(Default 1m)"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.create
}
output "delete" {
  description = "(Default 1m)"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.delete
}
output "id" {
  description = "The ID of the VPC Peering Connection."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.NotesIf both VPCs are not in the same AWS account and region do not enable the auto_acceptaws_vpc_peering_connection_accepterTimeoutsConfiguration options:"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.tags_all
}
output "update" {
  description = "(Default 1m)"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.update
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
      "kind/name"                   = "aws_vpc_peering_connection"
      "kind/version"                = "v0.1.0"
    }
  }
}
