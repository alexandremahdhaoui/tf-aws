resource "aws_dx_hosted_connection" "aws_dx_hosted_connection" {
  jumbo_frame_capable    = var.jumbo_frame_capable
  location               = var.location
  bandwidth              = var.bandwidth
  lag_id                 = var.lag_id
  provider_name          = var.provider_name
  vlan                   = var.vlan
  id                     = var.id
  loa_issue_time         = var.loa_issue_time
  partner_name           = var.partner_name
  aws_device             = var.aws_device
  connection_id          = var.connection_id
  has_logical_redundancy = var.has_logical_redundancy
  name                   = var.name
  owner_account_id       = var.owner_account_id
  state                  = var.state
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vlan" {
  description = "(Required) The dedicated VLAN provisioned to the hosted connection.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "bandwidth" {
  description = "(Required) The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps and 10Gbps. Case sensitive."
  type        = string
}
variable "lag_id" {
  description = "The ID of the LAG."
  type        = string
}
variable "provider_name" {
  description = "The name of the service provider associated with the connection."
  type        = string
}
variable "id" {
  description = "The ID of the connection."
  type        = string
}
variable "loa_issue_time" {
  description = "The time of the most recent call to DescribeLoa for this connection."
  type        = string
}
variable "partner_name" {
  description = "The name of the AWS Direct Connect service provider associated with the connection."
  type        = string
}
variable "name" {
  description = "(Required) The name of the connection."
  type        = string
}
variable "owner_account_id" {
  description = "(Required) The ID of the AWS account of the customer for the connection."
  type        = string
}
variable "state" {
  description = "The state of the connection. Possible values include: ordering, requested, pending, available, down, deleting, deleted, rejected, unknown. See AllocateHostedConnection for a description of each connection state."
  type        = string
}
variable "aws_device" {
  description = "The Direct Connect endpoint on which the physical connection terminates."
  type        = string
}
variable "connection_id" {
  description = "(Required) The ID of the interconnect or LAG."
  type        = string
}
variable "has_logical_redundancy" {
  description = "Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6)."
  type        = string
}
variable "jumbo_frame_capable" {
  description = "Boolean value representing if jumbo frames have been enabled for this connection."
  type        = string
}
variable "location" {
  description = "The location of the connection."
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
output "aws_device" {
  description = "The Direct Connect endpoint on which the physical connection terminates."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.aws_device
}
output "connection_id" {
  description = "(Required) The ID of the interconnect or LAG."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.connection_id
}
output "has_logical_redundancy" {
  description = "Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6)."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.has_logical_redundancy
}
output "name" {
  description = "(Required) The name of the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.name
}
output "owner_account_id" {
  description = "(Required) The ID of the AWS account of the customer for the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.owner_account_id
}
output "state" {
  description = "The state of the connection. Possible values include: ordering, requested, pending, available, down, deleting, deleted, rejected, unknown. See AllocateHostedConnection for a description of each connection state."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.state
}
output "jumbo_frame_capable" {
  description = "Boolean value representing if jumbo frames have been enabled for this connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.jumbo_frame_capable
}
output "location" {
  description = "The location of the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.location
}
output "bandwidth" {
  description = "(Required) The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps and 10Gbps. Case sensitive."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.bandwidth
}
output "lag_id" {
  description = "The ID of the LAG."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.lag_id
}
output "provider_name" {
  description = "The name of the service provider associated with the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.provider_name
}
output "vlan" {
  description = "(Required) The dedicated VLAN provisioned to the hosted connection.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.vlan
}
output "id" {
  description = "The ID of the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.id
}
output "loa_issue_time" {
  description = "The time of the most recent call to DescribeLoa for this connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.loa_issue_time
}
output "partner_name" {
  description = "The name of the AWS Direct Connect service provider associated with the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.partner_name
}
output "provider_name" {
  description = "The name of the service provider associated with the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.provider_name
}
output "aws_device" {
  description = "The Direct Connect endpoint on which the physical connection terminates."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.aws_device
}
output "id" {
  description = "The ID of the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.id
}
output "jumbo_frame_capable" {
  description = "Boolean value representing if jumbo frames have been enabled for this connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.jumbo_frame_capable
}
output "loa_issue_time" {
  description = "The time of the most recent call to DescribeLoa for this connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.loa_issue_time
}
output "partner_name" {
  description = "The name of the AWS Direct Connect service provider associated with the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.partner_name
}
output "has_logical_redundancy" {
  description = "Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6)."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.has_logical_redundancy
}
output "lag_id" {
  description = "The ID of the LAG."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.lag_id
}
output "location" {
  description = "The location of the connection."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.location
}
output "state" {
  description = "The state of the connection. Possible values include: ordering, requested, pending, available, down, deleting, deleted, rejected, unknown. See AllocateHostedConnection for a description of each connection state."
  value       = aws_dx_hosted_connection.aws_dx_hosted_connection.state
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
      "kind/name"                   = "aws_dx_hosted_connection"
      "kind/version"                = "v0.1.0"
    }
  }
}
