resource "aws_vpc_dhcp_options" "aws_vpc_dhcp_options" {
  domain_name                                                                           = var.domain_name
  netbios_node_type                                                                     = var.netbios_node_type
  tags                                                                                  = var.tags
  In most cases unless you're configuring your own DNS you'll want to set               = var.In most cases unless you're configuring your own DNS you'll want to set 
  To actually use the DHCP Options Set you need to associate it to a VPC using          = var.To actually use the DHCP Options Set you need to associate it to a VPC using 
  arn                                                                                   = var.arn
  id                                                                                    = var.id
  netbios_name_servers                                                                  = var.netbios_name_servers
  ntp_servers                                                                           = var.ntp_servers
  owner_id                                                                              = var.owner_id
  If you delete a DHCP Options Set, all VPCs using it will be associated to AWS's       = var.If you delete a DHCP Options Set, all VPCs using it will be associated to AWS's 
  Notice that all arguments are optional but you have to specify at least one argument. = var.Notice that all arguments are optional but you have to specify at least one argument.
  domain_name_servers                                                                   = var.domain_name_servers
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_id" {
  description = "The ID of the AWS account that owns the DHCP options set."
  type        = string
}
variable "If you delete a DHCP Options Set, all VPCs using it will be associated to AWS's " {
  description = "default DHCP Option Set."
  type        = string
}
variable "Notice that all arguments are optional but you have to specify at least one argument." {
  description = ""
  type        = string
}
variable "domain_name_servers" {
  description = ", netbios_name_servers, ntp_servers are limited by AWS to maximum four servers only."
  type        = string
}
variable "id" {
  description = "The ID of the DHCP Options Set."
  type        = string
}
variable "netbios_name_servers" {
  description = "(Optional) List of NETBIOS name servers."
  type        = string
}
variable "ntp_servers" {
  description = "(Optional) List of NTP servers to configure."
  type        = string
}
variable "In most cases unless you're configuring your own DNS you'll want to set " {
  description = "domain_name_servers to AmazonProvidedDNS.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "To actually use the DHCP Options Set you need to associate it to a VPC using " {
  description = "aws_vpc_dhcp_options_association."
  type        = string
}
variable "arn" {
  description = "The ARN of the DHCP Options Set."
  type        = string
}
variable "domain_name" {
  description = "(Optional) the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the search value in the /etc/resolv.conf file."
  type        = string
}
variable "netbios_node_type" {
  description = "(Optional) The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see RFC 2132."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Remarks"
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
output "Notice that all arguments are optional but you have to specify at least one argument." {
  description = ""
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.Notice that all arguments are optional but you have to specify at least one argument.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name_servers" {
  description = ", netbios_name_servers, ntp_servers are limited by AWS to maximum four servers only."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.domain_name_servers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the DHCP Options Set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "netbios_name_servers" {
  description = "(Optional) List of NETBIOS name servers."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.netbios_name_servers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ntp_servers" {
  description = "(Optional) List of NTP servers to configure."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.ntp_servers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the DHCP options set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "If you delete a DHCP Options Set, all VPCs using it will be associated to AWS's " {
  description = "default DHCP Option Set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.If you delete a DHCP Options Set, all VPCs using it will be associated to AWS's 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "To actually use the DHCP Options Set you need to associate it to a VPC using " {
  description = "aws_vpc_dhcp_options_association."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.To actually use the DHCP Options Set you need to associate it to a VPC using 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the DHCP Options Set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "(Optional) the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the search value in the /etc/resolv.conf file."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "netbios_node_type" {
  description = "(Optional) The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see RFC 2132."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.netbios_node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Remarks"
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "In most cases unless you're configuring your own DNS you'll want to set " {
  description = "domain_name_servers to AmazonProvidedDNS.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.In most cases unless you're configuring your own DNS you'll want to set 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the DHCP Options Set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the DHCP Options Set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the DHCP options set."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.AWS User Guide."
  value       = aws_vpc_dhcp_options.aws_vpc_dhcp_options.tags_all
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
      "kind/name"                   = "aws_vpc_dhcp_options"
      "kind/version"                = "v0.1.0"
    }
  }
}
