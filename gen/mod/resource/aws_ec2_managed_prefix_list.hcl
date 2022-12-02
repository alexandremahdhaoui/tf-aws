resource "aws_ec2_managed_prefix_list" "aws_ec2_managed_prefix_list" {
  arn            = var.arn
  entry          = var.entry
  id             = var.id
  owner_id       = var.owner_id
  tags           = var.tags
  tags_all       = var.tags_all
  address_family = var.address_family
  cidr           = var.cidr
  description    = var.description
  max_entries    = var.max_entries
  name           = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.entry"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "address_family" {
  description = "(Required, Forces new resource) Address family (IPv4 or IPv6) of this prefix list."
  type        = string
}
variable "cidr" {
  description = "(Required) CIDR block of this entry."
  type        = string
}
variable "description" {
  description = "(Optional) Description of this entry. Due to API limitations, updating only the description of an existing entry requires temporarily removing and re-adding the entry.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "max_entries" {
  description = "(Required) Maximum number of entries that this prefix list can contain."
  type        = string
}
variable "name" {
  description = "(Required) Name of this resource. The name must not start with com.amazonaws."
  type        = string
}
variable "arn" {
  description = "ARN of the prefix list."
  type        = string
}
variable "entry" {
  description = "(Optional) Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the prefix list."
  type        = string
}
variable "owner_id" {
  description = "ID of the AWS account that owns this prefix list."
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
output "id" {
  description = "ID of the prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.id
}
output "owner_id" {
  description = "ID of the AWS account that owns this prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.owner_id
}
output "arn" {
  description = "ARN of the prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.arn
}
output "entry" {
  description = "(Optional) Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.entry
}
output "description" {
  description = "(Optional) Description of this entry. Due to API limitations, updating only the description of an existing entry requires temporarily removing and re-adding the entry.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.description
}
output "max_entries" {
  description = "(Required) Maximum number of entries that this prefix list can contain."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.max_entries
}
output "name" {
  description = "(Required) Name of this resource. The name must not start with com.amazonaws."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.name
}
output "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.entry"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.tags
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.tags_all
}
output "address_family" {
  description = "(Required, Forces new resource) Address family (IPv4 or IPv6) of this prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.address_family
}
output "cidr" {
  description = "(Required) CIDR block of this entry."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.cidr
}
output "arn" {
  description = "ARN of the prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.arn
}
output "id" {
  description = "ID of the prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.id
}
output "owner_id" {
  description = "ID of the AWS account that owns this prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.owner_id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.tags_all
}
output "version" {
  description = "Latest version of this prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.version
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
      "kind/name"                   = "aws_ec2_managed_prefix_list"
      "kind/version"                = "v0.1.0"
    }
  }
}
