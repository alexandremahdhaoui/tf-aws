resource "aws_cloudfront_field_level_encryption_config" "aws_cloudfront_field_level_encryption_config" {
  query_arg_profile_config                  = var.query_arg_profile_config
  caller_reference                          = var.caller_reference
  content_type                              = var.content_type
  content_type_profile_config               = var.content_type_profile_config
  content_type_profiles                     = var.content_type_profiles
  etag                                      = var.etag
  profile_id                                = var.profile_id
  comment                                   = var.comment
  format                                    = var.format
  forward_when_content_type_is_unknown      = var.forward_when_content_type_is_unknown
  forward_when_query_arg_profile_is_unknown = var.forward_when_query_arg_profile_is_unknown
  query_arg                                 = var.query_arg
  query_arg_profiles                        = var.query_arg_profiles
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the Field Level Encryption Config."
  type        = string
}
variable "content_type" {
  description = "(Required) he content type for a field-level encryption content type-profile mapping. Valid value is application/x-www-form-urlencoded."
  type        = string
}
variable "content_type_profile_config" {
  description = "(Required) Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use."
  type        = string
}
variable "content_type_profiles" {
  description = "(Required) Object that contains an attribute items that contains the list of configurations for a field-level encryption content type-profile. See Content Type Profile.Content Type Profile"
  type        = string
}
variable "etag" {
  description = "The current version of the Field Level Encryption Config. For example: E2QWRUHAPOMQZL."
  type        = string
}
variable "profile_id" {
  description = "(Required) ID of profile to use for field-level encryption query argument-profile mapping"
  type        = string
}
variable "query_arg_profile_config" {
  description = "(Required) Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.Content Type Profile Config"
  type        = string
}
variable "comment" {
  description = "(Optional) An optional comment about the Field Level Encryption Config."
  type        = string
  default     = ""
}
variable "format" {
  description = "(Required) The format for a field-level encryption content type-profile mapping. Valid value is URLEncoded."
  type        = string
}
variable "forward_when_content_type_is_unknown" {
  description = "(Required) specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown."
  type        = string
}
variable "forward_when_query_arg_profile_is_unknown" {
  description = "(Required) Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown."
  type        = string
}
variable "query_arg" {
  description = "(Required) Query argument for field-level encryption query argument-profile mapping.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "query_arg_profiles" {
  description = "(Optional) Object that contains an attribute items that contains the list ofrofiles specified for query argument-profile mapping for field-level encryption. see Query Arg Profile.Query Arg Profile"
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
output "content_type_profile_config" {
  description = "(Required) Content Type Profile Config specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.content_type_profile_config
}
output "content_type_profiles" {
  description = "(Required) Object that contains an attribute items that contains the list of configurations for a field-level encryption content type-profile. See Content Type Profile.Content Type Profile"
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.content_type_profiles
}
output "etag" {
  description = "The current version of the Field Level Encryption Config. For example: E2QWRUHAPOMQZL."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.etag
}
output "profile_id" {
  description = "(Required) ID of profile to use for field-level encryption query argument-profile mapping"
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.profile_id
}
output "query_arg_profile_config" {
  description = "(Required) Query Arg Profile Config that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.Content Type Profile Config"
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.query_arg_profile_config
}
output "caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the Field Level Encryption Config."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.caller_reference
}
output "content_type" {
  description = "(Required) he content type for a field-level encryption content type-profile mapping. Valid value is application/x-www-form-urlencoded."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.content_type
}
output "forward_when_content_type_is_unknown" {
  description = "(Required) specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.forward_when_content_type_is_unknown
}
output "forward_when_query_arg_profile_is_unknown" {
  description = "(Required) Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.forward_when_query_arg_profile_is_unknown
}
output "query_arg" {
  description = "(Required) Query argument for field-level encryption query argument-profile mapping.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.query_arg
}
output "query_arg_profiles" {
  description = "(Optional) Object that contains an attribute items that contains the list ofrofiles specified for query argument-profile mapping for field-level encryption. see Query Arg Profile.Query Arg Profile"
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.query_arg_profiles
}
output "comment" {
  description = "(Optional) An optional comment about the Field Level Encryption Config."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.comment
}
output "format" {
  description = "(Required) The format for a field-level encryption content type-profile mapping. Valid value is URLEncoded."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.format
}
output "caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the Field Level Encryption Config."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.caller_reference
}
output "etag" {
  description = "The current version of the Field Level Encryption Config. For example: E2QWRUHAPOMQZL."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.etag
}
output "id" {
  description = "The identifier for the Field Level Encryption Config. For example: K3D5EWEUDCCXON."
  value       = aws_cloudfront_field_level_encryption_config.aws_cloudfront_field_level_encryption_config.id
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
      "kind/name"                   = "aws_cloudfront_field_level_encryption_config"
      "kind/version"                = "v0.1.0"
    }
  }
}
