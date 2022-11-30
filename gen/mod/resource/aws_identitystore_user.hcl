resource "aws_identitystore_user" "aws_identitystore_user" {
  honorific_prefix   = var.honorific_prefix
  region             = var.region
  title              = var.title
  type               = var.type
  addresses          = var.addresses
  display_name       = var.display_name
  family_name        = var.family_name
  primary            = var.primary
  profile_url        = var.profile_url
  honorific_suffix   = var.honorific_suffix
  identity_store_id  = var.identity_store_id
  locale             = var.locale
  middle_name        = var.middle_name
  preferred_language = var.preferred_language
  user_name          = var.user_name
  external_ids       = var.external_ids
  issuer             = var.issuer
  phone_numbers      = var.phone_numbers
  postal_code        = var.postal_code
  user_id            = var.user_id
  country            = var.country
  id                 = var.id
  locality           = var.locality
  name               = var.name
  user_type          = var.user_type
  value              = var.value
  emails             = var.emails
  nickname           = var.nickname
  street_address     = var.street_address
  timezone           = var.timezone
  formatted          = var.formatted
  given_name         = var.given_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "postal_code" {
  description = "(Optional) The postal code of the address."
  type        = string
}
variable "user_id" {
  description = "The identifier for this user in the identity store."
  type        = string
}
variable "country" {
  description = "(Optional) The country that this address is in."
  type        = string
}
variable "id" {
  description = "The identifier issued to this resource by an external identity provider."
  type        = string
}
variable "locality" {
  description = "(Optional) The address locality."
  type        = string
}
variable "name" {
  description = "(Required) Details about the user's full name. Detailed below."
  type        = string
}
variable "user_type" {
  description = "(Optional) The user type.addresses Configuration Block"
  type        = string
}
variable "value" {
  description = "(Optional) The user's phone number.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "emails" {
  description = "(Optional) Details about the user's email. At most 1 email is allowed. Detailed below."
  type        = string
}
variable "nickname" {
  description = "(Optional) An alternate name for the user."
  type        = string
}
variable "street_address" {
  description = "(Optional) The street of the address."
  type        = string
}
variable "timezone" {
  description = "(Optional) The user's time zone."
  type        = string
}
variable "formatted" {
  description = "(Optional) The name that is typically displayed when the name is shown for display."
  type        = string
}
variable "given_name" {
  description = "(Required) The given name of the user."
  type        = string
}
variable "honorific_prefix" {
  description = "(Optional) The honorific prefix of the user."
  type        = string
}
variable "region" {
  description = "(Optional) The region of the address."
  type        = string
}
variable "title" {
  description = "(Optional) The user's title."
  type        = string
}
variable "type" {
  description = "(Optional) The type of phone number."
  type        = string
}
variable "addresses" {
  description = "(Optional) Details about the user's address. At most 1 address is allowed. Detailed below."
  type        = string
}
variable "display_name" {
  description = "(Required) The name that is typically displayed when the user is referenced."
  type        = string
}
variable "family_name" {
  description = "(Required) The family name of the user."
  type        = string
}
variable "primary" {
  description = "(Optional) When true, this is the primary phone number associated with the user."
  type        = string
}
variable "profile_url" {
  description = "(Optional) An URL that may be associated with the user."
  type        = string
}
variable "honorific_suffix" {
  description = "(Optional) The honorific suffix of the user."
  type        = string
}
variable "identity_store_id" {
  description = "(Required, Forces new resource) The globally unique identifier for the identity store that this user is in."
  type        = string
}
variable "locale" {
  description = "(Optional) The user's geographical region or location."
  type        = string
}
variable "middle_name" {
  description = "(Optional) The middle name of the user.phone_numbers Configuration Block"
  type        = string
}
variable "preferred_language" {
  description = "(Optional) The preferred language of the user."
  type        = string
}
variable "user_name" {
  description = "(Required, Forces new resource) A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters."
  type        = string
}
variable "external_ids" {
  description = ""
  type        = string
}
variable "issuer" {
  description = "The issuer for an external identifier."
  type        = string
}
variable "phone_numbers" {
  description = "(Optional) Details about the user's phone number. At most 1 phone number is allowed. Detailed below."
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
output "emails" {
  description = "(Optional) Details about the user's email. At most 1 email is allowed. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.emails
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nickname" {
  description = "(Optional) An alternate name for the user."
  value       = aws_identitystore_user.aws_identitystore_user.nickname
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "street_address" {
  description = "(Optional) The street of the address."
  value       = aws_identitystore_user.aws_identitystore_user.street_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timezone" {
  description = "(Optional) The user's time zone."
  value       = aws_identitystore_user.aws_identitystore_user.timezone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "formatted" {
  description = "(Optional) The name that is typically displayed when the name is shown for display."
  value       = aws_identitystore_user.aws_identitystore_user.formatted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "given_name" {
  description = "(Required) The given name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.given_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "honorific_prefix" {
  description = "(Optional) The honorific prefix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "(Optional) The region of the address."
  value       = aws_identitystore_user.aws_identitystore_user.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "title" {
  description = "(Optional) The user's title."
  value       = aws_identitystore_user.aws_identitystore_user.title
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) The type of phone number."
  value       = aws_identitystore_user.aws_identitystore_user.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "addresses" {
  description = "(Optional) Details about the user's address. At most 1 address is allowed. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_name" {
  description = "(Required) The name that is typically displayed when the user is referenced."
  value       = aws_identitystore_user.aws_identitystore_user.display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "family_name" {
  description = "(Required) The family name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.family_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary" {
  description = "(Optional) When true, this is the primary phone number associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.primary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "profile_url" {
  description = "(Optional) An URL that may be associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.profile_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "honorific_suffix" {
  description = "(Optional) The honorific suffix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity_store_id" {
  description = "(Required, Forces new resource) The globally unique identifier for the identity store that this user is in."
  value       = aws_identitystore_user.aws_identitystore_user.identity_store_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "locale" {
  description = "(Optional) The user's geographical region or location."
  value       = aws_identitystore_user.aws_identitystore_user.locale
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "middle_name" {
  description = "(Optional) The middle name of the user.phone_numbers Configuration Block"
  value       = aws_identitystore_user.aws_identitystore_user.middle_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preferred_language" {
  description = "(Optional) The preferred language of the user."
  value       = aws_identitystore_user.aws_identitystore_user.preferred_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_name" {
  description = "(Required, Forces new resource) A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters."
  value       = aws_identitystore_user.aws_identitystore_user.user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_ids" {
  description = ""
  value       = aws_identitystore_user.aws_identitystore_user.external_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "issuer" {
  description = "The issuer for an external identifier."
  value       = aws_identitystore_user.aws_identitystore_user.issuer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "phone_numbers" {
  description = "(Optional) Details about the user's phone number. At most 1 phone number is allowed. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.phone_numbers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "postal_code" {
  description = "(Optional) The postal code of the address."
  value       = aws_identitystore_user.aws_identitystore_user.postal_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_id" {
  description = "The identifier for this user in the identity store."
  value       = aws_identitystore_user.aws_identitystore_user.user_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "country" {
  description = "(Optional) The country that this address is in."
  value       = aws_identitystore_user.aws_identitystore_user.country
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier issued to this resource by an external identity provider."
  value       = aws_identitystore_user.aws_identitystore_user.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "locality" {
  description = "(Optional) The address locality."
  value       = aws_identitystore_user.aws_identitystore_user.locality
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Details about the user's full name. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_type" {
  description = "(Optional) The user type.addresses Configuration Block"
  value       = aws_identitystore_user.aws_identitystore_user.user_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Optional) The user's phone number.In addition to all arguments above, the following attributes are exported:"
  value       = aws_identitystore_user.aws_identitystore_user.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_ids" {
  description = ""
  value       = aws_identitystore_user.aws_identitystore_user.external_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier issued to this resource by an external identity provider."
  value       = aws_identitystore_user.aws_identitystore_user.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "issuer" {
  description = "The issuer for an external identifier."
  value       = aws_identitystore_user.aws_identitystore_user.issuer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_id" {
  description = "The identifier for this user in the identity store."
  value       = aws_identitystore_user.aws_identitystore_user.user_id
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
      "kind/name"                   = "aws_identitystore_user"
      "kind/version"                = "v0.1.0"
    }
  }
}
