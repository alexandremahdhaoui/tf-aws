resource "aws_network_interface.markdown" "aws_network_interface.markdown" {
  attachment                = var.attachment
  ipv6_prefix_count         = var.ipv6_prefix_count
  mac_address               = var.mac_address
  source_dest_check         = var.source_dest_check
  id                        = var.id
  ipv6_prefixes             = var.ipv6_prefixes
  tags                      = var.tags
  tags_all                  = var.tags_all
  ipv4_prefix_count         = var.ipv4_prefix_count
  private_ip_list_enabled   = var.private_ip_list_enabled
  ipv6_address_count        = var.ipv6_address_count
  private_ip_list           = var.private_ip_list
  subnet_id                 = var.subnet_id
  private_dns_name          = var.private_dns_name
  ipv4_prefixes             = var.ipv4_prefixes
  ipv6_address_list         = var.ipv6_address_list
  ipv6_address_list_enabled = var.ipv6_address_list_enabled
  owner_id                  = var.owner_id
  private_ips_count         = var.private_ips_count
  ipv6_addresses            = var.ipv6_addresses
  description               = var.description
  device_index              = var.device_index
  private_ips               = var.private_ips
  arn                       = var.arn
  instance                  = var.instance
  interface_type            = var.interface_type
  security_groups           = var.security_groups
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ipv6_addresses" {
  description = "(Optional) One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying ipv6_address_count."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description for the network interface."
  type        = string
  default     = ""
}
variable "device_index" {
  description = "(Required) Integer to define the devices index.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "private_ips" {
  description = "(Optional) List of private IPs to assign to the ENI without regard to order."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the network interface."
  type        = string
  default     = ""
}
variable "instance" {
  description = "(Required) ID of the instance to attach to."
  type        = string
}
variable "interface_type" {
  description = "(Optional) Type of network interface to create. Set to efa for Elastic Fabric Adapter. Changing interface_type will cause the resource to be destroyed and re-created."
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Optional) List of security group IDs to assign to the ENI."
  type        = string
  default     = ""
}
variable "attachment" {
  description = "(Optional) Configuration block to define the attachment of the ENI. See Attachment below for more details!"
  type        = string
  default     = ""
}
variable "ipv6_prefix_count" {
  description = "(Optional) Number of IPv6 prefixes that AWS automatically assigns to the network interface."
  type        = string
  default     = ""
}
variable "mac_address" {
  description = "MAC address of the network interface."
  type        = string
  default     = ""
}
variable "source_dest_check" {
  description = "(Optional) Whether to enable source destination checking for the ENI. Default true."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the network interface."
  type        = string
  default     = ""
}
variable "ipv6_prefixes" {
  description = "(Optional) One or more IPv6 prefixes assigned to the network interface."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.AttachmentThe attachment block supports the following:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "ipv4_prefix_count" {
  description = "(Optional) Number of IPv4 prefixes that AWS automatically assigns to the network interface."
  type        = string
  default     = ""
}
variable "private_ip_list_enabled" {
  description = "(Optional) Whether private_ip_list is allowed and controls the IPs to assign to the ENI and private_ips and private_ips_count become read-only. Default false."
  type        = string
  default     = ""
}
variable "ipv6_address_count" {
  description = "(Optional) Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific ipv6_addresses. If your subnet has the AssignIpv6AddressOnCreation attribute set to true, you can specify 0 to override this setting."
  type        = string
  default     = ""
}
variable "private_ip_list" {
  description = "(Optional) List of private IPs to assign to the ENI in sequential order. Requires setting private_ip_list_enabled to true."
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Required) Subnet ID to create the ENI in."
  type        = string
}
variable "private_dns_name" {
  description = "Private DNS name of the network interface (IPv4)."
  type        = string
  default     = ""
}
variable "ipv4_prefixes" {
  description = "(Optional) One or more IPv4 prefixes assigned to the network interface."
  type        = string
  default     = ""
}
variable "ipv6_address_list" {
  description = "(Optional) List of private IPs to assign to the ENI in sequential order."
  type        = string
  default     = ""
}
variable "ipv6_address_list_enabled" {
  description = "(Optional) Whether ipv6_address_list is allowed and controls the IPs to assign to the ENI and ipv6_addresses and ipv6_address_count become read-only. Default false."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  type        = string
  default     = ""
}
variable "private_ips_count" {
  description = "(Optional) Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + private_ips_count, as a primary private IP will be assiged to an ENI by default."
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
output "private_ips" {
  description = "(Optional) List of private IPs to assign to the ENI without regard to order."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.private_ips
}
output "description" {
  description = "(Optional) Description for the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.description
}
output "device_index" {
  description = "(Required) Integer to define the devices index.In addition to all arguments above, the following attributes are exported:"
  value       = aws_network_interface.markdown.aws_network_interface.markdown.device_index
}
output "arn" {
  description = "ARN of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.arn
}
output "instance" {
  description = "(Required) ID of the instance to attach to."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.instance
}
output "interface_type" {
  description = "(Optional) Type of network interface to create. Set to efa for Elastic Fabric Adapter. Changing interface_type will cause the resource to be destroyed and re-created."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.interface_type
}
output "security_groups" {
  description = "(Optional) List of security group IDs to assign to the ENI."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.security_groups
}
output "ipv6_prefix_count" {
  description = "(Optional) Number of IPv6 prefixes that AWS automatically assigns to the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv6_prefix_count
}
output "mac_address" {
  description = "MAC address of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.mac_address
}
output "attachment" {
  description = "(Optional) Configuration block to define the attachment of the ENI. See Attachment below for more details!"
  value       = aws_network_interface.markdown.aws_network_interface.markdown.attachment
}
output "source_dest_check" {
  description = "(Optional) Whether to enable source destination checking for the ENI. Default true."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.source_dest_check
}
output "id" {
  description = "ID of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.id
}
output "ipv6_prefixes" {
  description = "(Optional) One or more IPv6 prefixes assigned to the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv6_prefixes
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.AttachmentThe attachment block supports the following:"
  value       = aws_network_interface.markdown.aws_network_interface.markdown.tags
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.tags_all
}
output "ipv4_prefix_count" {
  description = "(Optional) Number of IPv4 prefixes that AWS automatically assigns to the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv4_prefix_count
}
output "private_ip_list_enabled" {
  description = "(Optional) Whether private_ip_list is allowed and controls the IPs to assign to the ENI and private_ips and private_ips_count become read-only. Default false."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.private_ip_list_enabled
}
output "ipv6_address_count" {
  description = "(Optional) Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific ipv6_addresses. If your subnet has the AssignIpv6AddressOnCreation attribute set to true, you can specify 0 to override this setting."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv6_address_count
}
output "private_ip_list" {
  description = "(Optional) List of private IPs to assign to the ENI in sequential order. Requires setting private_ip_list_enabled to true."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.private_ip_list
}
output "subnet_id" {
  description = "(Required) Subnet ID to create the ENI in."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.subnet_id
}
output "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.owner_id
}
output "private_dns_name" {
  description = "Private DNS name of the network interface (IPv4)."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.private_dns_name
}
output "ipv4_prefixes" {
  description = "(Optional) One or more IPv4 prefixes assigned to the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv4_prefixes
}
output "ipv6_address_list" {
  description = "(Optional) List of private IPs to assign to the ENI in sequential order."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv6_address_list
}
output "ipv6_address_list_enabled" {
  description = "(Optional) Whether ipv6_address_list is allowed and controls the IPs to assign to the ENI and ipv6_addresses and ipv6_address_count become read-only. Default false."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv6_address_list_enabled
}
output "private_ips_count" {
  description = "(Optional) Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + private_ips_count, as a primary private IP will be assiged to an ENI by default."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.private_ips_count
}
output "ipv6_addresses" {
  description = "(Optional) One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying ipv6_address_count."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.ipv6_addresses
}
output "owner_id" {
  description = "AWS account ID of the owner of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.owner_id
}
output "private_dns_name" {
  description = "Private DNS name of the network interface (IPv4)."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.private_dns_name
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.tags_all
}
output "arn" {
  description = "ARN of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.arn
}
output "id" {
  description = "ID of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.id
}
output "mac_address" {
  description = "MAC address of the network interface."
  value       = aws_network_interface.markdown.aws_network_interface.markdown.mac_address
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
      "kind/name"                   = "aws_network_interface.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
