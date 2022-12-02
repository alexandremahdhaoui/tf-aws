resource "aws_appsync_graphql_api" "aws_appsync_graphql_api" {
  exclude_verbose_content            = var.exclude_verbose_content
  id                                 = var.id
  openid_connect_config              = var.openid_connect_config
  additional_authentication_provider = var.additional_authentication_provider
  iat_ttl                            = var.iat_ttl
  authentication_type                = var.authentication_type
  tags_all                           = var.tags_all
  user_pool_config                   = var.user_pool_config
  arn                                = var.arn
  auth_ttl                           = var.auth_ttl
  client_id                          = var.client_id
  default_action                     = var.default_action
  issuer                             = var.issuer
  schema                             = var.schema
  tags                               = var.tags
  aws_region                         = var.aws_region
  field_log_level                    = var.field_log_level
  name                               = var.name
  authorizer_result_ttl_in_seconds   = var.authorizer_result_ttl_in_seconds
  authorizer_uri                     = var.authorizer_uri
  lambda_authorizer_config           = var.lambda_authorizer_config
  log_config                         = var.log_config
  xray_enabled                       = var.xray_enabled
  cloudwatch_logs_role_arn           = var.cloudwatch_logs_role_arn
  identity_validation_expression     = var.identity_validation_expression
  user_pool_id                       = var.user_pool_id
  app_id_client_regex                = var.app_id_client_regex
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "additional_authentication_provider" {
  description = "(Optional) One or more additional authentication providers for the GraphqlApi. Defined below."
  type        = string
  default     = ""
}
variable "iat_ttl" {
  description = "(Optional) Number of milliseconds a token is valid after being issued to a user.user_pool_config"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN"
  type        = string
}
variable "auth_ttl" {
  description = "(Optional) Number of milliseconds a token is valid after being authenticated."
  type        = string
  default     = ""
}
variable "authentication_type" {
  description = "(Required) Authentication type. Valid values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA"
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "user_pool_config" {
  description = "(Optional) Amazon Cognito User Pool configuration. Defined below.openid_connect_config"
  type        = string
  default     = ""
}
variable "aws_region" {
  description = "(Optional) AWS region in which the user pool was created.lambda_authorizer_config"
  type        = string
  default     = ""
}
variable "client_id" {
  description = "(Optional) Client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time."
  type        = string
  default     = ""
}
variable "default_action" {
  description = "(Required only if Cognito is used as the default auth provider) Action that you want your GraphQL API to take when a request that uses Amazon Cognito User Pool authentication doesn't match the Amazon Cognito User Pool configuration. Valid: ALLOW and DENY"
  type        = string
}
variable "issuer" {
  description = "(Required) Issuer for the OpenID Connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token."
  type        = string
}
variable "schema" {
  description = "(Optional) Schema definition, in GraphQL schema language format. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "authorizer_result_ttl_in_seconds" {
  description = "(Optional) Number of seconds a response should be cached for. The default is 5 minutes (300 seconds). The Lambda function can override this by returning a ttlOverride key in its response. A value of 0 disables caching of responses. Minimum value of 0. Maximum value of 3600."
  type        = string
  default     = ""
}
variable "authorizer_uri" {
  description = "(Required) ARN of the Lambda function to be called for authorization. Note: This Lambda function must have a resource-based policy assigned to it, to allow lambda:InvokeFunction from service principal appsync.amazonaws.com."
  type        = string
}
variable "field_log_level" {
  description = "(Required) Field logging level. Valid values: ALL, ERROR, NONE."
  type        = string
}
variable "name" {
  description = "(Required) User-supplied name for the GraphqlApi."
  type        = string
}
variable "cloudwatch_logs_role_arn" {
  description = "(Required) Amazon Resource Name of the service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account."
  type        = string
}
variable "identity_validation_expression" {
  description = "(Optional) Regular expression for validation of tokens before the Lambda function is called.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "lambda_authorizer_config" {
  description = "(Optional) Nested argument containing Lambda authorizer configuration. Defined below."
  type        = string
  default     = ""
}
variable "log_config" {
  description = "(Optional) Nested argument containing logging configuration. Defined below."
  type        = string
  default     = ""
}
variable "xray_enabled" {
  description = "(Optional) Whether tracing with X-ray is enabled. Defaults to false.log_config"
  type        = string
  default     = ""
}
variable "user_pool_id" {
  description = "(Required) User pool ID."
  type        = string
}
variable "app_id_client_regex" {
  description = "(Optional) Regular expression for validating the incoming Amazon Cognito User Pool app client ID."
  type        = string
  default     = ""
}
variable "exclude_verbose_content" {
  description = "(Optional) Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging  level. Valid values: true, false. Default value: falseadditional_authentication_provider"
  type        = string
  default     = ""
}
variable "id" {
  description = "API ID"
  type        = string
}
variable "openid_connect_config" {
  description = "(Optional) Nested argument containing OpenID Connect configuration. Defined below."
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
output "user_pool_id" {
  description = "(Required) User pool ID."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.user_pool_id
}
output "app_id_client_regex" {
  description = "(Optional) Regular expression for validating the incoming Amazon Cognito User Pool app client ID."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.app_id_client_regex
}
output "openid_connect_config" {
  description = "(Optional) Nested argument containing OpenID Connect configuration. Defined below."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.openid_connect_config
}
output "exclude_verbose_content" {
  description = "(Optional) Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging  level. Valid values: true, false. Default value: falseadditional_authentication_provider"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.exclude_verbose_content
}
output "id" {
  description = "API ID"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.id
}
output "additional_authentication_provider" {
  description = "(Optional) One or more additional authentication providers for the GraphqlApi. Defined below."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.additional_authentication_provider
}
output "iat_ttl" {
  description = "(Optional) Number of milliseconds a token is valid after being issued to a user.user_pool_config"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.iat_ttl
}
output "arn" {
  description = "ARN"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.arn
}
output "auth_ttl" {
  description = "(Optional) Number of milliseconds a token is valid after being authenticated."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.auth_ttl
}
output "authentication_type" {
  description = "(Required) Authentication type. Valid values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.authentication_type
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.tags_all
}
output "user_pool_config" {
  description = "(Optional) Amazon Cognito User Pool configuration. Defined below.openid_connect_config"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.user_pool_config
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.tags
}
output "aws_region" {
  description = "(Optional) AWS region in which the user pool was created.lambda_authorizer_config"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.aws_region
}
output "client_id" {
  description = "(Optional) Client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.client_id
}
output "default_action" {
  description = "(Required only if Cognito is used as the default auth provider) Action that you want your GraphQL API to take when a request that uses Amazon Cognito User Pool authentication doesn't match the Amazon Cognito User Pool configuration. Valid: ALLOW and DENY"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.default_action
}
output "issuer" {
  description = "(Required) Issuer for the OpenID Connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.issuer
}
output "schema" {
  description = "(Optional) Schema definition, in GraphQL schema language format. Terraform cannot perform drift detection of this configuration."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.schema
}
output "authorizer_result_ttl_in_seconds" {
  description = "(Optional) Number of seconds a response should be cached for. The default is 5 minutes (300 seconds). The Lambda function can override this by returning a ttlOverride key in its response. A value of 0 disables caching of responses. Minimum value of 0. Maximum value of 3600."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.authorizer_result_ttl_in_seconds
}
output "authorizer_uri" {
  description = "(Required) ARN of the Lambda function to be called for authorization. Note: This Lambda function must have a resource-based policy assigned to it, to allow lambda:InvokeFunction from service principal appsync.amazonaws.com."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.authorizer_uri
}
output "field_log_level" {
  description = "(Required) Field logging level. Valid values: ALL, ERROR, NONE."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.field_log_level
}
output "name" {
  description = "(Required) User-supplied name for the GraphqlApi."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.name
}
output "cloudwatch_logs_role_arn" {
  description = "(Required) Amazon Resource Name of the service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.cloudwatch_logs_role_arn
}
output "identity_validation_expression" {
  description = "(Optional) Regular expression for validation of tokens before the Lambda function is called.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.identity_validation_expression
}
output "lambda_authorizer_config" {
  description = "(Optional) Nested argument containing Lambda authorizer configuration. Defined below."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.lambda_authorizer_config
}
output "log_config" {
  description = "(Optional) Nested argument containing logging configuration. Defined below."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.log_config
}
output "xray_enabled" {
  description = "(Optional) Whether tracing with X-ray is enabled. Defaults to false.log_config"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.xray_enabled
}
output "uris" {
  description = "Map of URIs associated with the APIE.g., uris[\"GRAPHQL\"] = https://ID.appsync-api.REGION.amazonaws.com/graphql"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.uris
}
output "arn" {
  description = "ARN"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.arn
}
output "id" {
  description = "API ID"
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appsync_graphql_api.aws_appsync_graphql_api.tags_all
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
      "kind/name"                   = "aws_appsync_graphql_api"
      "kind/version"                = "v0.1.0"
    }
  }
}
