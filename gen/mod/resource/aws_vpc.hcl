resource "aws_vpc" "aws_vpc" {
  ipv6_cidr_block                      = var.ipv6_cidr_block
  tags                                 = var.tags
  default_security_group_id            = var.default_security_group_id
  enable_dns_hostnames                 = var.enable_dns_hostnames
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics
  ipv4_ipam_pool_id                    = var.ipv4_ipam_pool_id
  ipv4_netmask_length                  = var.ipv4_netmask_length
  ipv6_association_id                  = var.ipv6_association_id
  arn                                  = var.arn
  enable_dns_support                   = var.enable_dns_support
  id                                   = var.id
  ipv6_cidr_block_network_border_group = var.ipv6_cidr_block_network_border_group
  owner_id                             = var.owner_id
  enable_classiclink                   = var.enable_classiclink
  enable_classiclink_dns_support       = var.enable_classiclink_dns_support
  instance_tenancy                     = var.instance_tenancy
  main_route_table_id                  = var.main_route_table_id
  assign_generated_ipv6_cidr_block     = var.assign_generated_ipv6_cidr_block
  cidr_block                           = var.cidr_block
  default_network_acl_id               = var.default_network_acl_id
  default_route_table_id               = var.default_route_table_id
  ipv6_ipam_pool_id                    = var.ipv6_ipam_pool_id
  ipv6_netmask_length                  = var.ipv6_netmask_length
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enable_classiclink" {
  description = "Whether or not the VPC has Classiclink enabled"
  type        = string
}
variable "enable_classiclink_dns_support" {
  description = "(Optional) A boolean flag to enable/disable ClassicLink DNS Support for the VPC.\nOnly valid in regions and accounts that support EC2 Classic."
  type        = string
}
variable "instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  type        = string
}
variable "main_route_table_id" {
  description = "The ID of the main route table associated with\nthis VPC. Note that you can change a VPC's main route table by using an\naws_main_route_table_association."
  type        = string
}
variable "assign_generated_ipv6_cidr_block" {
  description = "(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is false. Conflicts with ipv6_ipam_pool_id"
  type        = string
}
variable "cidr_block" {
  description = "(Optional) The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length."
  type        = string
}
variable "default_network_acl_id" {
  description = "The ID of the network ACL created by default on VPC creation"
  type        = string
}
variable "default_route_table_id" {
  description = "The ID of the route table created by default on VPC creation"
  type        = string
}
variable "ipv6_ipam_pool_id" {
  description = "(Optional) IPAM Pool ID for a IPv6 pool. Conflicts with assign_generated_ipv6_cidr_block."
  type        = string
}
variable "ipv6_netmask_length" {
  description = "(Optional) Netmask length to request from IPAM Pool. Conflicts with ipv6_cidr_block. This can be omitted if IPAM pool as a allocation_default_netmask_length set. Valid values: 56."
  type        = string
}
variable "ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using ipv6_netmask_length."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  type        = string
}
variable "enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  type        = string
}
variable "enable_network_address_usage_metrics" {
  description = "Whether Network Address Usage metrics are enabled for the VPC"
  type        = string
}
variable "ipv4_ipam_pool_id" {
  description = "(Optional) The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization."
  type        = string
}
variable "ipv4_netmask_length" {
  description = "(Optional) The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id."
  type        = string
}
variable "ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  type        = string
}
variable "enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  type        = string
}
variable "id" {
  description = "The ID of the VPC"
  type        = string
}
variable "ipv6_cidr_block_network_border_group" {
  description = "The Network Border Group Zone name"
  type        = string
}
variable "owner_id" {
  description = "The ID of the AWS account that owns the VPC."
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
output "ipv4_ipam_pool_id" {
  description = "(Optional) The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization."
  value       = aws_vpc.aws_vpc.ipv4_ipam_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv4_netmask_length" {
  description = "(Optional) The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id."
  value       = aws_vpc.aws_vpc.ipv4_netmask_length
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  value       = aws_vpc.aws_vpc.ipv6_association_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using ipv6_netmask_length."
  value       = aws_vpc.aws_vpc.ipv6_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc.aws_vpc.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = aws_vpc.aws_vpc.default_security_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = aws_vpc.aws_vpc.enable_dns_hostnames
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_network_address_usage_metrics" {
  description = "Whether Network Address Usage metrics are enabled for the VPC"
  value       = aws_vpc.aws_vpc.enable_network_address_usage_metrics
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block_network_border_group" {
  description = "The Network Border Group Zone name"
  value       = aws_vpc.aws_vpc.ipv6_cidr_block_network_border_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the VPC."
  value       = aws_vpc.aws_vpc.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  value       = aws_vpc.aws_vpc.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = aws_vpc.aws_vpc.enable_dns_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC"
  value       = aws_vpc.aws_vpc.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_classiclink" {
  description = "Whether or not the VPC has Classiclink enabled"
  value       = aws_vpc.aws_vpc.enable_classiclink
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_classiclink_dns_support" {
  description = "(Optional) A boolean flag to enable/disable ClassicLink DNS Support for the VPC.\nOnly valid in regions and accounts that support EC2 Classic."
  value       = aws_vpc.aws_vpc.enable_classiclink_dns_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = aws_vpc.aws_vpc.instance_tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_route_table_id" {
  description = "The ID of the route table created by default on VPC creation"
  value       = aws_vpc.aws_vpc.default_route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_ipam_pool_id" {
  description = "(Optional) IPAM Pool ID for a IPv6 pool. Conflicts with assign_generated_ipv6_cidr_block."
  value       = aws_vpc.aws_vpc.ipv6_ipam_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_netmask_length" {
  description = "(Optional) Netmask length to request from IPAM Pool. Conflicts with ipv6_cidr_block. This can be omitted if IPAM pool as a allocation_default_netmask_length set. Valid values: 56."
  value       = aws_vpc.aws_vpc.ipv6_netmask_length
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "main_route_table_id" {
  description = "The ID of the main route table associated with\nthis VPC. Note that you can change a VPC's main route table by using an\naws_main_route_table_association."
  value       = aws_vpc.aws_vpc.main_route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "assign_generated_ipv6_cidr_block" {
  description = "(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is false. Conflicts with ipv6_ipam_pool_id"
  value       = aws_vpc.aws_vpc.assign_generated_ipv6_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_block" {
  description = "(Optional) The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length."
  value       = aws_vpc.aws_vpc.cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_network_acl_id" {
  description = "The ID of the network ACL created by default on VPC creation"
  value       = aws_vpc.aws_vpc.default_network_acl_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  value       = aws_vpc.aws_vpc.ipv6_association_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the VPC."
  value       = aws_vpc.aws_vpc.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_route_table_id" {
  description = "The ID of the route table created by default on VPC creation"
  value       = aws_vpc.aws_vpc.default_route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = aws_vpc.aws_vpc.enable_dns_hostnames
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = aws_vpc.aws_vpc.instance_tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_vpc.aws_vpc.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_classiclink" {
  description = "Whether or not the VPC has Classiclink enabled"
  value       = aws_vpc.aws_vpc.enable_classiclink
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_network_address_usage_metrics" {
  description = "Whether Network Address Usage metrics are enabled for the VPC"
  value       = aws_vpc.aws_vpc.enable_network_address_usage_metrics
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block_network_border_group" {
  description = "The Network Border Group Zone name"
  value       = aws_vpc.aws_vpc.ipv6_cidr_block_network_border_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_network_acl_id" {
  description = "The ID of the network ACL created by default on VPC creation"
  value       = aws_vpc.aws_vpc.default_network_acl_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = aws_vpc.aws_vpc.enable_dns_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC"
  value       = aws_vpc.aws_vpc.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "main_route_table_id" {
  description = "The ID of the main route table associated with\nthis VPC. Note that you can change a VPC's main route table by using an\naws_main_route_table_association."
  value       = aws_vpc.aws_vpc.main_route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  value       = aws_vpc.aws_vpc.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = aws_vpc.aws_vpc.default_security_group_id
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
      "kind/name"                   = "aws_vpc"
      "kind/version"                = "v0.1.0"
    }
  }
}
