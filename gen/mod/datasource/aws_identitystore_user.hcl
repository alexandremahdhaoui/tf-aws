datasource "aws_identitystore_user" "aws_identitystore_user" {
  profile_url          = var.profile_url
  formatted            = var.formatted
  issuer               = var.issuer
  nickname             = var.nickname
  unique_attribute     = var.unique_attribute
  attribute_value      = var.attribute_value
  identity_store_id    = var.identity_store_id
  name                 = var.name
  timezone             = var.timezone
  type                 = var.type
  filter               = var.filter
  country              = var.country
  given_name           = var.given_name
  locale               = var.locale
  locality             = var.locality
  preferred_language   = var.preferred_language
  primary              = var.primary
  street_address       = var.street_address
  attribute_path       = var.attribute_path
  user_id              = var.user_id
  title                = var.title
  emails               = var.emails
  external_ids         = var.external_ids
  phone_numbers        = var.phone_numbers
  display_name         = var.display_name
  family_name          = var.family_name
  middle_name          = var.middle_name
  region               = var.region
  addresses            = var.addresses
  external_id          = var.external_id
  honorific_prefix     = var.honorific_prefix
  value                = var.value
  alternate_identifier = var.alternate_identifier
  id                   = var.id
  postal_code          = var.postal_code
  user_name            = var.user_name
  honorific_suffix     = var.honorific_suffix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "display_name" {
  description = "The name that is typically displayed when the user is referenced."
  type        = string
}
variable "emails" {
  description = "List of details about the user's email.\n"
  type        = string
}
variable "external_ids" {
  description = ""
  type        = string
}
variable "phone_numbers" {
  description = "List of details about the user's phone number.\n"
  type        = string
}
variable "addresses" {
  description = "List of details about the user's address.\n"
  type        = string
}
variable "family_name" {
  description = "The family name of the user."
  type        = string
}
variable "middle_name" {
  description = "The middle name of the user."
  type        = string
}
variable "region" {
  description = "The region of the address."
  type        = string
}
variable "alternate_identifier" {
  description = " (Optional) A unique identifier for a user or group that is not the primary identifier. Conflicts with user_id and filter. Detailed below."
  type        = string
}
variable "external_id" {
  description = "(Optional) Configuration block for filtering by the identifier issued by an external identity provider. Detailed below."
  type        = string
}
variable "honorific_prefix" {
  description = "The honorific prefix of the user."
  type        = string
}
variable "value" {
  description = "The user's phone number."
  type        = string
}
variable "honorific_suffix" {
  description = "The honorific suffix of the user."
  type        = string
}
variable "id" {
  description = "The identifier issued to this resource by an external identity provider."
  type        = string
}
variable "postal_code" {
  description = "The postal code of the address."
  type        = string
}
variable "user_name" {
  description = "User's user name value."
  type        = string
}
variable "profile_url" {
  description = "An URL that may be associated with the user."
  type        = string
}
variable "unique_attribute" {
  description = "(Optional) An entity attribute that's unique to a specific entity. Detailed below.-> Exactly one of the above arguments must be provided.external_id Configuration Blockexternal_id configuration block:"
  type        = string
}
variable "attribute_value" {
  description = "(Required) Value for an attribute.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "formatted" {
  description = "The name that is typically displayed when the name is shown for display."
  type        = string
}
variable "issuer" {
  description = "The issuer for an external identifier."
  type        = string
}
variable "nickname" {
  description = "An alternate name for the user."
  type        = string
}
variable "type" {
  description = "The type of phone number."
  type        = string
}
variable "filter" {
  description = "(Optional, strongDeprecated use the alternate_identifier attribute instead) Configuration block for filtering by a unique attribute of the user. Detailed below."
  type        = string
}
variable "identity_store_id" {
  description = "(Required) Identity Store ID associated with the Single Sign-On Instance."
  type        = string
}
variable "name" {
  description = "Details about the user's full name.\n"
  type        = string
}
variable "timezone" {
  description = "The user's time zone."
  type        = string
}
variable "locality" {
  description = "The address locality."
  type        = string
}
variable "preferred_language" {
  description = "The preferred language of the user."
  type        = string
}
variable "primary" {
  description = "When true, this is the primary phone number associated with the user."
  type        = string
}
variable "street_address" {
  description = "The street of the address."
  type        = string
}
variable "attribute_path" {
  description = "(Required) Attribute path that is used to specify which attribute name to search. For example: UserName. Refer to the User data type."
  type        = string
}
variable "country" {
  description = "The country that this address is in."
  type        = string
}
variable "given_name" {
  description = "The given name of the user."
  type        = string
}
variable "locale" {
  description = "The user's geographical region or location."
  type        = string
}
variable "title" {
  description = "The user's title."
  type        = string
}
variable "user_id" {
  description = "(Optional) The identifier for a user in the Identity Store.-> Exactly one of the above arguments must be provided. Passing both filter and user_id is allowed for backwards compatibility.alternate_identifier Configuration Blockalternate_identifier configuration block:"
  type        = string
}
output "name" {
  description = "Details about the user's full name.\n"
  value       = aws_identitystore_user.aws_identitystore_user.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timezone" {
  description = "The user's time zone."
  value       = aws_identitystore_user.aws_identitystore_user.timezone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "The type of phone number."
  value       = aws_identitystore_user.aws_identitystore_user.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional, strongDeprecated use the alternate_identifier attribute instead) Configuration block for filtering by a unique attribute of the user. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity_store_id" {
  description = "(Required) Identity Store ID associated with the Single Sign-On Instance."
  value       = aws_identitystore_user.aws_identitystore_user.identity_store_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "given_name" {
  description = "The given name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.given_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "locale" {
  description = "The user's geographical region or location."
  value       = aws_identitystore_user.aws_identitystore_user.locale
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "locality" {
  description = "The address locality."
  value       = aws_identitystore_user.aws_identitystore_user.locality
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preferred_language" {
  description = "The preferred language of the user."
  value       = aws_identitystore_user.aws_identitystore_user.preferred_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary" {
  description = "When true, this is the primary phone number associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.primary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "street_address" {
  description = "The street of the address."
  value       = aws_identitystore_user.aws_identitystore_user.street_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attribute_path" {
  description = "(Required) Attribute path that is used to specify which attribute name to search. For example: UserName. Refer to the User data type."
  value       = aws_identitystore_user.aws_identitystore_user.attribute_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "country" {
  description = "The country that this address is in."
  value       = aws_identitystore_user.aws_identitystore_user.country
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "title" {
  description = "The user's title."
  value       = aws_identitystore_user.aws_identitystore_user.title
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_id" {
  description = "(Optional) The identifier for a user in the Identity Store.-> Exactly one of the above arguments must be provided. Passing both filter and user_id is allowed for backwards compatibility.alternate_identifier Configuration Blockalternate_identifier configuration block:"
  value       = aws_identitystore_user.aws_identitystore_user.user_id
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
output "phone_numbers" {
  description = "List of details about the user's phone number.\n"
  value       = aws_identitystore_user.aws_identitystore_user.phone_numbers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_name" {
  description = "The name that is typically displayed when the user is referenced."
  value       = aws_identitystore_user.aws_identitystore_user.display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "emails" {
  description = "List of details about the user's email.\n"
  value       = aws_identitystore_user.aws_identitystore_user.emails
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "middle_name" {
  description = "The middle name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.middle_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "The region of the address."
  value       = aws_identitystore_user.aws_identitystore_user.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "addresses" {
  description = "List of details about the user's address.\n"
  value       = aws_identitystore_user.aws_identitystore_user.addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "family_name" {
  description = "The family name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.family_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "honorific_prefix" {
  description = "The honorific prefix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "The user's phone number."
  value       = aws_identitystore_user.aws_identitystore_user.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alternate_identifier" {
  description = " (Optional) A unique identifier for a user or group that is not the primary identifier. Conflicts with user_id and filter. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.alternate_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_id" {
  description = "(Optional) Configuration block for filtering by the identifier issued by an external identity provider. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.external_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "postal_code" {
  description = "The postal code of the address."
  value       = aws_identitystore_user.aws_identitystore_user.postal_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_name" {
  description = "User's user name value."
  value       = aws_identitystore_user.aws_identitystore_user.user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "honorific_suffix" {
  description = "The honorific suffix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_suffix
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
output "profile_url" {
  description = "An URL that may be associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.profile_url
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
output "nickname" {
  description = "An alternate name for the user."
  value       = aws_identitystore_user.aws_identitystore_user.nickname
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unique_attribute" {
  description = "(Optional) An entity attribute that's unique to a specific entity. Detailed below.-> Exactly one of the above arguments must be provided.external_id Configuration Blockexternal_id configuration block:"
  value       = aws_identitystore_user.aws_identitystore_user.unique_attribute
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attribute_value" {
  description = "(Required) Value for an attribute.In addition to all arguments above, the following attributes are exported:"
  value       = aws_identitystore_user.aws_identitystore_user.attribute_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "formatted" {
  description = "The name that is typically displayed when the name is shown for display."
  value       = aws_identitystore_user.aws_identitystore_user.formatted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "formatted" {
  description = "The name that is typically displayed when the name is shown for display."
  value       = aws_identitystore_user.aws_identitystore_user.formatted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "given_name" {
  description = "The given name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.given_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "middle_name" {
  description = "The middle name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.middle_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_name" {
  description = "User's user name value."
  value       = aws_identitystore_user.aws_identitystore_user.user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "The user's phone number."
  value       = aws_identitystore_user.aws_identitystore_user.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_name" {
  description = "The name that is typically displayed when the user is referenced."
  value       = aws_identitystore_user.aws_identitystore_user.display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "family_name" {
  description = "The family name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.family_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "honorific_prefix" {
  description = "The honorific prefix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "phone_numbers" {
  description = "List of details about the user's phone number.\n"
  value       = aws_identitystore_user.aws_identitystore_user.phone_numbers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary" {
  description = "When true, this is the primary phone number associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.primary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "profile_url" {
  description = "An URL that may be associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.profile_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "street_address" {
  description = "The street of the address."
  value       = aws_identitystore_user.aws_identitystore_user.street_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "The type of phone number."
  value       = aws_identitystore_user.aws_identitystore_user.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "addresses" {
  description = "List of details about the user's address.\n"
  value       = aws_identitystore_user.aws_identitystore_user.addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "country" {
  description = "The country that this address is in."
  value       = aws_identitystore_user.aws_identitystore_user.country
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "honorific_suffix" {
  description = "The honorific suffix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preferred_language" {
  description = "The preferred language of the user."
  value       = aws_identitystore_user.aws_identitystore_user.preferred_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nickname" {
  description = "An alternate name for the user."
  value       = aws_identitystore_user.aws_identitystore_user.nickname
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "The region of the address."
  value       = aws_identitystore_user.aws_identitystore_user.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "title" {
  description = "The user's title."
  value       = aws_identitystore_user.aws_identitystore_user.title
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
output "locale" {
  description = "The user's geographical region or location."
  value       = aws_identitystore_user.aws_identitystore_user.locale
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "locality" {
  description = "The address locality."
  value       = aws_identitystore_user.aws_identitystore_user.locality
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
output "timezone" {
  description = "The user's time zone."
  value       = aws_identitystore_user.aws_identitystore_user.timezone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "emails" {
  description = "List of details about the user's email.\n"
  value       = aws_identitystore_user.aws_identitystore_user.emails
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Details about the user's full name.\n"
  value       = aws_identitystore_user.aws_identitystore_user.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "postal_code" {
  description = "The postal code of the address."
  value       = aws_identitystore_user.aws_identitystore_user.postal_code
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
}
