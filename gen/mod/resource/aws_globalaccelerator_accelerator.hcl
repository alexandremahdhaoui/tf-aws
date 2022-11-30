resource "aws_globalaccelerator_accelerator" "aws_globalaccelerator_accelerator" {
  create              = var.create
  flow_logs_s3_prefix = var.flow_logs_s3_prefix
  hosted_zone_id      = var.hosted_zone_id
  ip_family           = var.ip_family
  flow_logs_s3_bucket = var.flow_logs_s3_bucket
  ip_sets             = var.ip_sets
  tags                = var.tags
  tags_all            = var.tags_all
  attributes          = var.attributes
  flow_logs_enabled   = var.flow_logs_enabled
  id                  = var.id
  ip_addresses        = var.ip_addresses
  name                = var.name
  dns_name            = var.dns_name
  enabled             = var.enabled
  ip_address_type     = var.ip_address_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "flow_logs_s3_prefix" {
  description = "(Optional) The prefix for the location in the Amazon S3 bucket for the flow logs. Required if flow_logs_enabled is true.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "hosted_zone_id" {
  description = "Alias Resource Record SetZ2BJ6XQ5FK7U4H."
  type        = string
}
variable "ip_family" {
  description = "The type of IP addresses included in this IP set.TimeoutsConfiguration options:"
  type        = string
}
variable "flow_logs_s3_bucket" {
  description = "(Optional) The name of the Amazon S3 bucket for the flow logs. Required if flow_logs_enabled is true."
  type        = string
}
variable "ip_sets" {
  description = "IP address set associated with the accelerator."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.strongattributes supports the following attributes:"
  type        = string
}
variable "attributes" {
  description = "(Optional) The attributes of the accelerator. Fields documented below."
  type        = string
}
variable "flow_logs_enabled" {
  description = "(Optional) Indicates whether flow logs are enabled. Defaults to false. Valid values: true, false."
  type        = string
}
variable "id" {
  description = "The Amazon Resource Name (ARN) of the accelerator."
  type        = string
}
variable "ip_addresses" {
  description = "A list of IP addresses in the IP address set."
  type        = string
}
variable "name" {
  description = "(Required) The name of the accelerator."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.strongip_sets exports the following attributes:"
  type        = string
}
variable "dns_name" {
  description = "The DNS name of the accelerator. For example, a5d53ff5ee6bca4ce.awsglobalaccelerator.com."
  type        = string
}
variable "enabled" {
  description = "(Optional) Indicates whether the accelerator is enabled. Defaults to true. Valid values: true, false."
  type        = string
}
variable "ip_address_type" {
  description = "(Optional) The value for the address type. Defaults to IPV4. Valid values: IPV4, DUAL_STACK."
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
output "flow_logs_s3_bucket" {
  description = "(Optional) The name of the Amazon S3 bucket for the flow logs. Required if flow_logs_enabled is true."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.flow_logs_s3_bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_sets" {
  description = "IP address set associated with the accelerator."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.ip_sets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.strongattributes supports the following attributes:"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.strongip_sets exports the following attributes:"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attributes" {
  description = "(Optional) The attributes of the accelerator. Fields documented below."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "flow_logs_enabled" {
  description = "(Optional) Indicates whether flow logs are enabled. Defaults to false. Valid values: true, false."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.flow_logs_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the accelerator."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_addresses" {
  description = "A list of IP addresses in the IP address set."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.ip_addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the accelerator."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "The DNS name of the accelerator. For example, a5d53ff5ee6bca4ce.awsglobalaccelerator.com."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional) Indicates whether the accelerator is enabled. Defaults to true. Valid values: true, false."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_address_type" {
  description = "(Optional) The value for the address type. Defaults to IPV4. Valid values: IPV4, DUAL_STACK."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.ip_address_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "flow_logs_s3_prefix" {
  description = "(Optional) The prefix for the location in the Amazon S3 bucket for the flow logs. Required if flow_logs_enabled is true.In addition to all arguments above, the following attributes are exported:"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.flow_logs_s3_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone_id" {
  description = "Alias Resource Record SetZ2BJ6XQ5FK7U4H."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.hosted_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_family" {
  description = "The type of IP addresses included in this IP set.TimeoutsConfiguration options:"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.ip_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "The DNS name of the accelerator. For example, a5d53ff5ee6bca4ce.awsglobalaccelerator.com."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_family" {
  description = "The type of IP addresses included in this IP set.TimeoutsConfiguration options:"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.ip_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_sets" {
  description = "IP address set associated with the accelerator."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.ip_sets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the accelerator."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_addresses" {
  description = "A list of IP addresses in the IP address set."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.ip_addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.strongip_sets exports the following attributes:"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone_id" {
  description = "Alias Resource Record SetZ2BJ6XQ5FK7U4H."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.hosted_zone_id
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
      "kind/name"                   = "aws_globalaccelerator_accelerator"
      "kind/version"                = "v0.1.0"
    }
  }
}
