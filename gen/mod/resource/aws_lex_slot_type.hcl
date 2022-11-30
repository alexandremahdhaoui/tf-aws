resource "aws_lex_slot_type" "aws_lex_slot_type" {
  update                   = var.update
  checksum                 = var.checksum
  create                   = var.create
  enumeration_value        = var.enumeration_value
  name                     = var.name
  last_updated_date        = var.last_updated_date
  synonyms                 = var.synonyms
  value                    = var.value
  value_selection_strategy = var.value_selection_strategy
  create_version           = var.create_version
  created_date             = var.created_date
  delete                   = var.delete
  description              = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "checksum" {
  description = "Checksum identifying the version of the slot type that was created. The checksum is\nnot included as an argument because the resource will add it automatically when updating the slot type."
  type        = string
}
variable "create" {
  description = "(Default 1m)"
  type        = string
}
variable "enumeration_value" {
  description = "enumeration_value."
  type        = string
}
variable "name" {
  description = "(Required) The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length."
  type        = string
}
variable "update" {
  description = "(Default 1m)"
  type        = string
}
variable "value_selection_strategy" {
  description = "ORIGINAL_VALUETOP_RESOLUTIONORIGINAL_VALUE.enumeration_value"
  type        = string
}
variable "create_version" {
  description = "(Optional)\nDetermines if a new slot type version is created when the initial resource is created and on each\nupdate. Defaults to false."
  type        = string
}
variable "created_date" {
  description = "The date when the slot type version was created."
  type        = string
}
variable "delete" {
  description = "(Default 5m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "description" {
  description = "(Optional) A description of the slot type. Must be less than or equal to 200 characters in length."
  type        = string
}
variable "last_updated_date" {
  description = "The date when the $LATEST version of this slot type was updated."
  type        = string
}
variable "synonyms" {
  description = "(Optional) Additional values related to the slot type value. Each item must be less than or equal to 140 characters in length."
  type        = string
}
variable "value" {
  description = "(Required) The value of the slot type. Must be less than or equal to 140 characters in length.TimeoutsConfiguration options:"
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
output "synonyms" {
  description = "(Optional) Additional values related to the slot type value. Each item must be less than or equal to 140 characters in length."
  value       = aws_lex_slot_type.aws_lex_slot_type.synonyms
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) The value of the slot type. Must be less than or equal to 140 characters in length.TimeoutsConfiguration options:"
  value       = aws_lex_slot_type.aws_lex_slot_type.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value_selection_strategy" {
  description = "ORIGINAL_VALUETOP_RESOLUTIONORIGINAL_VALUE.enumeration_value"
  value       = aws_lex_slot_type.aws_lex_slot_type.value_selection_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_version" {
  description = "(Optional)\nDetermines if a new slot type version is created when the initial resource is created and on each\nupdate. Defaults to false."
  value       = aws_lex_slot_type.aws_lex_slot_type.create_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "The date when the slot type version was created."
  value       = aws_lex_slot_type.aws_lex_slot_type.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 5m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_lex_slot_type.aws_lex_slot_type.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A description of the slot type. Must be less than or equal to 200 characters in length."
  value       = aws_lex_slot_type.aws_lex_slot_type.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "The date when the $LATEST version of this slot type was updated."
  value       = aws_lex_slot_type.aws_lex_slot_type.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checksum" {
  description = "Checksum identifying the version of the slot type that was created. The checksum is\nnot included as an argument because the resource will add it automatically when updating the slot type."
  value       = aws_lex_slot_type.aws_lex_slot_type.checksum
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 1m)"
  value       = aws_lex_slot_type.aws_lex_slot_type.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enumeration_value" {
  description = "enumeration_value."
  value       = aws_lex_slot_type.aws_lex_slot_type.enumeration_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length."
  value       = aws_lex_slot_type.aws_lex_slot_type.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 1m)"
  value       = aws_lex_slot_type.aws_lex_slot_type.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checksum" {
  description = "Checksum identifying the version of the slot type that was created. The checksum is\nnot included as an argument because the resource will add it automatically when updating the slot type."
  value       = aws_lex_slot_type.aws_lex_slot_type.checksum
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "The date when the slot type version was created."
  value       = aws_lex_slot_type.aws_lex_slot_type.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "The date when the $LATEST version of this slot type was updated."
  value       = aws_lex_slot_type.aws_lex_slot_type.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "The version of the slot type."
  value       = aws_lex_slot_type.aws_lex_slot_type.version
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
      "kind/name"                   = "aws_lex_slot_type"
      "kind/version"                = "v0.1.0"
    }
  }
}
