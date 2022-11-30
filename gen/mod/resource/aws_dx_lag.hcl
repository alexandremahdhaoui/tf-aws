resource "aws_dx_lag" "aws_dx_lag" {
  provider_name          = var.provider_name
  arn                    = var.arn
  id                     = var.id
  jumbo_frame_capable    = var.jumbo_frame_capable
  location               = var.location
  name                   = var.name
  owner_account_id       = var.owner_account_id
  tags                   = var.tags
  connection_id          = var.connection_id
  connections_bandwidth  = var.connections_bandwidth
  force_destroy          = var.force_destroy
  has_logical_redundancy = var.has_logical_redundancy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the LAG."
  type        = string
}
variable "id" {
  description = "The ID of the LAG."
  type        = string
}
variable "jumbo_frame_capable" {
  description = " -Indicates whether jumbo frames (9001 MTU) are supported."
  type        = string
}
variable "location" {
  description = "(Required) The AWS Direct Connect location in which the LAG should be allocated. See DescribeLocations for the list of AWS Direct Connect locations. Use locationCode."
  type        = string
}
variable "provider_name" {
  description = "(Optional) The name of the service provider associated with the LAG."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "connection_id" {
  description = "(Optional) The ID of an existing dedicated connection to migrate to the LAG."
  type        = string
}
variable "connections_bandwidth" {
  description = "(Required) The bandwidth of the individual physical connections bundled by the LAG. Valid values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps and 100Gbps. Case sensitive."
  type        = string
}
variable "force_destroy" {
  description = "(Optional, Default:false) A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are emnot recoverable."
  type        = string
}
variable "has_logical_redundancy" {
  description = "Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6)."
  type        = string
}
variable "name" {
  description = "(Required) The name of the LAG."
  type        = string
}
variable "owner_account_id" {
  description = "The ID of the AWS account that owns the LAG."
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
output "name" {
  description = "(Required) The name of the LAG."
  value       = aws_dx_lag.aws_dx_lag.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_account_id" {
  description = "The ID of the AWS account that owns the LAG."
  value       = aws_dx_lag.aws_dx_lag.owner_account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dx_lag.aws_dx_lag.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_id" {
  description = "(Optional) The ID of an existing dedicated connection to migrate to the LAG."
  value       = aws_dx_lag.aws_dx_lag.connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connections_bandwidth" {
  description = "(Required) The bandwidth of the individual physical connections bundled by the LAG. Valid values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps and 100Gbps. Case sensitive."
  value       = aws_dx_lag.aws_dx_lag.connections_bandwidth
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "force_destroy" {
  description = "(Optional, Default:false) A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are emnot recoverable."
  value       = aws_dx_lag.aws_dx_lag.force_destroy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "has_logical_redundancy" {
  description = "Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6)."
  value       = aws_dx_lag.aws_dx_lag.has_logical_redundancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provider_name" {
  description = "(Optional) The name of the service provider associated with the LAG."
  value       = aws_dx_lag.aws_dx_lag.provider_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the LAG."
  value       = aws_dx_lag.aws_dx_lag.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the LAG."
  value       = aws_dx_lag.aws_dx_lag.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "jumbo_frame_capable" {
  description = " -Indicates whether jumbo frames (9001 MTU) are supported."
  value       = aws_dx_lag.aws_dx_lag.jumbo_frame_capable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "(Required) The AWS Direct Connect location in which the LAG should be allocated. See DescribeLocations for the list of AWS Direct Connect locations. Use locationCode."
  value       = aws_dx_lag.aws_dx_lag.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "has_logical_redundancy" {
  description = "Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6)."
  value       = aws_dx_lag.aws_dx_lag.has_logical_redundancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the LAG."
  value       = aws_dx_lag.aws_dx_lag.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "jumbo_frame_capable" {
  description = " -Indicates whether jumbo frames (9001 MTU) are supported."
  value       = aws_dx_lag.aws_dx_lag.jumbo_frame_capable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_account_id" {
  description = "The ID of the AWS account that owns the LAG."
  value       = aws_dx_lag.aws_dx_lag.owner_account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_dx_lag.aws_dx_lag.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the LAG."
  value       = aws_dx_lag.aws_dx_lag.arn
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
      "kind/name"                   = "aws_dx_lag"
      "kind/version"                = "v0.1.0"
    }
  }
}
