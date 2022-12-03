resource "aws_vpc_ipam_pool" "aws_vpc_ipam_pool" {
  description                       = var.description
  source_ipam_pool_id               = var.source_ipam_pool_id
  state                             = var.state
  allocation_min_netmask_length     = var.allocation_min_netmask_length
  allocation_default_netmask_length = var.allocation_default_netmask_length
  aws_service                       = var.aws_service
  id                                = var.id
  address_family                    = var.address_family
  arn                               = var.arn
  ipam_scope_id                     = var.ipam_scope_id
  locale                            = var.locale
  tags                              = var.tags
  allocation_max_netmask_length     = var.allocation_max_netmask_length
  auto_import                       = var.auto_import
  publicly_advertisable             = var.publicly_advertisable
  allocation_resource_tags          = var.allocation_resource_tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "address_family" {
  description = "(Optional) The IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool."
  type        = string
  default     = ""
}
variable "allocation_default_netmask_length" {
  description = "(Optional) A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation)."
  type        = string
  default     = ""
}
variable "aws_service" {
  description = "(Optional) Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: ec2."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the IPAM"
  type        = string
}
variable "allocation_max_netmask_length" {
  description = "(Optional) The maximum netmask length that will be required for CIDR allocations in this pool."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of IPAM"
  type        = string
}
variable "ipam_scope_id" {
  description = "(Optional) The ID of the scope in which you would like to create the IPAM pool."
  type        = string
  default     = ""
}
variable "locale" {
  description = "(Optional) The locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as us-east-1."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "allocation_resource_tags" {
  description = "(Optional) Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant."
  type        = string
  default     = ""
}
variable "auto_import" {
  description = "(Optional) If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall\nwithin the CIDR range in the pool."
  type        = string
  default     = ""
}
variable "publicly_advertisable" {
  description = "(Optional) Defines whether or not IPv6 pool space is publicly advertisable over the internet. This option is not available for IPv4 pool space."
  type        = string
  default     = ""
}
variable "allocation_min_netmask_length" {
  description = "(Optional) The minimum netmask length that will be required for CIDR allocations in this pool."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A description for the IPAM pool."
  type        = string
  default     = ""
}
variable "source_ipam_pool_id" {
  description = "(Optional) The ID of the source IPAM pool. Use this argument to create a child pool within an existing pool."
  type        = string
  default     = ""
}
variable "state" {
  description = "The ID of the IPAM"
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
output "locale" {
  description = "(Optional) The locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as us-east-1."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.locale
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.tags
}
output "allocation_max_netmask_length" {
  description = "(Optional) The maximum netmask length that will be required for CIDR allocations in this pool."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.allocation_max_netmask_length
}
output "arn" {
  description = "Amazon Resource Name (ARN) of IPAM"
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.arn
}
output "ipam_scope_id" {
  description = "(Optional) The ID of the scope in which you would like to create the IPAM pool."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.ipam_scope_id
}
output "allocation_resource_tags" {
  description = "(Optional) Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.allocation_resource_tags
}
output "auto_import" {
  description = "(Optional) If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall\nwithin the CIDR range in the pool."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.auto_import
}
output "publicly_advertisable" {
  description = "(Optional) Defines whether or not IPv6 pool space is publicly advertisable over the internet. This option is not available for IPv4 pool space."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.publicly_advertisable
}
output "state" {
  description = "The ID of the IPAM"
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.state
}
output "allocation_min_netmask_length" {
  description = "(Optional) The minimum netmask length that will be required for CIDR allocations in this pool."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.allocation_min_netmask_length
}
output "description" {
  description = "(Optional) A description for the IPAM pool."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.description
}
output "source_ipam_pool_id" {
  description = "(Optional) The ID of the source IPAM pool. Use this argument to create a child pool within an existing pool."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.source_ipam_pool_id
}
output "id" {
  description = "The ID of the IPAM"
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.id
}
output "address_family" {
  description = "(Optional) The IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.address_family
}
output "allocation_default_netmask_length" {
  description = "(Optional) A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation)."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.allocation_default_netmask_length
}
output "aws_service" {
  description = "(Optional) Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: ec2."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.aws_service
}
output "arn" {
  description = "Amazon Resource Name (ARN) of IPAM"
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.arn
}
output "id" {
  description = "The ID of the IPAM"
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.id
}
output "state" {
  description = "The ID of the IPAM"
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.state
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_vpc_ipam_pool.aws_vpc_ipam_pool.tags_all
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
      "kind/name"                   = "aws_vpc_ipam_pool"
      "kind/version"                = "v0.1.0"
    }
  }
}
