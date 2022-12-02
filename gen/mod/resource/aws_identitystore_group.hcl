resource "aws_identitystore_group" "aws_identitystore_group" {
  group_id          = var.group_id
  identity_store_id = var.identity_store_id
  issuer            = var.issuer
  create            = var.create
  delete            = var.delete
  description       = var.description
  display_name      = var.display_name
  external_ids      = var.external_ids
  id                = var.id
  update            = var.update
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "delete" {
  description = "(Default 90m)"
  type        = string
}
variable "description" {
  description = "(Optional) A string containing the description of the group.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "display_name" {
  description = "(Optional) A string containing the name of the group. This value is commonly displayed when the group is referenced."
  type        = string
}
variable "external_ids" {
  description = "A list of external IDs that contains the identifiers issued to this resource by an external identity provider. See External IDs below.External IDs"
  type        = string
}
variable "id" {
  description = "The identifier issued to this resource by an external identity provider."
  type        = string
}
variable "update" {
  description = "(Default 180m)"
  type        = string
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "identity_store_id" {
  description = "(Required) The globally unique identifier for the identity store."
  type        = string
}
variable "issuer" {
  description = "The issuer for an external identifier.TimeoutsConfiguration options:"
  type        = string
}
variable "group_id" {
  description = "The identifier of the newly created group in the identity store."
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
  description = "The identifier issued to this resource by an external identity provider."
  value       = aws_identitystore_group.aws_identitystore_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 180m)"
  value       = aws_identitystore_group.aws_identitystore_group.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_identitystore_group.aws_identitystore_group.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_identitystore_group.aws_identitystore_group.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A string containing the description of the group.In addition to all arguments above, the following attributes are exported:"
  value       = aws_identitystore_group.aws_identitystore_group.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_name" {
  description = "(Optional) A string containing the name of the group. This value is commonly displayed when the group is referenced."
  value       = aws_identitystore_group.aws_identitystore_group.display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_ids" {
  description = "A list of external IDs that contains the identifiers issued to this resource by an external identity provider. See External IDs below.External IDs"
  value       = aws_identitystore_group.aws_identitystore_group.external_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_id" {
  description = "The identifier of the newly created group in the identity store."
  value       = aws_identitystore_group.aws_identitystore_group.group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity_store_id" {
  description = "(Required) The globally unique identifier for the identity store."
  value       = aws_identitystore_group.aws_identitystore_group.identity_store_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "issuer" {
  description = "The issuer for an external identifier.TimeoutsConfiguration options:"
  value       = aws_identitystore_group.aws_identitystore_group.issuer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_identitystore_group.aws_identitystore_group.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_identitystore_group.aws_identitystore_group.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_ids" {
  description = "A list of external IDs that contains the identifiers issued to this resource by an external identity provider. See External IDs below.External IDs"
  value       = aws_identitystore_group.aws_identitystore_group.external_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_id" {
  description = "The identifier of the newly created group in the identity store."
  value       = aws_identitystore_group.aws_identitystore_group.group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier issued to this resource by an external identity provider."
  value       = aws_identitystore_group.aws_identitystore_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "issuer" {
  description = "The issuer for an external identifier.TimeoutsConfiguration options:"
  value       = aws_identitystore_group.aws_identitystore_group.issuer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 180m)"
  value       = aws_identitystore_group.aws_identitystore_group.update
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
      "kind/name"                   = "aws_identitystore_group"
      "kind/version"                = "v0.1.0"
    }
  }
}