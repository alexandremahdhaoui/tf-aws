datasource "aws_identitystore_user" "aws_identitystore_user" {
  region               = var.region
  title                = var.title
  type                 = var.type
  user_id              = var.user_id
  attribute_path       = var.attribute_path
  id                   = var.id
  primary              = var.primary
  unique_attribute     = var.unique_attribute
  value                = var.value
  emails               = var.emails
  postal_code          = var.postal_code
  timezone             = var.timezone
  profile_url          = var.profile_url
  given_name           = var.given_name
  identity_store_id    = var.identity_store_id
  nickname             = var.nickname
  phone_numbers        = var.phone_numbers
  addresses            = var.addresses
  external_id          = var.external_id
  middle_name          = var.middle_name
  filter               = var.filter
  formatted            = var.formatted
  locale               = var.locale
  name                 = var.name
  street_address       = var.street_address
  alternate_identifier = var.alternate_identifier
  attribute_value      = var.attribute_value
  external_ids         = var.external_ids
  user_name            = var.user_name
  issuer               = var.issuer
  locality             = var.locality
  preferred_language   = var.preferred_language
  display_name         = var.display_name
  family_name          = var.family_name
  honorific_prefix     = var.honorific_prefix
  country              = var.country
  honorific_suffix     = var.honorific_suffix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "external_id" {
  description = "(Optional) Configuration block for filtering by the identifier issued by an external identity provider. Detailed below."
  type        = string
  default     = ""
}
variable "middle_name" {
  description = "The middle name of the user."
  type        = string
  default     = ""
}
variable "nickname" {
  description = "An alternate name for the user."
  type        = string
  default     = ""
}
variable "phone_numbers" {
  description = "List of details about the user's phone number.\n"
  type        = string
  default     = ""
}
variable "addresses" {
  description = "List of details about the user's address.\n"
  type        = string
  default     = ""
}
variable "attribute_value" {
  description = "(Required) Value for an attribute.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "external_ids" {
  description = ""
  type        = string
  default     = ""
}
variable "filter" {
  description = "(Optional, strongDeprecated use the alternate_identifier attribute instead) Configuration block for filtering by a unique attribute of the user. Detailed below."
  type        = string
  default     = ""
}
variable "formatted" {
  description = "The name that is typically displayed when the name is shown for display."
  type        = string
  default     = ""
}
variable "locale" {
  description = "The user's geographical region or location."
  type        = string
  default     = ""
}
variable "name" {
  description = "Details about the user's full name.\n"
  type        = string
  default     = ""
}
variable "street_address" {
  description = "The street of the address."
  type        = string
  default     = ""
}
variable "alternate_identifier" {
  description = " (Optional) A unique identifier for a user or group that is not the primary identifier. Conflicts with user_id and filter. Detailed below."
  type        = string
  default     = ""
}
variable "user_name" {
  description = "User's user name value."
  type        = string
  default     = ""
}
variable "family_name" {
  description = "The family name of the user."
  type        = string
  default     = ""
}
variable "honorific_prefix" {
  description = "The honorific prefix of the user."
  type        = string
  default     = ""
}
variable "issuer" {
  description = "The issuer for an external identifier."
  type        = string
  default     = ""
}
variable "locality" {
  description = "The address locality."
  type        = string
  default     = ""
}
variable "preferred_language" {
  description = "The preferred language of the user."
  type        = string
  default     = ""
}
variable "display_name" {
  description = "The name that is typically displayed when the user is referenced."
  type        = string
  default     = ""
}
variable "honorific_suffix" {
  description = "The honorific suffix of the user."
  type        = string
  default     = ""
}
variable "country" {
  description = "The country that this address is in."
  type        = string
  default     = ""
}
variable "id" {
  description = "The identifier issued to this resource by an external identity provider."
  type        = string
  default     = ""
}
variable "primary" {
  description = "When true, this is the primary phone number associated with the user."
  type        = string
  default     = ""
}
variable "region" {
  description = "The region of the address."
  type        = string
  default     = ""
}
variable "title" {
  description = "The user's title."
  type        = string
  default     = ""
}
variable "type" {
  description = "The type of phone number."
  type        = string
  default     = ""
}
variable "user_id" {
  description = "(Optional) The identifier for a user in the Identity Store.-> Exactly one of the above arguments must be provided. Passing both filter and user_id is allowed for backwards compatibility.alternate_identifier Configuration Blockalternate_identifier configuration block:"
  type        = string
  default     = ""
}
variable "attribute_path" {
  description = "(Required) Attribute path that is used to specify which attribute name to search. For example: UserName. Refer to the User data type."
  type        = string
}
variable "postal_code" {
  description = "The postal code of the address."
  type        = string
  default     = ""
}
variable "timezone" {
  description = "The user's time zone."
  type        = string
  default     = ""
}
variable "unique_attribute" {
  description = "(Optional) An entity attribute that's unique to a specific entity. Detailed below.-> Exactly one of the above arguments must be provided.external_id Configuration Blockexternal_id configuration block:"
  type        = string
  default     = ""
}
variable "value" {
  description = "The user's phone number."
  type        = string
  default     = ""
}
variable "emails" {
  description = "List of details about the user's email.\n"
  type        = string
  default     = ""
}
variable "profile_url" {
  description = "An URL that may be associated with the user."
  type        = string
  default     = ""
}
variable "identity_store_id" {
  description = "(Required) Identity Store ID associated with the Single Sign-On Instance."
  type        = string
}
variable "given_name" {
  description = "The given name of the user."
  type        = string
  default     = ""
}
output "attribute_value" {
  description = "(Required) Value for an attribute.In addition to all arguments above, the following attributes are exported:"
  value       = aws_identitystore_user.aws_identitystore_user.attribute_value
}
output "external_ids" {
  description = ""
  value       = aws_identitystore_user.aws_identitystore_user.external_ids
}
output "filter" {
  description = "(Optional, strongDeprecated use the alternate_identifier attribute instead) Configuration block for filtering by a unique attribute of the user. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.filter
}
output "formatted" {
  description = "The name that is typically displayed when the name is shown for display."
  value       = aws_identitystore_user.aws_identitystore_user.formatted
}
output "locale" {
  description = "The user's geographical region or location."
  value       = aws_identitystore_user.aws_identitystore_user.locale
}
output "name" {
  description = "Details about the user's full name.\n"
  value       = aws_identitystore_user.aws_identitystore_user.name
}
output "street_address" {
  description = "The street of the address."
  value       = aws_identitystore_user.aws_identitystore_user.street_address
}
output "alternate_identifier" {
  description = " (Optional) A unique identifier for a user or group that is not the primary identifier. Conflicts with user_id and filter. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.alternate_identifier
}
output "user_name" {
  description = "User's user name value."
  value       = aws_identitystore_user.aws_identitystore_user.user_name
}
output "family_name" {
  description = "The family name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.family_name
}
output "honorific_prefix" {
  description = "The honorific prefix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_prefix
}
output "issuer" {
  description = "The issuer for an external identifier."
  value       = aws_identitystore_user.aws_identitystore_user.issuer
}
output "locality" {
  description = "The address locality."
  value       = aws_identitystore_user.aws_identitystore_user.locality
}
output "preferred_language" {
  description = "The preferred language of the user."
  value       = aws_identitystore_user.aws_identitystore_user.preferred_language
}
output "display_name" {
  description = "The name that is typically displayed when the user is referenced."
  value       = aws_identitystore_user.aws_identitystore_user.display_name
}
output "honorific_suffix" {
  description = "The honorific suffix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_suffix
}
output "country" {
  description = "The country that this address is in."
  value       = aws_identitystore_user.aws_identitystore_user.country
}
output "id" {
  description = "The identifier issued to this resource by an external identity provider."
  value       = aws_identitystore_user.aws_identitystore_user.id
}
output "primary" {
  description = "When true, this is the primary phone number associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.primary
}
output "region" {
  description = "The region of the address."
  value       = aws_identitystore_user.aws_identitystore_user.region
}
output "title" {
  description = "The user's title."
  value       = aws_identitystore_user.aws_identitystore_user.title
}
output "type" {
  description = "The type of phone number."
  value       = aws_identitystore_user.aws_identitystore_user.type
}
output "user_id" {
  description = "(Optional) The identifier for a user in the Identity Store.-> Exactly one of the above arguments must be provided. Passing both filter and user_id is allowed for backwards compatibility.alternate_identifier Configuration Blockalternate_identifier configuration block:"
  value       = aws_identitystore_user.aws_identitystore_user.user_id
}
output "attribute_path" {
  description = "(Required) Attribute path that is used to specify which attribute name to search. For example: UserName. Refer to the User data type."
  value       = aws_identitystore_user.aws_identitystore_user.attribute_path
}
output "postal_code" {
  description = "The postal code of the address."
  value       = aws_identitystore_user.aws_identitystore_user.postal_code
}
output "timezone" {
  description = "The user's time zone."
  value       = aws_identitystore_user.aws_identitystore_user.timezone
}
output "unique_attribute" {
  description = "(Optional) An entity attribute that's unique to a specific entity. Detailed below.-> Exactly one of the above arguments must be provided.external_id Configuration Blockexternal_id configuration block:"
  value       = aws_identitystore_user.aws_identitystore_user.unique_attribute
}
output "value" {
  description = "The user's phone number."
  value       = aws_identitystore_user.aws_identitystore_user.value
}
output "emails" {
  description = "List of details about the user's email.\n"
  value       = aws_identitystore_user.aws_identitystore_user.emails
}
output "profile_url" {
  description = "An URL that may be associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.profile_url
}
output "identity_store_id" {
  description = "(Required) Identity Store ID associated with the Single Sign-On Instance."
  value       = aws_identitystore_user.aws_identitystore_user.identity_store_id
}
output "given_name" {
  description = "The given name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.given_name
}
output "external_id" {
  description = "(Optional) Configuration block for filtering by the identifier issued by an external identity provider. Detailed below."
  value       = aws_identitystore_user.aws_identitystore_user.external_id
}
output "middle_name" {
  description = "The middle name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.middle_name
}
output "nickname" {
  description = "An alternate name for the user."
  value       = aws_identitystore_user.aws_identitystore_user.nickname
}
output "phone_numbers" {
  description = "List of details about the user's phone number.\n"
  value       = aws_identitystore_user.aws_identitystore_user.phone_numbers
}
output "addresses" {
  description = "List of details about the user's address.\n"
  value       = aws_identitystore_user.aws_identitystore_user.addresses
}
output "value" {
  description = "The user's phone number."
  value       = aws_identitystore_user.aws_identitystore_user.value
}
output "emails" {
  description = "List of details about the user's email.\n"
  value       = aws_identitystore_user.aws_identitystore_user.emails
}
output "honorific_suffix" {
  description = "The honorific suffix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_suffix
}
output "id" {
  description = "The identifier issued to this resource by an external identity provider."
  value       = aws_identitystore_user.aws_identitystore_user.id
}
output "issuer" {
  description = "The issuer for an external identifier."
  value       = aws_identitystore_user.aws_identitystore_user.issuer
}
output "locality" {
  description = "The address locality."
  value       = aws_identitystore_user.aws_identitystore_user.locality
}
output "type" {
  description = "The type of phone number."
  value       = aws_identitystore_user.aws_identitystore_user.type
}
output "honorific_prefix" {
  description = "The honorific prefix of the user."
  value       = aws_identitystore_user.aws_identitystore_user.honorific_prefix
}
output "timezone" {
  description = "The user's time zone."
  value       = aws_identitystore_user.aws_identitystore_user.timezone
}
output "family_name" {
  description = "The family name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.family_name
}
output "given_name" {
  description = "The given name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.given_name
}
output "middle_name" {
  description = "The middle name of the user."
  value       = aws_identitystore_user.aws_identitystore_user.middle_name
}
output "country" {
  description = "The country that this address is in."
  value       = aws_identitystore_user.aws_identitystore_user.country
}
output "formatted" {
  description = "The name that is typically displayed when the name is shown for display."
  value       = aws_identitystore_user.aws_identitystore_user.formatted
}
output "primary" {
  description = "When true, this is the primary phone number associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.primary
}
output "title" {
  description = "The user's title."
  value       = aws_identitystore_user.aws_identitystore_user.title
}
output "user_name" {
  description = "User's user name value."
  value       = aws_identitystore_user.aws_identitystore_user.user_name
}
output "external_ids" {
  description = ""
  value       = aws_identitystore_user.aws_identitystore_user.external_ids
}
output "locale" {
  description = "The user's geographical region or location."
  value       = aws_identitystore_user.aws_identitystore_user.locale
}
output "preferred_language" {
  description = "The preferred language of the user."
  value       = aws_identitystore_user.aws_identitystore_user.preferred_language
}
output "street_address" {
  description = "The street of the address."
  value       = aws_identitystore_user.aws_identitystore_user.street_address
}
output "name" {
  description = "Details about the user's full name.\n"
  value       = aws_identitystore_user.aws_identitystore_user.name
}
output "nickname" {
  description = "An alternate name for the user."
  value       = aws_identitystore_user.aws_identitystore_user.nickname
}
output "profile_url" {
  description = "An URL that may be associated with the user."
  value       = aws_identitystore_user.aws_identitystore_user.profile_url
}
output "region" {
  description = "The region of the address."
  value       = aws_identitystore_user.aws_identitystore_user.region
}
output "addresses" {
  description = "List of details about the user's address.\n"
  value       = aws_identitystore_user.aws_identitystore_user.addresses
}
output "display_name" {
  description = "The name that is typically displayed when the user is referenced."
  value       = aws_identitystore_user.aws_identitystore_user.display_name
}
output "phone_numbers" {
  description = "List of details about the user's phone number.\n"
  value       = aws_identitystore_user.aws_identitystore_user.phone_numbers
}
output "postal_code" {
  description = "The postal code of the address."
  value       = aws_identitystore_user.aws_identitystore_user.postal_code
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
}
