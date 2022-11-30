resource "aws_macie2_custom_data_identifier" "aws_macie2_custom_data_identifier" {
  created_at             = var.created_at
  id                     = var.id
  ignore_words           = var.ignore_words
  maximum_match_distance = var.maximum_match_distance
  name_prefix            = var.name_prefix
  regex                  = var.regex
  tags                   = var.tags
  deleted                = var.deleted
  description            = var.description
  keywords               = var.keywords
  name                   = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ignore_words" {
  description = "(Optional) An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive."
  type        = string
}
variable "maximum_match_distance" {
  description = "(Optional) The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50."
  type        = string
}
variable "created_at" {
  description = "The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created."
  type        = string
}
variable "id" {
  description = "The unique identifier (ID) of the macie custom data identifier."
  type        = string
}
variable "keywords" {
  description = " (Optional) An array that lists specific character sequences (keywords), one of which must be within proximity (maximum_match_distance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive."
  type        = string
}
variable "name" {
  description = "(Optional) A custom name for the custom data identifier. The name can contain as many as 128 characters. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  type        = string
}
variable "name_prefix" {
  description = " (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "regex" {
  description = "(Optional) The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of key-value pairs that specifies the tags to associate with the custom data identifier.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "deleted" {
  description = "Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier."
  type        = string
}
variable "description" {
  description = "(Optional) A custom description of the custom data identifier. The description can contain as many as 512 characters."
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
output "deleted" {
  description = "Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.deleted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A custom description of the custom data identifier. The description can contain as many as 512 characters."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "keywords" {
  description = " (Optional) An array that lists specific character sequences (keywords), one of which must be within proximity (maximum_match_distance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.keywords
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) A custom name for the custom data identifier. The name can contain as many as 128 characters. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = " (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "regex" {
  description = "(Optional) The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.regex
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of key-value pairs that specifies the tags to associate with the custom data identifier.In addition to all arguments above, the following attributes are exported:"
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique identifier (ID) of the macie custom data identifier."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ignore_words" {
  description = "(Optional) An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.ignore_words
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maximum_match_distance" {
  description = "(Optional) The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.maximum_match_distance
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deleted" {
  description = "Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.deleted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique identifier (ID) of the macie custom data identifier."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the custom data identifier."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created."
  value       = aws_macie2_custom_data_identifier.aws_macie2_custom_data_identifier.created_at
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
      "kind/name"                   = "aws_macie2_custom_data_identifier"
      "kind/version"                = "v0.1.0"
    }
  }
}
