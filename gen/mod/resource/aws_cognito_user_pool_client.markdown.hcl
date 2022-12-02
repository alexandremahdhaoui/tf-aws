resource "aws_cognito_user_pool_client.markdown" "aws_cognito_user_pool_client.markdown" {
  logout_urls                                   = var.logout_urls
  id                                            = var.id
  id_token                                      = var.id_token
  read_attributes                               = var.read_attributes
  refresh_token                                 = var.refresh_token
  enable_propagate_additional_user_context_data = var.enable_propagate_additional_user_context_data
  generate_secret                               = var.generate_secret
  prevent_user_existence_errors                 = var.prevent_user_existence_errors
  refresh_token_validity                        = var.refresh_token_validity
  user_data_shared                              = var.user_data_shared
  allowed_oauth_flows_user_pool_client          = var.allowed_oauth_flows_user_pool_client
  allowed_oauth_scopes                          = var.allowed_oauth_scopes
  application_id                                = var.application_id
  callback_urls                                 = var.callback_urls
  external_id                                   = var.external_id
  id_token_validity                             = var.id_token_validity
  access_token                                  = var.access_token
  analytics_configuration                       = var.analytics_configuration
  role_arn                                      = var.role_arn
  token_validity_units                          = var.token_validity_units
  write_attributes                              = var.write_attributes
  auth_session_validity                         = var.auth_session_validity
  name                                          = var.name
  allowed_oauth_flows                           = var.allowed_oauth_flows
  supported_identity_providers                  = var.supported_identity_providers
  explicit_auth_flows                           = var.explicit_auth_flows
  user_pool_id                                  = var.user_pool_id
  client_secret                                 = var.client_secret
  default_redirect_uri                          = var.default_redirect_uri
  enable_token_revocation                       = var.enable_token_revocation
  access_token_validity                         = var.access_token_validity
  application_arn                               = var.application_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "read_attributes" {
  description = "(Optional) List of user pool attributes the application client can read from."
  type        = string
  default     = ""
}
variable "refresh_token" {
  description = "(Optional) Time unit in for the value in refresh_token_validity, defaults to days.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "enable_propagate_additional_user_context_data" {
  description = "(Optional) Activates the propagation of additional user context data."
  type        = string
  default     = ""
}
variable "generate_secret" {
  description = "(Optional) Should an application secret be generated."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the user pool client."
  type        = string
  default     = ""
}
variable "id_token" {
  description = "(Optional) Time unit in for the value in id_token_validity, defaults to hours."
  type        = string
  default     = ""
}
variable "user_data_shared" {
  description = " (Optional) If set to true, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.token_validity_unitsValid values for the following arguments are: seconds, minutes, hours or days."
  type        = string
  default     = ""
}
variable "allowed_oauth_flows_user_pool_client" {
  description = "(Optional) Whether the client is allowed to follow the OAuth protocol when interacting with Cognito user pools."
  type        = string
  default     = ""
}
variable "allowed_oauth_scopes" {
  description = "(Optional) List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito.signin.user.admin)."
  type        = string
  default     = ""
}
variable "prevent_user_existence_errors" {
  description = "(Optional) Choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to ENABLED and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to LEGACY, those APIs will return a UserNotFoundException exception if the user does not exist in the user pool."
  type        = string
  default     = ""
}
variable "refresh_token_validity" {
  description = "(Optional) Time limit in days refresh tokens are valid for."
  type        = string
  default     = ""
}
variable "external_id" {
  description = "(Optional) ID for the Analytics Configuration. Conflicts with application_arn."
  type        = string
  default     = ""
}
variable "id_token_validity" {
  description = "(Optional) Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. This value will be overridden if you have entered a value in token_validity_units."
  type        = string
  default     = ""
}
variable "access_token" {
  description = "(Optional) Time unit in for the value in access_token_validity, defaults to hours."
  type        = string
  default     = ""
}
variable "analytics_configuration" {
  description = "(Optional) Configuration block for Amazon Pinpoint analytics for collecting metrics for this user pool. Detailed below."
  type        = string
  default     = ""
}
variable "application_id" {
  description = "(Optional) Application ID for an Amazon Pinpoint application."
  type        = string
  default     = ""
}
variable "callback_urls" {
  description = "(Optional) List of allowed callback URLs for the identity providers."
  type        = string
  default     = ""
}
variable "write_attributes" {
  description = "(Optional) List of user pool attributes the application client can write to.analytics_configurationEither application_arn or application_id is required."
  type        = string
  default     = ""
}
variable "auth_session_validity" {
  description = "(Optional) Amazon Cognito creates a session token for each API request in an authentication flow. AuthSessionValidity is the duration, in minutes, of that session token. Your user pool native user must respond to each authentication challenge before the session expires. Valid values between 3 and 15. Default value is 3."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the application client."
  type        = string
}
variable "role_arn" {
  description = "(Optional) ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with application_arn."
  type        = string
  default     = ""
}
variable "token_validity_units" {
  description = "(Optional) Configuration block for units in which the validity times are represented in. Detailed below."
  type        = string
  default     = ""
}
variable "allowed_oauth_flows" {
  description = "(Optional) List of allowed OAuth flows (code, implicit, client_credentials)."
  type        = string
  default     = ""
}
variable "supported_identity_providers" {
  description = "(Optional) List of provider names for the identity providers that are supported on this client. Uses the provider_name attribute of aws_cognito_identity_provider resource(s), or the equivalent string(s)."
  type        = string
  default     = ""
}
variable "explicit_auth_flows" {
  description = "(Optional) List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH)."
  type        = string
  default     = ""
}
variable "user_pool_id" {
  description = "(Required) User pool the client belongs to."
  type        = string
}
variable "enable_token_revocation" {
  description = "(Optional) Enables or disables token revocation."
  type        = string
  default     = ""
}
variable "access_token_validity" {
  description = "(Optional) Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. This value will be overridden if you have entered a value in token_validity_units."
  type        = string
  default     = ""
}
variable "application_arn" {
  description = "(Optional) Application ARN for an Amazon Pinpoint application. Conflicts with external_id and role_arn."
  type        = string
  default     = ""
}
variable "client_secret" {
  description = "Client secret of the user pool client."
  type        = string
  default     = ""
}
variable "default_redirect_uri" {
  description = "(Optional) Default redirect URI. Must be in the list of callback URLs."
  type        = string
  default     = ""
}
variable "logout_urls" {
  description = "(Optional) List of allowed logout URLs for the identity providers."
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
output "id" {
  description = "ID of the user pool client."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.id
}
output "id_token" {
  description = "(Optional) Time unit in for the value in id_token_validity, defaults to hours."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.id_token
}
output "read_attributes" {
  description = "(Optional) List of user pool attributes the application client can read from."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.read_attributes
}
output "refresh_token" {
  description = "(Optional) Time unit in for the value in refresh_token_validity, defaults to days.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.refresh_token
}
output "enable_propagate_additional_user_context_data" {
  description = "(Optional) Activates the propagation of additional user context data."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.enable_propagate_additional_user_context_data
}
output "generate_secret" {
  description = "(Optional) Should an application secret be generated."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.generate_secret
}
output "prevent_user_existence_errors" {
  description = "(Optional) Choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to ENABLED and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to LEGACY, those APIs will return a UserNotFoundException exception if the user does not exist in the user pool."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.prevent_user_existence_errors
}
output "refresh_token_validity" {
  description = "(Optional) Time limit in days refresh tokens are valid for."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.refresh_token_validity
}
output "user_data_shared" {
  description = " (Optional) If set to true, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.token_validity_unitsValid values for the following arguments are: seconds, minutes, hours or days."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.user_data_shared
}
output "allowed_oauth_flows_user_pool_client" {
  description = "(Optional) Whether the client is allowed to follow the OAuth protocol when interacting with Cognito user pools."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.allowed_oauth_flows_user_pool_client
}
output "allowed_oauth_scopes" {
  description = "(Optional) List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito.signin.user.admin)."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.allowed_oauth_scopes
}
output "application_id" {
  description = "(Optional) Application ID for an Amazon Pinpoint application."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.application_id
}
output "callback_urls" {
  description = "(Optional) List of allowed callback URLs for the identity providers."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.callback_urls
}
output "external_id" {
  description = "(Optional) ID for the Analytics Configuration. Conflicts with application_arn."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.external_id
}
output "id_token_validity" {
  description = "(Optional) Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. This value will be overridden if you have entered a value in token_validity_units."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.id_token_validity
}
output "access_token" {
  description = "(Optional) Time unit in for the value in access_token_validity, defaults to hours."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.access_token
}
output "analytics_configuration" {
  description = "(Optional) Configuration block for Amazon Pinpoint analytics for collecting metrics for this user pool. Detailed below."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.analytics_configuration
}
output "role_arn" {
  description = "(Optional) ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics. Conflicts with application_arn."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.role_arn
}
output "token_validity_units" {
  description = "(Optional) Configuration block for units in which the validity times are represented in. Detailed below."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.token_validity_units
}
output "write_attributes" {
  description = "(Optional) List of user pool attributes the application client can write to.analytics_configurationEither application_arn or application_id is required."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.write_attributes
}
output "auth_session_validity" {
  description = "(Optional) Amazon Cognito creates a session token for each API request in an authentication flow. AuthSessionValidity is the duration, in minutes, of that session token. Your user pool native user must respond to each authentication challenge before the session expires. Valid values between 3 and 15. Default value is 3."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.auth_session_validity
}
output "name" {
  description = "(Required) Name of the application client."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.name
}
output "allowed_oauth_flows" {
  description = "(Optional) List of allowed OAuth flows (code, implicit, client_credentials)."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.allowed_oauth_flows
}
output "supported_identity_providers" {
  description = "(Optional) List of provider names for the identity providers that are supported on this client. Uses the provider_name attribute of aws_cognito_identity_provider resource(s), or the equivalent string(s)."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.supported_identity_providers
}
output "explicit_auth_flows" {
  description = "(Optional) List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH)."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.explicit_auth_flows
}
output "user_pool_id" {
  description = "(Required) User pool the client belongs to."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.user_pool_id
}
output "client_secret" {
  description = "Client secret of the user pool client."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.client_secret
}
output "default_redirect_uri" {
  description = "(Optional) Default redirect URI. Must be in the list of callback URLs."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.default_redirect_uri
}
output "enable_token_revocation" {
  description = "(Optional) Enables or disables token revocation."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.enable_token_revocation
}
output "access_token_validity" {
  description = "(Optional) Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. This value will be overridden if you have entered a value in token_validity_units."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.access_token_validity
}
output "application_arn" {
  description = "(Optional) Application ARN for an Amazon Pinpoint application. Conflicts with external_id and role_arn."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.application_arn
}
output "logout_urls" {
  description = "(Optional) List of allowed logout URLs for the identity providers."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.logout_urls
}
output "client_secret" {
  description = "Client secret of the user pool client."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.client_secret
}
output "id" {
  description = "ID of the user pool client."
  value       = aws_cognito_user_pool_client.markdown.aws_cognito_user_pool_client.markdown.id
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
      "kind/name"                   = "aws_cognito_user_pool_client.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
