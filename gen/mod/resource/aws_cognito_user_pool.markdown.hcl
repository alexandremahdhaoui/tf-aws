resource "aws_cognito_user_pool.markdown" "aws_cognito_user_pool.markdown" {
  enabled                                       = var.enabled
  external_id                                   = var.external_id
  lambda_config                                 = var.lambda_config
  min_value                                     = var.min_value
  custom_sms_sender                             = var.custom_sms_sender
  deletion_protection                           = var.deletion_protection
  device_configuration                          = var.device_configuration
  email_message_by_link                         = var.email_message_by_link
  recovery_mechanism                            = var.recovery_mechanism
  reply_to_email_address                        = var.reply_to_email_address
  user_migration                                = var.user_migration
  require_lowercase                             = var.require_lowercase
  string_attribute_constraints                  = var.string_attribute_constraints
  create_auth_challenge                         = var.create_auth_challenge
  device_only_remembered_on_user_prompt         = var.device_only_remembered_on_user_prompt
  domain                                        = var.domain
  min_length                                    = var.min_length
  tags_all                                      = var.tags_all
  arn                                           = var.arn
  minimum_length                                = var.minimum_length
  pre_authentication                            = var.pre_authentication
  sms_configuration                             = var.sms_configuration
  post_confirmation                             = var.post_confirmation
  temporary_password_validity_days              = var.temporary_password_validity_days
  allow_admin_create_user_only                  = var.allow_admin_create_user_only
  attribute_data_type                           = var.attribute_data_type
  email_verification_subject                    = var.email_verification_subject
  estimated_number_of_users                     = var.estimated_number_of_users
  verification_message_template                 = var.verification_message_template
  email_message                                 = var.email_message
  mutable                                       = var.mutable
  password_policy                               = var.password_policy
  username_configuration                        = var.username_configuration
  challenge_required_on_new_device              = var.challenge_required_on_new_device
  developer_only_attribute                      = var.developer_only_attribute
  endpoint                                      = var.endpoint
  user_pool_add_ons                             = var.user_pool_add_ons
  custom_email_sender                           = var.custom_email_sender
  default_email_option                          = var.default_email_option
  name                                          = var.name
  software_token_mfa_configuration              = var.software_token_mfa_configuration
  mfa_configuration                             = var.mfa_configuration
  pre_token_generation                          = var.pre_token_generation
  require_symbols                               = var.require_symbols
  sms_verification_message                      = var.sms_verification_message
  alias_attributes                              = var.alias_attributes
  case_sensitive                                = var.case_sensitive
  email_subject                                 = var.email_subject
  lambda_version                                = var.lambda_version
  require_uppercase                             = var.require_uppercase
  tags                                          = var.tags
  advanced_security_mode                        = var.advanced_security_mode
  id                                            = var.id
  number_attribute_constraints                  = var.number_attribute_constraints
  priority                                      = var.priority
  lambda_arn                                    = var.lambda_arn
  post_authentication                           = var.post_authentication
  account_recovery_setting                      = var.account_recovery_setting
  email_configuration                           = var.email_configuration
  email_subject_by_link                         = var.email_subject_by_link
  email_verification_message                    = var.email_verification_message
  pre_sign_up                                   = var.pre_sign_up
  require_numbers                               = var.require_numbers
  sms_authentication_message                    = var.sms_authentication_message
  source_arn                                    = var.source_arn
  custom_domain                                 = var.custom_domain
  custom_message                                = var.custom_message
  invite_message_template                       = var.invite_message_template
  max_value                                     = var.max_value
  from_email_address                            = var.from_email_address
  sms_message                                   = var.sms_message
  user_attribute_update_settings                = var.user_attribute_update_settings
  admin_create_user_config                      = var.admin_create_user_config
  configuration_set                             = var.configuration_set
  email_sending_account                         = var.email_sending_account
  sns_caller_arn                                = var.sns_caller_arn
  username_attributes                           = var.username_attributes
  creation_date                                 = var.creation_date
  define_auth_challenge                         = var.define_auth_challenge
  last_modified_date                            = var.last_modified_date
  required                                      = var.required
  attributes_require_verification_before_update = var.attributes_require_verification_before_update
  auto_verified_attributes                      = var.auto_verified_attributes
  max_length                                    = var.max_length
  verify_auth_challenge_response                = var.verify_auth_challenge_response
  kms_key_id                                    = var.kms_key_id
  schema                                        = var.schema
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "from_email_address" {
  description = "(Optional) Sender’s email address or sender’s display name with their email address (e.g., john@example.com, John Smith <john@example.com> or \\\"John Smith Ph.D.\\\" <john@example.com>). Escaped double quotes are required around display names that contain certain characters as specified in RFC 5322."
  type        = string
  default     = ""
}
variable "sms_message" {
  description = "(Optional) SMS message template. Must contain the {####} placeholder. Conflicts with sms_verification_message argument.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "user_attribute_update_settings" {
  description = "(Optional) Configuration block for user attribute update settings. Detailed below."
  type        = string
  default     = ""
}
variable "sns_caller_arn" {
  description = "(Required) ARN of the Amazon SNS caller. This is usually the IAM role that you've given Cognito permission to assume.software_token_mfa_configurationThe following arguments are required in the software_token_mfa_configuration configuration block:"
  type        = string
}
variable "admin_create_user_config" {
  description = "(Optional) Configuration block for creating a new user profile. Detailed below."
  type        = string
  default     = ""
}
variable "configuration_set" {
  description = "(Optional) Email configuration set name from SES."
  type        = string
  default     = ""
}
variable "email_sending_account" {
  description = "(Optional) Email delivery method to use. COGNITO_DEFAULT for the default email functionality built into Cognito or DEVELOPER to use your Amazon SES configuration."
  type        = string
  default     = ""
}
variable "required" {
  description = "(Optional) Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail."
  type        = string
  default     = ""
}
variable "username_attributes" {
  description = "(Optional) Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with alias_attributes."
  type        = string
  default     = ""
}
variable "creation_date" {
  description = "Date the user pool was created."
  type        = string
  default     = ""
}
variable "define_auth_challenge" {
  description = "(Optional) Defines the authentication challenge."
  type        = string
  default     = ""
}
variable "last_modified_date" {
  description = "Date the user pool was last modified."
  type        = string
  default     = ""
}
variable "verify_auth_challenge_response" {
  description = "(Optional) Verifies the authentication challenge response."
  type        = string
  default     = ""
}
variable "attributes_require_verification_before_update" {
  description = "(Required) A list of attributes requiring verification before update. If set, the provided value(s) must also be set in auto_verified_attributes. Valid values: email, phone_number.user_pool_add_ons"
  type        = string
}
variable "auto_verified_attributes" {
  description = "(Optional) Attributes to be auto-verified. Valid values: email, phone_number."
  type        = string
  default     = ""
}
variable "max_length" {
  description = "(Optional) Maximum length of an attribute value of the string type."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) The Amazon Resource Name of Key Management Service Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender."
  type        = string
  default     = ""
}
variable "schema" {
  description = "(Optional) Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the standard attribute set only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes."
  type        = string
  default     = ""
}
variable "email_message_by_link" {
  description = "(Optional) Email message template for sending a confirmation link to the user, it must contain the {##Click Here##} placeholder."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Required) Boolean whether to enable software token Multi-Factor (MFA) tokens, such as Time-based One-Time Password (TOTP). To disable software token MFA When sms_configuration is not present, the mfa_configuration argument must be set to OFF and the software_token_mfa_configuration configuration block must be fully removed.user_attribute_update_settings"
  type        = string
}
variable "external_id" {
  description = "(Required) External ID used in IAM role trust relationships. For more information about using external IDs, see How to Use an External ID When Granting Access to Your AWS Resources to a Third Party."
  type        = string
}
variable "lambda_config" {
  description = "(Optional) Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below."
  type        = string
  default     = ""
}
variable "min_value" {
  description = "(Optional) Minimum value of an attribute that is of the number data type.string_attribute_constraints"
  type        = string
  default     = ""
}
variable "custom_sms_sender" {
  description = "(Optional) A custom SMS sender AWS Lambda trigger. See custom_sms_sender Below.custom_email_sender"
  type        = string
  default     = ""
}
variable "deletion_protection" {
  description = "(Optional) When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are ACTIVE and INACTIVE, Default value is INACTIVE."
  type        = string
  default     = ""
}
variable "device_configuration" {
  description = "(Optional) Configuration block for the user pool's device tracking. Detailed below."
  type        = string
  default     = ""
}
variable "recovery_mechanism" {
  description = "(Required) List of Account Recovery Options of the following structure:\n"
  type        = string
}
variable "reply_to_email_address" {
  description = "(Optional) REPLY-TO email address."
  type        = string
  default     = ""
}
variable "user_migration" {
  description = "(Optional) User migration Lambda config type."
  type        = string
  default     = ""
}
variable "min_length" {
  description = "(Optional) Minimum length of an attribute value of the string type.sms_configuration"
  type        = string
  default     = ""
}
variable "require_lowercase" {
  description = "(Optional) Whether you have required users to use at least one lowercase letter in their password."
  type        = string
  default     = ""
}
variable "string_attribute_constraints" {
  description = "(Required when attribute_data_type is String) Constraints for an attribute of the string type. Detailed below.schema: Defaults for Standard AttributesThe standard attributes have the following defaults. Note that attributes which match the default values are not stored in Terraform state when importing.number_attribute_constraints"
  type        = string
  default     = ""
}
variable "create_auth_challenge" {
  description = "(Optional) ARN of the lambda creating an authentication challenge."
  type        = string
  default     = ""
}
variable "device_only_remembered_on_user_prompt" {
  description = "(Optional) Whether a device is only remembered on user prompt. false equates to \"Always\" remember, true is \"User Opt In,\" and not using a device_configuration block is \"No.\"email_configuration"
  type        = string
  default     = ""
}
variable "domain" {
  description = "Holds the domain prefix if the user pool has a domain associated with it."
  type        = string
  default     = ""
}
variable "sms_configuration" {
  description = "(Optional) Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the taint command."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the user pool."
  type        = string
  default     = ""
}
variable "minimum_length" {
  description = "(Optional) Minimum length of the password policy that you have set."
  type        = string
  default     = ""
}
variable "pre_authentication" {
  description = "(Optional) Pre-authentication AWS Lambda trigger."
  type        = string
  default     = ""
}
variable "estimated_number_of_users" {
  description = "A number estimating the size of the user pool."
  type        = string
  default     = ""
}
variable "post_confirmation" {
  description = "(Optional) Post-confirmation AWS Lambda trigger."
  type        = string
  default     = ""
}
variable "temporary_password_validity_days" {
  description = "(Optional) In the password policy you have set, refers to the number of days a temporary password is valid. If the user does not sign-in during this time, their password will need to be reset by an administrator.schema~> strongNOTE: When defining an attribute_data_type of String or Number, the respective attribute constraints configuration block (e.g string_attribute_constraints or number_attribute_constraints) is strongrequired to prevent recreation of the Terraform resource. This requirement is true for both standard (e.g., name, email) and custom schema attributes."
  type        = string
  default     = ""
}
variable "allow_admin_create_user_only" {
  description = "(Optional) Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app."
  type        = string
  default     = ""
}
variable "attribute_data_type" {
  description = "(Required) Attribute data type. Must be one of Boolean, Number, String, DateTime."
  type        = string
}
variable "email_verification_subject" {
  description = "(Optional) String representing the email verification subject. Conflicts with verification_message_template configuration block email_subject argument."
  type        = string
  default     = ""
}
variable "username_configuration" {
  description = "(Optional) Configuration block for username configuration. Detailed below."
  type        = string
  default     = ""
}
variable "verification_message_template" {
  description = "(Optional) Configuration block for verification message templates. Detailed below.account_recovery_setting"
  type        = string
  default     = ""
}
variable "email_message" {
  description = "(Optional) Email message template. Must contain the {####} placeholder. Conflicts with email_verification_message argument."
  type        = string
  default     = ""
}
variable "mutable" {
  description = "(Optional) Whether the attribute can be changed once it has been created."
  type        = string
  default     = ""
}
variable "password_policy" {
  description = "(Optional) Configuration blocked for information about the user pool password policy. Detailed below."
  type        = string
  default     = ""
}
variable "user_pool_add_ons" {
  description = "(Optional) Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below."
  type        = string
  default     = ""
}
variable "challenge_required_on_new_device" {
  description = "(Optional) Whether a challenge is required on a new device. Only applicable to a new device."
  type        = string
  default     = ""
}
variable "developer_only_attribute" {
  description = "(Optional) Whether the attribute type is developer only."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
  type        = string
  default     = ""
}
variable "software_token_mfa_configuration" {
  description = "(Optional) Configuration block for software token Mult-Factor Authentication (MFA) settings. Detailed below."
  type        = string
  default     = ""
}
variable "custom_email_sender" {
  description = "(Optional) A custom email sender AWS Lambda trigger. See custom_email_sender Below."
  type        = string
  default     = ""
}
variable "default_email_option" {
  description = "(Optional) Default email option. Must be either CONFIRM_WITH_CODE or CONFIRM_WITH_LINK. Defaults to CONFIRM_WITH_CODE."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the attribute."
  type        = string
}
variable "lambda_version" {
  description = "(Required) The Lambda version represents the signature of the \"request\" attribute in the \"event\" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is V1_0.password_policy"
  type        = string
}
variable "mfa_configuration" {
  description = "(Optional) Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of OFF. Valid values are OFF (MFA Tokens are not required), ON (MFA is required for all users to sign in; requires at least one of sms_configuration or software_token_mfa_configuration to be configured), or OPTIONAL (MFA Will be required only for individual users who have MFA Enabled; requires at least one of sms_configuration or software_token_mfa_configuration to be configured)."
  type        = string
  default     = ""
}
variable "pre_token_generation" {
  description = "(Optional) Allow to customize identity token claims before token generation."
  type        = string
  default     = ""
}
variable "require_symbols" {
  description = "(Optional) Whether you have required users to use at least one symbol in their password."
  type        = string
  default     = ""
}
variable "sms_verification_message" {
  description = "(Optional) String representing the SMS verification message. Conflicts with verification_message_template configuration block sms_message argument."
  type        = string
  default     = ""
}
variable "alias_attributes" {
  description = "(Optional) Attributes supported as an alias for this user pool. Valid values: phone_number, email, or preferred_username. Conflicts with username_attributes."
  type        = string
  default     = ""
}
variable "case_sensitive" {
  description = "(Required) Whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.verification_message_template"
  type        = string
}
variable "email_subject" {
  description = "(Optional) Subject line for the email message template. Conflicts with email_verification_subject argument."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Required) Positive integer specifying priority of a method with 1 being the highest priority.admin_create_user_config"
  type        = string
}
variable "require_uppercase" {
  description = "(Optional) Whether you have required users to use at least one uppercase letter in their password."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the User Pool. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "advanced_security_mode" {
  description = "(Required) Mode for advanced security, must be one of OFF, AUDIT or ENFORCED.username_configuration"
  type        = string
}
variable "id" {
  description = "ID of the user pool."
  type        = string
  default     = ""
}
variable "number_attribute_constraints" {
  description = "(Required when attribute_data_type is Number) Configuration block for the constraints for an attribute of the number type. Detailed below."
  type        = string
  default     = ""
}
variable "email_verification_message" {
  description = "(Optional) String representing the email verification message. Conflicts with verification_message_template configuration block email_message argument."
  type        = string
  default     = ""
}
variable "lambda_arn" {
  description = "(Required) The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users."
  type        = string
}
variable "post_authentication" {
  description = "(Optional) Post-authentication AWS Lambda trigger."
  type        = string
  default     = ""
}
variable "account_recovery_setting" {
  description = "(Optional) Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below."
  type        = string
  default     = ""
}
variable "email_configuration" {
  description = "(Optional) Configuration block for configuring email. Detailed below."
  type        = string
  default     = ""
}
variable "email_subject_by_link" {
  description = "(Optional) Subject line for the email message template for sending a confirmation link to the user."
  type        = string
  default     = ""
}
variable "max_value" {
  description = "(Optional) Maximum value of an attribute that is of the number data type."
  type        = string
  default     = ""
}
variable "pre_sign_up" {
  description = "(Optional) Pre-registration AWS Lambda trigger."
  type        = string
  default     = ""
}
variable "require_numbers" {
  description = "(Optional) Whether you have required users to use at least one number in their password."
  type        = string
  default     = ""
}
variable "sms_authentication_message" {
  description = "(Optional) String representing the SMS authentication message. The Message must contain the {####} placeholder, which will be replaced with the code."
  type        = string
  default     = ""
}
variable "source_arn" {
  description = "(Optional) ARN of the SES verified email identity to to use. Required if email_sending_account is set to DEVELOPER.lambda_config"
  type        = string
  default     = ""
}
variable "custom_domain" {
  description = "A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: auth.example.com."
  type        = string
  default     = ""
}
variable "custom_message" {
  description = "(Optional) Custom Message AWS Lambda trigger."
  type        = string
  default     = ""
}
variable "invite_message_template" {
  description = "(Optional) Invite message template structure. Detailed below.invite_message_template"
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
output "attributes_require_verification_before_update" {
  description = "(Required) A list of attributes requiring verification before update. If set, the provided value(s) must also be set in auto_verified_attributes. Valid values: email, phone_number.user_pool_add_ons"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.attributes_require_verification_before_update
}
output "auto_verified_attributes" {
  description = "(Optional) Attributes to be auto-verified. Valid values: email, phone_number."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.auto_verified_attributes
}
output "max_length" {
  description = "(Optional) Maximum length of an attribute value of the string type."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.max_length
}
output "verify_auth_challenge_response" {
  description = "(Optional) Verifies the authentication challenge response."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.verify_auth_challenge_response
}
output "kms_key_id" {
  description = "(Optional) The Amazon Resource Name of Key Management Service Customer master keys. Amazon Cognito uses the key to encrypt codes and temporary passwords sent to CustomEmailSender and CustomSMSSender."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.kms_key_id
}
output "schema" {
  description = "(Optional) Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the standard attribute set only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.schema
}
output "lambda_config" {
  description = "(Optional) Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.lambda_config
}
output "min_value" {
  description = "(Optional) Minimum value of an attribute that is of the number data type.string_attribute_constraints"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.min_value
}
output "custom_sms_sender" {
  description = "(Optional) A custom SMS sender AWS Lambda trigger. See custom_sms_sender Below.custom_email_sender"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_sms_sender
}
output "deletion_protection" {
  description = "(Optional) When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are ACTIVE and INACTIVE, Default value is INACTIVE."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.deletion_protection
}
output "device_configuration" {
  description = "(Optional) Configuration block for the user pool's device tracking. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.device_configuration
}
output "email_message_by_link" {
  description = "(Optional) Email message template for sending a confirmation link to the user, it must contain the {##Click Here##} placeholder."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_message_by_link
}
output "enabled" {
  description = "(Required) Boolean whether to enable software token Multi-Factor (MFA) tokens, such as Time-based One-Time Password (TOTP). To disable software token MFA When sms_configuration is not present, the mfa_configuration argument must be set to OFF and the software_token_mfa_configuration configuration block must be fully removed.user_attribute_update_settings"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.enabled
}
output "external_id" {
  description = "(Required) External ID used in IAM role trust relationships. For more information about using external IDs, see How to Use an External ID When Granting Access to Your AWS Resources to a Third Party."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.external_id
}
output "recovery_mechanism" {
  description = "(Required) List of Account Recovery Options of the following structure:\n"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.recovery_mechanism
}
output "reply_to_email_address" {
  description = "(Optional) REPLY-TO email address."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.reply_to_email_address
}
output "user_migration" {
  description = "(Optional) User migration Lambda config type."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.user_migration
}
output "create_auth_challenge" {
  description = "(Optional) ARN of the lambda creating an authentication challenge."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.create_auth_challenge
}
output "device_only_remembered_on_user_prompt" {
  description = "(Optional) Whether a device is only remembered on user prompt. false equates to \"Always\" remember, true is \"User Opt In,\" and not using a device_configuration block is \"No.\"email_configuration"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.device_only_remembered_on_user_prompt
}
output "domain" {
  description = "Holds the domain prefix if the user pool has a domain associated with it."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.domain
}
output "min_length" {
  description = "(Optional) Minimum length of an attribute value of the string type.sms_configuration"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.min_length
}
output "require_lowercase" {
  description = "(Optional) Whether you have required users to use at least one lowercase letter in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_lowercase
}
output "string_attribute_constraints" {
  description = "(Required when attribute_data_type is String) Constraints for an attribute of the string type. Detailed below.schema: Defaults for Standard AttributesThe standard attributes have the following defaults. Note that attributes which match the default values are not stored in Terraform state when importing.number_attribute_constraints"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.string_attribute_constraints
}
output "arn" {
  description = "ARN of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.arn
}
output "minimum_length" {
  description = "(Optional) Minimum length of the password policy that you have set."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.minimum_length
}
output "pre_authentication" {
  description = "(Optional) Pre-authentication AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.pre_authentication
}
output "sms_configuration" {
  description = "(Optional) Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the taint command."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_configuration
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.tags_all
}
output "allow_admin_create_user_only" {
  description = "(Optional) Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.allow_admin_create_user_only
}
output "attribute_data_type" {
  description = "(Required) Attribute data type. Must be one of Boolean, Number, String, DateTime."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.attribute_data_type
}
output "email_verification_subject" {
  description = "(Optional) String representing the email verification subject. Conflicts with verification_message_template configuration block email_subject argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_verification_subject
}
output "estimated_number_of_users" {
  description = "A number estimating the size of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.estimated_number_of_users
}
output "post_confirmation" {
  description = "(Optional) Post-confirmation AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.post_confirmation
}
output "temporary_password_validity_days" {
  description = "(Optional) In the password policy you have set, refers to the number of days a temporary password is valid. If the user does not sign-in during this time, their password will need to be reset by an administrator.schema~> strongNOTE: When defining an attribute_data_type of String or Number, the respective attribute constraints configuration block (e.g string_attribute_constraints or number_attribute_constraints) is strongrequired to prevent recreation of the Terraform resource. This requirement is true for both standard (e.g., name, email) and custom schema attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.temporary_password_validity_days
}
output "email_message" {
  description = "(Optional) Email message template. Must contain the {####} placeholder. Conflicts with email_verification_message argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_message
}
output "mutable" {
  description = "(Optional) Whether the attribute can be changed once it has been created."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.mutable
}
output "password_policy" {
  description = "(Optional) Configuration blocked for information about the user pool password policy. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.password_policy
}
output "username_configuration" {
  description = "(Optional) Configuration block for username configuration. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.username_configuration
}
output "verification_message_template" {
  description = "(Optional) Configuration block for verification message templates. Detailed below.account_recovery_setting"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.verification_message_template
}
output "challenge_required_on_new_device" {
  description = "(Optional) Whether a challenge is required on a new device. Only applicable to a new device."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.challenge_required_on_new_device
}
output "developer_only_attribute" {
  description = "(Optional) Whether the attribute type is developer only."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.developer_only_attribute
}
output "endpoint" {
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.endpoint
}
output "user_pool_add_ons" {
  description = "(Optional) Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.user_pool_add_ons
}
output "custom_email_sender" {
  description = "(Optional) A custom email sender AWS Lambda trigger. See custom_email_sender Below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_email_sender
}
output "default_email_option" {
  description = "(Optional) Default email option. Must be either CONFIRM_WITH_CODE or CONFIRM_WITH_LINK. Defaults to CONFIRM_WITH_CODE."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.default_email_option
}
output "name" {
  description = "(Required) Name of the attribute."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.name
}
output "software_token_mfa_configuration" {
  description = "(Optional) Configuration block for software token Mult-Factor Authentication (MFA) settings. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.software_token_mfa_configuration
}
output "require_symbols" {
  description = "(Optional) Whether you have required users to use at least one symbol in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_symbols
}
output "sms_verification_message" {
  description = "(Optional) String representing the SMS verification message. Conflicts with verification_message_template configuration block sms_message argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_verification_message
}
output "alias_attributes" {
  description = "(Optional) Attributes supported as an alias for this user pool. Valid values: phone_number, email, or preferred_username. Conflicts with username_attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.alias_attributes
}
output "case_sensitive" {
  description = "(Required) Whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.verification_message_template"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.case_sensitive
}
output "email_subject" {
  description = "(Optional) Subject line for the email message template. Conflicts with email_verification_subject argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_subject
}
output "lambda_version" {
  description = "(Required) The Lambda version represents the signature of the \"request\" attribute in the \"event\" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is V1_0.password_policy"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.lambda_version
}
output "mfa_configuration" {
  description = "(Optional) Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of OFF. Valid values are OFF (MFA Tokens are not required), ON (MFA is required for all users to sign in; requires at least one of sms_configuration or software_token_mfa_configuration to be configured), or OPTIONAL (MFA Will be required only for individual users who have MFA Enabled; requires at least one of sms_configuration or software_token_mfa_configuration to be configured)."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.mfa_configuration
}
output "pre_token_generation" {
  description = "(Optional) Allow to customize identity token claims before token generation."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.pre_token_generation
}
output "advanced_security_mode" {
  description = "(Required) Mode for advanced security, must be one of OFF, AUDIT or ENFORCED.username_configuration"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.advanced_security_mode
}
output "id" {
  description = "ID of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.id
}
output "number_attribute_constraints" {
  description = "(Required when attribute_data_type is Number) Configuration block for the constraints for an attribute of the number type. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.number_attribute_constraints
}
output "priority" {
  description = "(Required) Positive integer specifying priority of a method with 1 being the highest priority.admin_create_user_config"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.priority
}
output "require_uppercase" {
  description = "(Optional) Whether you have required users to use at least one uppercase letter in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_uppercase
}
output "tags" {
  description = "(Optional) Map of tags to assign to the User Pool. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.tags
}
output "account_recovery_setting" {
  description = "(Optional) Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.account_recovery_setting
}
output "email_configuration" {
  description = "(Optional) Configuration block for configuring email. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_configuration
}
output "email_subject_by_link" {
  description = "(Optional) Subject line for the email message template for sending a confirmation link to the user."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_subject_by_link
}
output "email_verification_message" {
  description = "(Optional) String representing the email verification message. Conflicts with verification_message_template configuration block email_message argument."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_verification_message
}
output "lambda_arn" {
  description = "(Required) The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.lambda_arn
}
output "post_authentication" {
  description = "(Optional) Post-authentication AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.post_authentication
}
output "sms_authentication_message" {
  description = "(Optional) String representing the SMS authentication message. The Message must contain the {####} placeholder, which will be replaced with the code."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_authentication_message
}
output "source_arn" {
  description = "(Optional) ARN of the SES verified email identity to to use. Required if email_sending_account is set to DEVELOPER.lambda_config"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.source_arn
}
output "custom_domain" {
  description = "A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: auth.example.com."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_domain
}
output "custom_message" {
  description = "(Optional) Custom Message AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_message
}
output "invite_message_template" {
  description = "(Optional) Invite message template structure. Detailed below.invite_message_template"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.invite_message_template
}
output "max_value" {
  description = "(Optional) Maximum value of an attribute that is of the number data type."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.max_value
}
output "pre_sign_up" {
  description = "(Optional) Pre-registration AWS Lambda trigger."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.pre_sign_up
}
output "require_numbers" {
  description = "(Optional) Whether you have required users to use at least one number in their password."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.require_numbers
}
output "from_email_address" {
  description = "(Optional) Sender’s email address or sender’s display name with their email address (e.g., john@example.com, John Smith <john@example.com> or \\\"John Smith Ph.D.\\\" <john@example.com>). Escaped double quotes are required around display names that contain certain characters as specified in RFC 5322."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.from_email_address
}
output "sms_message" {
  description = "(Optional) SMS message template. Must contain the {####} placeholder. Conflicts with sms_verification_message argument.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sms_message
}
output "user_attribute_update_settings" {
  description = "(Optional) Configuration block for user attribute update settings. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.user_attribute_update_settings
}
output "admin_create_user_config" {
  description = "(Optional) Configuration block for creating a new user profile. Detailed below."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.admin_create_user_config
}
output "configuration_set" {
  description = "(Optional) Email configuration set name from SES."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.configuration_set
}
output "email_sending_account" {
  description = "(Optional) Email delivery method to use. COGNITO_DEFAULT for the default email functionality built into Cognito or DEVELOPER to use your Amazon SES configuration."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.email_sending_account
}
output "sns_caller_arn" {
  description = "(Required) ARN of the Amazon SNS caller. This is usually the IAM role that you've given Cognito permission to assume.software_token_mfa_configurationThe following arguments are required in the software_token_mfa_configuration configuration block:"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.sns_caller_arn
}
output "creation_date" {
  description = "Date the user pool was created."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.creation_date
}
output "define_auth_challenge" {
  description = "(Optional) Defines the authentication challenge."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.define_auth_challenge
}
output "last_modified_date" {
  description = "Date the user pool was last modified."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.last_modified_date
}
output "required" {
  description = "(Optional) Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.required
}
output "username_attributes" {
  description = "(Optional) Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with alias_attributes."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.username_attributes
}
output "creation_date" {
  description = "Date the user pool was created."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.creation_date
}
output "estimated_number_of_users" {
  description = "A number estimating the size of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.estimated_number_of_users
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.tags_all
}
output "arn" {
  description = "ARN of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.arn
}
output "custom_domain" {
  description = "A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: auth.example.com."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.custom_domain
}
output "domain" {
  description = "Holds the domain prefix if the user pool has a domain associated with it."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.domain
}
output "endpoint" {
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.endpoint
}
output "id" {
  description = "ID of the user pool."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.id
}
output "last_modified_date" {
  description = "Date the user pool was last modified."
  value       = aws_cognito_user_pool.markdown.aws_cognito_user_pool.markdown.last_modified_date
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
      "kind/name"                   = "aws_cognito_user_pool.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
