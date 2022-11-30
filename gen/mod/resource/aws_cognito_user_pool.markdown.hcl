resource "aws_cognito_user_pool.markdown" "aws_cognito_user_pool.markdown" {
  allow_admin_create_user_only                  = var.allow_admin_create_user_only
  define_auth_challenge                         = var.define_auth_challenge
  from_email_address                            = var.from_email_address
  min_length                                    = var.min_length
  pre_token_generation                          = var.pre_token_generation
  string_attribute_constraints                  = var.string_attribute_constraints
  custom_sms_sender                             = var.custom_sms_sender
  user_migration                                = var.user_migration
  admin_create_user_config                      = var.admin_create_user_config
  estimated_number_of_users                     = var.estimated_number_of_users
  require_lowercase                             = var.require_lowercase
  verification_message_template                 = var.verification_message_template
  developer_only_attribute                      = var.developer_only_attribute
  email_verification_message                    = var.email_verification_message
  kms_key_id                                    = var.kms_key_id
  reply_to_email_address                        = var.reply_to_email_address
  required                                      = var.required
  software_token_mfa_configuration              = var.software_token_mfa_configuration
  temporary_password_validity_days              = var.temporary_password_validity_days
  create_auth_challenge                         = var.create_auth_challenge
  custom_message                                = var.custom_message
  lambda_version                                = var.lambda_version
  pre_sign_up                                   = var.pre_sign_up
  user_attribute_update_settings                = var.user_attribute_update_settings
  challenge_required_on_new_device              = var.challenge_required_on_new_device
  lambda_arn                                    = var.lambda_arn
  max_length                                    = var.max_length
  number_attribute_constraints                  = var.number_attribute_constraints
  password_policy                               = var.password_policy
  username_attributes                           = var.username_attributes
  minimum_length                                = var.minimum_length
  account_recovery_setting                      = var.account_recovery_setting
  advanced_security_mode                        = var.advanced_security_mode
  attribute_data_type                           = var.attribute_data_type
  email_message_by_link                         = var.email_message_by_link
  enabled                                       = var.enabled
  endpoint                                      = var.endpoint
  invite_message_template                       = var.invite_message_template
  mutable                                       = var.mutable
  priority                                      = var.priority
  arn                                           = var.arn
  creation_date                                 = var.creation_date
  email_subject                                 = var.email_subject
  external_id                                   = var.external_id
  lambda_config                                 = var.lambda_config
  name                                          = var.name
  post_authentication                           = var.post_authentication
  require_numbers                               = var.require_numbers
  require_symbols                               = var.require_symbols
  default_email_option                          = var.default_email_option
  min_value                                     = var.min_value
  verify_auth_challenge_response                = var.verify_auth_challenge_response
  custom_email_sender                           = var.custom_email_sender
  domain                                        = var.domain
  recovery_mechanism                            = var.recovery_mechanism
  email_message                                 = var.email_message
  max_value                                     = var.max_value
  sms_configuration                             = var.sms_configuration
  alias_attributes                              = var.alias_attributes
  auto_verified_attributes                      = var.auto_verified_attributes
  configuration_set                             = var.configuration_set
  custom_domain                                 = var.custom_domain
  device_configuration                          = var.device_configuration
  post_confirmation                             = var.post_confirmation
  sms_authentication_message                    = var.sms_authentication_message
  source_arn                                    = var.source_arn
  sns_caller_arn                                = var.sns_caller_arn
  deletion_protection                           = var.deletion_protection
  email_verification_subject                    = var.email_verification_subject
  id                                            = var.id
  mfa_configuration                             = var.mfa_configuration
  pre_authentication                            = var.pre_authentication
  sms_message                                   = var.sms_message
  sms_verification_message                      = var.sms_verification_message
  username_configuration                        = var.username_configuration
  attributes_require_verification_before_update = var.attributes_require_verification_before_update
  device_only_remembered_on_user_prompt         = var.device_only_remembered_on_user_prompt
  last_modified_date                            = var.last_modified_date
  case_sensitive                                = var.case_sensitive
  email_configuration                           = var.email_configuration
  email_sending_account                         = var.email_sending_account
  tags                                          = var.tags
  email_subject_by_link                         = var.email_subject_by_link
  require_uppercase                             = var.require_uppercase
  schema                                        = var.schema
  tags_all                                      = var.tags_all
  user_pool_add_ons                             = var.user_pool_add_ons
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "email_message" {
  description = "(Optional) Email message template. Must contain the {####} placeholder. Conflicts with email_verification_message argument."
  type        = string
}
variable "max_value" {
  description = "(Optional) Maximum value of an attribute that is of the number data type."
  type        = string
}
variable "device_configuration" {
  description = "(Optional) Configuration block for the user pool's device tracking. Detailed below."
  type        = string
}
variable "post_confirmation" {
  description = "(Optional) Post-confirmation AWS Lambda trigger."
  type        = string
}
variable "sms_authentication_message" {
  description = "(Optional) String representing the SMS authentication message. The Message must contain the {####} placeholder, which will be replaced with the code."
  type        = string
}
variable "sms_configuration" {
  description = "(Optional) Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the taint command."
  type        = string
}
variable "alias_attributes" {
  description = "(Optional) Attributes supported as an alias for this user pool. Valid values: phone_number, email, or preferred_username. Conflicts with username_attributes."
  type        = string
}
variable "auto_verified_attributes" {
  description = "(Optional) Attributes to be auto-verified. Valid values: email, phone_number."
  type        = string
}
variable "configuration_set" {
  description = "(Optional) Email configuration set name from SES."
  type        = string
}
variable "custom_domain" {
  description = "A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: auth.example.com."
  type        = string
}
variable "source_arn" {
  description = "(Optional) ARN of the SES verified email identity to to use. Required if email_sending_account is set to DEVELOPER.lambda_config"
  type        = string
}
variable "pre_authentication" {
  description = "(Optional) Pre-authentication AWS Lambda trigger."
  type        = string
}
variable "sms_message" {
  description = "(Optional) SMS message template. Must contain the {####} placeholder. Conflicts with sms_verification_message argument.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "sms_verification_message" {
  description = "(Optional) String representing the SMS verification message. Conflicts with verification_message_template configuration block sms_message argument."
  type        = string
}
variable "sns_caller_arn" {
  description = "(Required) ARN of the Amazon SNS caller. This is usually the IAM role that you've given Cognito permission to assume.software_token_mfa_configurationThe following arguments are required in the software_token_mfa_configuration configuration block:"
  type        = string
}
variable "deletion_protection" {
  description = "(Optional) When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are ACTIVE and INACTIVE, Default value is INACTIVE."
  type        = string
}
variable "email_verification_subject" {
  description = "(Optional) String representing the email verification subject. Conflicts with verification_message_template configuration block email_subject argument."
  type        = string
}
variable "id" {
  description = "ID of the user pool."
  type        = string
}
variable "mfa_configuration" {
  description = "(Optional) Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of OFF. Valid values are OFF (MFA Tokens are not required), ON (MFA is required for all users to sign in; requires at least one of sms_configuration or software_token_mfa_configuration to be configured), or OPTIONAL (MFA Will be required only for individual users who have MFA Enabled; requires at least one of sms_configuration or software_token_mfa_configuration to be configured)."
  type        = string
}
variable "username_configuration" {
  description = "(Optional) Configuration block for username configuration. Detailed below."
  type        = string
}
variable "attributes_require_verification_before_update" {
  description = "(Required) A list of attributes requiring verification before update. If set, the provided value(s) must also be set in auto_verified_attributes. Valid values: email, phone_number.user_pool_add_ons"
  type        = string
}
variable "device_only_remembered_on_user_prompt" {
  description = "(Optional) Whether a device is only remembered on user prompt. false equates to \"Always\" remember, true is \"User Opt In,\" and not using a device_configuration block is \"No.\"email_configuration"
  type        = string
}
variable "last_modified_date" {
  description = "Date the user pool was last modified."
  type        = string
}
variable "case_sensitive" {
  description = "(Required) Whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.verification_message_template"
  type        = string
}
variable "email_configuration" {
  description = "(Optional) Configuration block for configuring email. Detailed below."
  type        = string
}
variable "email_sending_account" {
  description = "(Optional) Email delivery method to use. COGNITO_DEFAULT for the default email functionality built into Cognito or DEVELOPER to use your Amazon SES configuration."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the User Pool. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "user_pool_add_ons" {
  description = "(Optional) Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below."
  type        = string
}
variable "email_subject_by_link" {
  description = "(Optional) Subject line for the email message template for sending a confirmation link to the user."
  type        = string
}
variable "require_uppercase" {
  description = "(Optional) Whether you have required users to use at least one uppercase letter in their password."
  type        = string
}
variable "schema" {
  description = "(Optional) Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the standard attribute set only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "pre_token_generation" {
  description = "(Optional) Allow to customize identity token claims before token generation."
  type        = string
}
variable "string_attribute_constraints" {
  description = "(Required when attribute_data_type is String) Constraints for an attribute of the string type. Detailed below.schema: Defaults for Standard AttributesThe standard attributes have the following defaults. Note that attributes which match the default values are not stored in Terraform state when importing.number_attribute_constraints"
  type        = string
}
variable "allow_admin_create_user_only" {
  description = "(Optional) Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app."
  type        = string
}
variable "define_auth_challenge" {
  description = "(Optional) Defines the authentication challenge."
  type        = string
}
variable "from_email_address" {
  description = "(Optional) Sender’s email address or sender’s display name with their email address (e.g., john@example.com, John Smith <john@example.com> or \\\"John Smith Ph.D.\\\" <john@example.com>). Escaped double quotes are required around display names that contain certain characters as specified in RFC 5322."
  type        = string
}
variable "min_length" {
  description = "(Optional) Minimum length of an attribute value of the string type.sms_configuration"
  type        = string
}
variable "custom_sms_sender" {
  description = "(Optional) A custom SMS sender AWS Lambda trigger. See custom_sms_sender Below.custom_email_sender"
  type        = string
}
variable "user_migration" {
  description = "(Optional) User migration Lambda config type."
  type        = string
}
variable "admin_create_user_config" {
  description = "(Optional) Configuration block for creating a new user profile. Detailed below."
  type        = string
}
variable "estimated_number_of_users" {
  description = "A number estimating the size of the user pool."
  type        = string
}
variable "require_lowercase" {
  description = "(Optional) Whether you have required users to use at least one lowercase letter in their password."
  type        = string
}
variable "verification_message_template" {
  description = "(Optional) Configuration block for verification message templates. Detailed below.account_recovery_setting"
  type        = string
}
variable "required" {
  description = "(Optional) Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail."
  type        = string
}
variable "software_token_mfa_configuration" {
  description = "(Optional) Configuration block for software token Mult-Factor Authentication (MFA) settings. Detailed below."
  type        = string
}
variable "temporary_password_validity_days" {
  description = "(Optional) In the password policy you have set, refers to the number of days a temporary password is valid. If the user does not sign-in during this time, their password will need to be reset by an administrator.schema~> strongNOTE: When defining an attribute_data_type of String or Number, the respective attribute constraints configuration block (e.g string_attribute_constraints or number_attribute_constraints) is strongrequired to prevent recreation of the Terraform resource. This requirement is true for both standard (e.g., name, email) and custom schema attributes."
  type        = string
}
variable "developer_only_attribute" {
  description = "(Optional) Whether the attribute type is developer only."
  type        = string
}
variable "email_verification_message" {
  description = "(Optional) String representing the email verification message. Conflicts with verification_message_template configuration block email_message argument."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The Amazon Resource Name of Key Management Service Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender."
  type        = string
}
variable "reply_to_email_address" {
  description = "(Optional) REPLY-TO email address."
  type        = string
}
variable "user_attribute_update_settings" {
  description = "(Optional) Configuration block for user attribute update settings. Detailed below."
  type        = string
}
variable "create_auth_challenge" {
  description = "(Optional) ARN of the lambda creating an authentication challenge."
  type        = string
}
variable "custom_message" {
  description = "(Optional) Custom Message AWS Lambda trigger."
  type        = string
}
variable "lambda_version" {
  description = "(Required) The Lambda version represents the signature of the \"request\" attribute in the \"event\" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is V1_0.password_policy"
  type        = string
}
variable "pre_sign_up" {
  description = "(Optional) Pre-registration AWS Lambda trigger."
  type        = string
}
variable "password_policy" {
  description = "(Optional) Configuration blocked for information about the user pool password policy. Detailed below."
  type        = string
}
variable "username_attributes" {
  description = "(Optional) Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with alias_attributes."
  type        = string
}
variable "challenge_required_on_new_device" {
  description = "(Optional) Whether a challenge is required on a new device. Only applicable to a new device."
  type        = string
}
variable "lambda_arn" {
  description = "(Required) The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users."
  type        = string
}
variable "max_length" {
  description = "(Optional) Maximum length of an attribute value of the string type."
  type        = string
}
variable "number_attribute_constraints" {
  description = "(Required when attribute_data_type is Number) Configuration block for the constraints for an attribute of the number type. Detailed below."
  type        = string
}
variable "enabled" {
  description = "(Required) Boolean whether to enable software token Multi-Factor (MFA) tokens, such as Time-based One-Time Password (TOTP). To disable software token MFA When sms_configuration is not present, the mfa_configuration argument must be set to OFF and the software_token_mfa_configuration configuration block must be fully removed.user_attribute_update_settings"
  type        = string
}
variable "endpoint" {
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
  type        = string
}
variable "invite_message_template" {
  description = "(Optional) Invite message template structure. Detailed below.invite_message_template"
  type        = string
}
variable "minimum_length" {
  description = "(Optional) Minimum length of the password policy that you have set."
  type        = string
}
variable "account_recovery_setting" {
  description = "(Optional) Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below."
  type        = string
}
variable "advanced_security_mode" {
  description = "(Required) Mode for advanced security, must be one of OFF, AUDIT or ENFORCED.username_configuration"
  type        = string
}
variable "attribute_data_type" {
  description = "(Required) Attribute data type. Must be one of Boolean, Number, String, DateTime."
  type        = string
}
variable "email_message_by_link" {
  description = "(Optional) Email message template for sending a confirmation link to the user, it must contain the {##Click Here##} placeholder."
  type        = string
}
variable "mutable" {
  description = "(Optional) Whether the attribute can be changed once it has been created."
  type        = string
}
variable "lambda_config" {
  description = "(Optional) Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below."
  type        = string
}
variable "name" {
  description = "(Required) Name of the attribute."
  type        = string
}
variable "post_authentication" {
  description = "(Optional) Post-authentication AWS Lambda trigger."
  type        = string
}
variable "priority" {
  description = "(Required) Positive integer specifying priority of a method with 1 being the highest priority.admin_create_user_config"
  type        = string
}
variable "arn" {
  description = "ARN of the user pool."
  type        = string
}
variable "creation_date" {
  description = "Date the user pool was created."
  type        = string
}
variable "email_subject" {
  description = "(Optional) Subject line for the email message template. Conflicts with email_verification_subject argument."
  type        = string
}
variable "external_id" {
  description = "(Required) External ID used in IAM role trust relationships. For more information about using external IDs, see How to Use an External ID When Granting Access to Your AWS Resources to a Third Party."
  type        = string
}
variable "require_numbers" {
  description = "(Optional) Whether you have required users to use at least one number in their password."
  type        = string
}
variable "require_symbols" {
  description = "(Optional) Whether you have required users to use at least one symbol in their password."
  type        = string
}
variable "default_email_option" {
  description = "(Optional) Default email option. Must be either CONFIRM_WITH_CODE or CONFIRM_WITH_LINK. Defaults to CONFIRM_WITH_CODE."
  type        = string
}
variable "min_value" {
  description = "(Optional) Minimum value of an attribute that is of the number data type.string_attribute_constraints"
  type        = string
}
variable "verify_auth_challenge_response" {
  description = "(Optional) Verifies the authentication challenge response."
  type        = string
}
variable "custom_email_sender" {
  description = "(Optional) A custom email sender AWS Lambda trigger. See custom_email_sender Below."
  type        = string
}
variable "domain" {
  description = "Holds the domain prefix if the user pool has a domain associated with it."
  type        = string
}
variable "recovery_mechanism" {
  description = "(Required) List of Account Recovery Options of the following structure:\n"
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
output "verification_message_template" {
  description = "(Optional) Configuration block for verification message templates. Detailed below.account_recovery_setting"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.verification_message_template
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "admin_create_user_config" {
  description = "(Optional) Configuration block for creating a new user profile. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.admin_create_user_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "estimated_number_of_users" {
  description = "A number estimating the size of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.estimated_number_of_users
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "require_lowercase" {
  description = "(Optional) Whether you have required users to use at least one lowercase letter in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_lowercase
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reply_to_email_address" {
  description = "(Optional) REPLY-TO email address."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.reply_to_email_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "required" {
  description = "(Optional) Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.required
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "software_token_mfa_configuration" {
  description = "(Optional) Configuration block for software token Mult-Factor Authentication (MFA) settings. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.software_token_mfa_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "temporary_password_validity_days" {
  description = "(Optional) In the password policy you have set, refers to the number of days a temporary password is valid. If the user does not sign-in during this time, their password will need to be reset by an administrator.schema~> strongNOTE: When defining an attribute_data_type of String or Number, the respective attribute constraints configuration block (e.g string_attribute_constraints or number_attribute_constraints) is strongrequired to prevent recreation of the Terraform resource. This requirement is true for both standard (e.g., name, email) and custom schema attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.temporary_password_validity_days
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "developer_only_attribute" {
  description = "(Optional) Whether the attribute type is developer only."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.developer_only_attribute
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_verification_message" {
  description = "(Optional) String representing the email verification message. Conflicts with verification_message_template configuration block email_message argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_verification_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) The Amazon Resource Name of Key Management Service Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pre_sign_up" {
  description = "(Optional) Pre-registration AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.pre_sign_up
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_attribute_update_settings" {
  description = "(Optional) Configuration block for user attribute update settings. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.user_attribute_update_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_auth_challenge" {
  description = "(Optional) ARN of the lambda creating an authentication challenge."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.create_auth_challenge
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_message" {
  description = "(Optional) Custom Message AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_version" {
  description = "(Required) The Lambda version represents the signature of the \"request\" attribute in the \"event\" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is V1_0.password_policy"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.lambda_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_attribute_constraints" {
  description = "(Required when attribute_data_type is Number) Configuration block for the constraints for an attribute of the number type. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.number_attribute_constraints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password_policy" {
  description = "(Optional) Configuration blocked for information about the user pool password policy. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.password_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "username_attributes" {
  description = "(Optional) Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with alias_attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.username_attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "challenge_required_on_new_device" {
  description = "(Optional) Whether a challenge is required on a new device. Only applicable to a new device."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.challenge_required_on_new_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_arn" {
  description = "(Required) The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.lambda_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_length" {
  description = "(Optional) Maximum length of an attribute value of the string type."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.max_length
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_message_by_link" {
  description = "(Optional) Email message template for sending a confirmation link to the user, it must contain the {##Click Here##} placeholder."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_message_by_link
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Required) Boolean whether to enable software token Multi-Factor (MFA) tokens, such as Time-based One-Time Password (TOTP). To disable software token MFA When sms_configuration is not present, the mfa_configuration argument must be set to OFF and the software_token_mfa_configuration configuration block must be fully removed.user_attribute_update_settings"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invite_message_template" {
  description = "(Optional) Invite message template structure. Detailed below.invite_message_template"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.invite_message_template
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_length" {
  description = "(Optional) Minimum length of the password policy that you have set."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.minimum_length
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_recovery_setting" {
  description = "(Optional) Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.account_recovery_setting
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_security_mode" {
  description = "(Required) Mode for advanced security, must be one of OFF, AUDIT or ENFORCED.username_configuration"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.advanced_security_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attribute_data_type" {
  description = "(Required) Attribute data type. Must be one of Boolean, Number, String, DateTime."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.attribute_data_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mutable" {
  description = "(Optional) Whether the attribute can be changed once it has been created."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.mutable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_id" {
  description = "(Required) External ID used in IAM role trust relationships. For more information about using external IDs, see How to Use an External ID When Granting Access to Your AWS Resources to a Third Party."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.external_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_config" {
  description = "(Optional) Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.lambda_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the attribute."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "post_authentication" {
  description = "(Optional) Post-authentication AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.post_authentication
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "(Required) Positive integer specifying priority of a method with 1 being the highest priority.admin_create_user_config"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "Date the user pool was created."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_subject" {
  description = "(Optional) Subject line for the email message template. Conflicts with email_verification_subject argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_subject
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "require_numbers" {
  description = "(Optional) Whether you have required users to use at least one number in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_numbers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "require_symbols" {
  description = "(Optional) Whether you have required users to use at least one symbol in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_symbols
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_email_option" {
  description = "(Optional) Default email option. Must be either CONFIRM_WITH_CODE or CONFIRM_WITH_LINK. Defaults to CONFIRM_WITH_CODE."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.default_email_option
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_value" {
  description = "(Optional) Minimum value of an attribute that is of the number data type.string_attribute_constraints"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.min_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "verify_auth_challenge_response" {
  description = "(Optional) Verifies the authentication challenge response."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.verify_auth_challenge_response
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_email_sender" {
  description = "(Optional) A custom email sender AWS Lambda trigger. See custom_email_sender Below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_email_sender
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain" {
  description = "Holds the domain prefix if the user pool has a domain associated with it."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "recovery_mechanism" {
  description = "(Required) List of Account Recovery Options of the following structure:\n"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.recovery_mechanism
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_message" {
  description = "(Optional) Email message template. Must contain the {####} placeholder. Conflicts with email_verification_message argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_value" {
  description = "(Optional) Maximum value of an attribute that is of the number data type."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.max_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_domain" {
  description = "A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: auth.example.com."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_configuration" {
  description = "(Optional) Configuration block for the user pool's device tracking. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.device_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "post_confirmation" {
  description = "(Optional) Post-confirmation AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.post_confirmation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sms_authentication_message" {
  description = "(Optional) String representing the SMS authentication message. The Message must contain the {####} placeholder, which will be replaced with the code."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_authentication_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sms_configuration" {
  description = "(Optional) Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the taint command."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alias_attributes" {
  description = "(Optional) Attributes supported as an alias for this user pool. Valid values: phone_number, email, or preferred_username. Conflicts with username_attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.alias_attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_verified_attributes" {
  description = "(Optional) Attributes to be auto-verified. Valid values: email, phone_number."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.auto_verified_attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_set" {
  description = "(Optional) Email configuration set name from SES."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.configuration_set
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_arn" {
  description = "(Optional) ARN of the SES verified email identity to to use. Required if email_sending_account is set to DEVELOPER.lambda_config"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.source_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mfa_configuration" {
  description = "(Optional) Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of OFF. Valid values are OFF (MFA Tokens are not required), ON (MFA is required for all users to sign in; requires at least one of sms_configuration or software_token_mfa_configuration to be configured), or OPTIONAL (MFA Will be required only for individual users who have MFA Enabled; requires at least one of sms_configuration or software_token_mfa_configuration to be configured)."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.mfa_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pre_authentication" {
  description = "(Optional) Pre-authentication AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.pre_authentication
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sms_message" {
  description = "(Optional) SMS message template. Must contain the {####} placeholder. Conflicts with sms_verification_message argument.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sms_verification_message" {
  description = "(Optional) String representing the SMS verification message. Conflicts with verification_message_template configuration block sms_message argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_verification_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sns_caller_arn" {
  description = "(Required) ARN of the Amazon SNS caller. This is usually the IAM role that you've given Cognito permission to assume.software_token_mfa_configurationThe following arguments are required in the software_token_mfa_configuration configuration block:"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sns_caller_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deletion_protection" {
  description = "(Optional) When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are ACTIVE and INACTIVE, Default value is INACTIVE."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.deletion_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_verification_subject" {
  description = "(Optional) String representing the email verification subject. Conflicts with verification_message_template configuration block email_subject argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_verification_subject
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "username_configuration" {
  description = "(Optional) Configuration block for username configuration. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.username_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attributes_require_verification_before_update" {
  description = "(Required) A list of attributes requiring verification before update. If set, the provided value(s) must also be set in auto_verified_attributes. Valid values: email, phone_number.user_pool_add_ons"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.attributes_require_verification_before_update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_only_remembered_on_user_prompt" {
  description = "(Optional) Whether a device is only remembered on user prompt. false equates to \"Always\" remember, true is \"User Opt In,\" and not using a device_configuration block is \"No.\"email_configuration"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.device_only_remembered_on_user_prompt
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_date" {
  description = "Date the user pool was last modified."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.last_modified_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the User Pool. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "case_sensitive" {
  description = "(Required) Whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.verification_message_template"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.case_sensitive
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_configuration" {
  description = "(Optional) Configuration block for configuring email. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_sending_account" {
  description = "(Optional) Email delivery method to use. COGNITO_DEFAULT for the default email functionality built into Cognito or DEVELOPER to use your Amazon SES configuration."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_sending_account
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_pool_add_ons" {
  description = "(Optional) Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.user_pool_add_ons
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_subject_by_link" {
  description = "(Optional) Subject line for the email message template for sending a confirmation link to the user."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_subject_by_link
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "require_uppercase" {
  description = "(Optional) Whether you have required users to use at least one uppercase letter in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_uppercase
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema" {
  description = "(Optional) Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the standard attribute set only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.schema
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_length" {
  description = "(Optional) Minimum length of an attribute value of the string type.sms_configuration"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.min_length
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pre_token_generation" {
  description = "(Optional) Allow to customize identity token claims before token generation."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.pre_token_generation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "string_attribute_constraints" {
  description = "(Required when attribute_data_type is String) Constraints for an attribute of the string type. Detailed below.schema: Defaults for Standard AttributesThe standard attributes have the following defaults. Note that attributes which match the default values are not stored in Terraform state when importing.number_attribute_constraints"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.string_attribute_constraints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_admin_create_user_only" {
  description = "(Optional) Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.allow_admin_create_user_only
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "define_auth_challenge" {
  description = "(Optional) Defines the authentication challenge."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.define_auth_challenge
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "from_email_address" {
  description = "(Optional) Sender’s email address or sender’s display name with their email address (e.g., john@example.com, John Smith <john@example.com> or \\\"John Smith Ph.D.\\\" <john@example.com>). Escaped double quotes are required around display names that contain certain characters as specified in RFC 5322."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.from_email_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_sms_sender" {
  description = "(Optional) A custom SMS sender AWS Lambda trigger. See custom_sms_sender Below.custom_email_sender"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_sms_sender
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_migration" {
  description = "(Optional) User migration Lambda config type."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.user_migration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "Date the user pool was created."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain" {
  description = "Holds the domain prefix if the user pool has a domain associated with it."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_date" {
  description = "Date the user pool was last modified."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.last_modified_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_domain" {
  description = "A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: auth.example.com."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "estimated_number_of_users" {
  description = "A number estimating the size of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.estimated_number_of_users
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.tags_all
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
      "kind/name"                   = "aws_cognito_user_pool.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
