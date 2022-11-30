resource "aws_networkfirewall_firewall" "aws_networkfirewall_firewall" {
  availability_zone                 = var.availability_zone
  subnet_id                         = var.subnet_id
  tags                              = var.tags
  vpc_id                            = var.vpc_id
  subnet_change_protection          = var.subnet_change_protection
  subnet_mapping                    = var.subnet_mapping
  sync_states                       = var.sync_states
  tags_all                          = var.tags_all
  delete_protection                 = var.delete_protection
  endpoint_id                       = var.endpoint_id
  firewall_policy_change_protection = var.firewall_policy_change_protection
  name                              = var.name
  arn                               = var.arn
  attachment                        = var.attachment
  description                       = var.description
  firewall_policy_arn               = var.firewall_policy_arn
  firewall_status                   = var.firewall_status
  id                                = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "endpoint_id" {
  description = "The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint."
  type        = string
}
variable "firewall_policy_change_protection" {
  description = "(Option) A boolean flag indicating whether it is possible to change the associated firewall policy. Defaults to false."
  type        = string
}
variable "name" {
  description = "(Required, Forces new resource) A friendly name of the firewall."
  type        = string
}
variable "subnet_change_protection" {
  description = "(Optional) A boolean flag indicating whether it is possible to change the associated subnet(s). Defaults to false."
  type        = string
}
variable "subnet_mapping" {
  description = "(Required) Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details."
  type        = string
}
variable "sync_states" {
  description = ""
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "delete_protection" {
  description = "(Optional) A boolean flag indicating whether it is possible to delete the firewall. Defaults to false."
  type        = string
}
variable "attachment" {
  description = ""
  type        = string
}
variable "description" {
  description = "(Optional) A friendly description of the firewall."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall."
  type        = string
}
variable "firewall_status" {
  description = "Nested list of information about the current status of the firewall."
  type        = string
}
variable "id" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall."
  type        = string
}
variable "firewall_policy_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the VPC Firewall policy."
  type        = string
}
variable "subnet_id" {
  description = "The unique identifier of the subnet that you've specified to be used for a firewall endpoint."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of resource tags to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "vpc_id" {
  description = "(Required, Forces new resource) The unique identifier of the VPC where AWS Network Firewall should create the firewall.Subnet MappingThe subnet_mapping block supports the following arguments:"
  type        = string
}
variable "availability_zone" {
  description = "The Availability Zone where the subnet is configured."
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
  description = "(Required, Forces new resource) A friendly name of the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_change_protection" {
  description = "(Optional) A boolean flag indicating whether it is possible to change the associated subnet(s). Defaults to false."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.subnet_change_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_mapping" {
  description = "(Required) Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.subnet_mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sync_states" {
  description = ""
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.sync_states
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_protection" {
  description = "(Optional) A boolean flag indicating whether it is possible to delete the firewall. Defaults to false."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.delete_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint_id" {
  description = "The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.endpoint_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firewall_policy_change_protection" {
  description = "(Option) A boolean flag indicating whether it is possible to change the associated firewall policy. Defaults to false."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.firewall_policy_change_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attachment" {
  description = ""
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.attachment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A friendly description of the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firewall_policy_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the VPC Firewall policy."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.firewall_policy_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firewall_status" {
  description = "Nested list of information about the current status of the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.firewall_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Required, Forces new resource) The unique identifier of the VPC where AWS Network Firewall should create the firewall.Subnet MappingThe subnet_mapping block supports the following arguments:"
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The Availability Zone where the subnet is configured."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "The unique identifier of the subnet that you've specified to be used for a firewall endpoint."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of resource tags to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint_id" {
  description = "The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.endpoint_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sync_states" {
  description = ""
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.sync_states
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update_token" {
  description = "A string token used when updating a firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.update_token
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attachment" {
  description = ""
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.attachment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The Availability Zone where the subnet is configured."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firewall_status" {
  description = "Nested list of information about the current status of the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.firewall_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "The unique identifier of the subnet that you've specified to be used for a firewall endpoint."
  value       = aws_networkfirewall_firewall.aws_networkfirewall_firewall.subnet_id
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
      "kind/name"                   = "aws_networkfirewall_firewall"
      "kind/version"                = "v0.1.0"
    }
  }
}
