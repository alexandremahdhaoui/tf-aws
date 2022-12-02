resource "aws_subnet" "aws_subnet" {
  assign_ipv6_address_on_creation                = var.assign_ipv6_address_on_creation
  availability_zone                              = var.availability_zone
  cidr_block                                     = var.cidr_block
  create                                         = var.create
  enable_resource_name_dns_a_record_on_launch    = var.enable_resource_name_dns_a_record_on_launch
  id                                             = var.id
  ipv6_cidr_block                                = var.ipv6_cidr_block
  ipv6_cidr_block_association_id                 = var.ipv6_cidr_block_association_id
  vpc_id                                         = var.vpc_id
  arn                                            = var.arn
  enable_resource_name_dns_aaaa_record_on_launch = var.enable_resource_name_dns_aaaa_record_on_launch
  ipv6_native                                    = var.ipv6_native
  owner_id                                       = var.owner_id
  private_dns_hostname_type_on_launch            = var.private_dns_hostname_type_on_launch
  tags                                           = var.tags
  tags_all                                       = var.tags_all
  map_public_ip_on_launch                        = var.map_public_ip_on_launch
  availability_zone_id                           = var.availability_zone_id
  customer_owned_ipv4_pool                       = var.customer_owned_ipv4_pool
  enable_dns64                                   = var.enable_dns64
  map_customer_owned_ip_on_launch                = var.map_customer_owned_ip_on_launch
  outpost_arn                                    = var.outpost_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "(Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: false."
  type        = string
  default     = ""
}
variable "ipv6_native" {
  description = "(Optional) Indicates whether to create an IPv6-only subnet. Default: false."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "The ID of the AWS account that owns the subnet."
  type        = string
}
variable "private_dns_hostname_type_on_launch" {
  description = "(Optional) The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name, resource-name."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = "The ARN of the subnet."
  type        = string
}
variable "map_public_ip_on_launch" {
  description = "false."
  type        = string
}
variable "customer_owned_ipv4_pool" {
  description = "(Optional) The customer owned IPv4 address pool. Typically used with the map_customer_owned_ip_on_launch argument. The outpost_arn argument must be specified when configured."
  type        = string
  default     = ""
}
variable "enable_dns64" {
  description = "(Optional) Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: false."
  type        = string
  default     = ""
}
variable "map_customer_owned_ip_on_launch" {
  description = " (Optional) Specify true to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The customer_owned_ipv4_pool and outpost_arn arguments must be specified when set to true. Default is false."
  type        = string
  default     = ""
}
variable "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost."
  type        = string
  default     = ""
}
variable "availability_zone_id" {
  description = "(Optional) AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  type        = string
  default     = ""
}
variable "availability_zone" {
  description = "(Optional) AZ for the subnet."
  type        = string
  default     = ""
}
variable "cidr_block" {
  description = "(Optional) The IPv4 CIDR block for the subnet."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "enable_resource_name_dns_a_record_on_launch" {
  description = "(Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: false."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the subnet"
  type        = string
}
variable "ipv6_cidr_block" {
  description = ""
  type        = string
}
variable "ipv6_cidr_block_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  type        = string
}
variable "assign_ipv6_address_on_creation" {
  description = "false"
  type        = string
}
variable "vpc_id" {
  description = "(Required) The VPC ID."
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
output "arn" {
  description = "The ARN of the subnet."
  value       = aws_subnet.aws_subnet.arn
}
output "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "(Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: false."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_aaaa_record_on_launch
}
output "ipv6_native" {
  description = "(Optional) Indicates whether to create an IPv6-only subnet. Default: false."
  value       = aws_subnet.aws_subnet.ipv6_native
}
output "owner_id" {
  description = "The ID of the AWS account that owns the subnet."
  value       = aws_subnet.aws_subnet.owner_id
}
output "private_dns_hostname_type_on_launch" {
  description = "(Optional) The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name, resource-name."
  value       = aws_subnet.aws_subnet.private_dns_hostname_type_on_launch
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_subnet.aws_subnet.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_subnet.aws_subnet.tags_all
}
output "map_public_ip_on_launch" {
  description = "false."
  value       = aws_subnet.aws_subnet.map_public_ip_on_launch
}
output "availability_zone_id" {
  description = "(Optional) AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  value       = aws_subnet.aws_subnet.availability_zone_id
}
output "customer_owned_ipv4_pool" {
  description = "(Optional) The customer owned IPv4 address pool. Typically used with the map_customer_owned_ip_on_launch argument. The outpost_arn argument must be specified when configured."
  value       = aws_subnet.aws_subnet.customer_owned_ipv4_pool
}
output "enable_dns64" {
  description = "(Optional) Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: false."
  value       = aws_subnet.aws_subnet.enable_dns64
}
output "map_customer_owned_ip_on_launch" {
  description = " (Optional) Specify true to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The customer_owned_ipv4_pool and outpost_arn arguments must be specified when set to true. Default is false."
  value       = aws_subnet.aws_subnet.map_customer_owned_ip_on_launch
}
output "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost."
  value       = aws_subnet.aws_subnet.outpost_arn
}
output "assign_ipv6_address_on_creation" {
  description = "false"
  value       = aws_subnet.aws_subnet.assign_ipv6_address_on_creation
}
output "availability_zone" {
  description = "(Optional) AZ for the subnet."
  value       = aws_subnet.aws_subnet.availability_zone
}
output "cidr_block" {
  description = "(Optional) The IPv4 CIDR block for the subnet."
  value       = aws_subnet.aws_subnet.cidr_block
}
output "create" {
  description = "(Default 10m)"
  value       = aws_subnet.aws_subnet.create
}
output "enable_resource_name_dns_a_record_on_launch" {
  description = "(Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: false."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_a_record_on_launch
}
output "id" {
  description = "The ID of the subnet"
  value       = aws_subnet.aws_subnet.id
}
output "ipv6_cidr_block" {
  description = ""
  value       = aws_subnet.aws_subnet.ipv6_cidr_block
}
output "ipv6_cidr_block_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block_association_id
}
output "vpc_id" {
  description = "(Required) The VPC ID."
  value       = aws_subnet.aws_subnet.vpc_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_subnet.aws_subnet.tags_all
}
output "arn" {
  description = "The ARN of the subnet."
  value       = aws_subnet.aws_subnet.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_subnet.aws_subnet.create
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_subnet.aws_subnet.delete
}
output "id" {
  description = "The ID of the subnet"
  value       = aws_subnet.aws_subnet.id
}
output "ipv6_cidr_block_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block_association_id
}
output "owner_id" {
  description = "The ID of the AWS account that owns the subnet."
  value       = aws_subnet.aws_subnet.owner_id
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
      "kind/name"                   = "aws_subnet"
      "kind/version"                = "v0.1.0"
    }
  }
}
