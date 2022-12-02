resource "aws_cloudwatch_event_connection" "aws_cloudwatch_event_connection" {
  header                     = var.header
  oauth                      = var.oauth
  authorization_endpoint     = var.authorization_endpoint
  authorization_type         = var.authorization_type
  client_secret              = var.client_secret
  invocation_http_parameters = var.invocation_http_parameters
  key                        = var.key
  username                   = var.username
  name                       = var.name
  oauth_http_parameters      = var.oauth_http_parameters
  auth_parameters            = var.auth_parameters
  body                       = var.body
  is_value_secret            = var.is_value_secret
  client_id                  = var.client_id
  client_parameters          = var.client_parameters
  description                = var.description
  http_method                = var.http_method
  password                   = var.password
  api_key                    = var.api_key
  arn                        = var.arn
  basic                      = var.basic
  query_string               = var.query_string
  value                      = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "header" {
  description = "(Optional) Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:"
  type        = string
  default     = ""
}
variable "oauth" {
  description = "(Optional) Parameters used for OAUTH_CLIENT_CREDENTIALS authorization. A maximum of 1 are allowed. Conflicts with basic and api_key. Documented below.api_key support the following:"
  type        = string
  default     = ""
}
variable "authorization_endpoint" {
  description = "(Required) The URL to the authorization endpoint."
  type        = string
}
variable "authorization_type" {
  description = "(Required) Choose the type of authorization to use for the connection. One of API_KEY,BASIC,OAUTH_CLIENT_CREDENTIALS."
  type        = string
}
variable "client_secret" {
  description = "(Required) The client secret for the credentials to use for authorization. Created and stored in AWS Secrets Manager."
  type        = string
}
variable "invocation_http_parameters" {
  description = "(Optional) Invocation Http Parameters are additional credentials used to sign each Invocation of the ApiDestination created from this Connection. If the ApiDestination Rule Target has additional HttpParameters, the values will be merged together, with the Connection Invocation Http Parameters taking precedence. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.auth_parameters support the following:"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) The key for the parameter."
  type        = string
}
variable "username" {
  description = "(Required) A username for the authorization."
  type        = string
}
variable "name" {
  description = "(Required) The name of the new connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_."
  type        = string
}
variable "oauth_http_parameters" {
  description = "(Required) OAuth Http Parameters are additional credentials used to sign the request to the authorization endpoint to exchange the OAuth Client information for an access token. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.invocation_http_parameters and oauth_http_parameters support the following:"
  type        = string
}
variable "auth_parameters" {
  description = "(Required) Parameters used for authorization. A maximum of 1 are allowed. Documented below."
  type        = string
}
variable "body" {
  description = "(Optional) Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:"
  type        = string
  default     = ""
}
variable "is_value_secret" {
  description = "(Optional) Specified whether the value is secret.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "client_id" {
  description = "(Required) The client ID for the credentials to use for authorization. Created and stored in AWS Secrets Manager."
  type        = string
}
variable "client_parameters" {
  description = "(Required) Contains the client parameters for OAuth authorization. Contains the following two parameters.\n"
  type        = string
}
variable "description" {
  description = "(Optional) Enter a description for the connection. Maximum of 512 characters."
  type        = string
  default     = ""
}
variable "http_method" {
  description = "(Required) A password for the authorization. Created and stored in AWS Secrets Manager."
  type        = string
}
variable "password" {
  description = "(Required) A password for the authorization. Created and stored in AWS Secrets Manager.oauth support the following:"
  type        = string
}
variable "api_key" {
  description = "(Optional) Parameters used for API_KEY authorization. An API key to include in the header for each authentication request. A maximum of 1 are allowed. Conflicts with basic and oauth. Documented below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the connection."
  type        = string
}
variable "basic" {
  description = "(Optional) Parameters used for BASIC authorization. A maximum of 1 are allowed. Conflicts with api_key and oauth. Documented below."
  type        = string
  default     = ""
}
variable "query_string" {
  description = "(Optional) Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) The value associated with the key. Created and stored in AWS Secrets Manager if is secret."
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
output "authorization_endpoint" {
  description = "(Required) The URL to the authorization endpoint."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.authorization_endpoint
}
output "authorization_type" {
  description = "(Required) Choose the type of authorization to use for the connection. One of API_KEY,BASIC,OAUTH_CLIENT_CREDENTIALS."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.authorization_type
}
output "client_secret" {
  description = "(Required) The client secret for the credentials to use for authorization. Created and stored in AWS Secrets Manager."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.client_secret
}
output "header" {
  description = "(Optional) Contains additional header parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.header
}
output "oauth" {
  description = "(Optional) Parameters used for OAUTH_CLIENT_CREDENTIALS authorization. A maximum of 1 are allowed. Conflicts with basic and api_key. Documented below.api_key support the following:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.oauth
}
output "invocation_http_parameters" {
  description = "(Optional) Invocation Http Parameters are additional credentials used to sign each Invocation of the ApiDestination created from this Connection. If the ApiDestination Rule Target has additional HttpParameters, the values will be merged together, with the Connection Invocation Http Parameters taking precedence. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.auth_parameters support the following:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.invocation_http_parameters
}
output "key" {
  description = "(Required) The key for the parameter."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.key
}
output "username" {
  description = "(Required) A username for the authorization."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.username
}
output "auth_parameters" {
  description = "(Required) Parameters used for authorization. A maximum of 1 are allowed. Documented below."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.auth_parameters
}
output "body" {
  description = "(Optional) Contains additional body string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.body
}
output "is_value_secret" {
  description = "(Optional) Specified whether the value is secret.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.is_value_secret
}
output "name" {
  description = "(Required) The name of the new connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.name
}
output "oauth_http_parameters" {
  description = "(Required) OAuth Http Parameters are additional credentials used to sign the request to the authorization endpoint to exchange the OAuth Client information for an access token. Secret values are stored and managed by AWS Secrets Manager. A maximum of 1 are allowed. Documented below.invocation_http_parameters and oauth_http_parameters support the following:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.oauth_http_parameters
}
output "password" {
  description = "(Required) A password for the authorization. Created and stored in AWS Secrets Manager.oauth support the following:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.password
}
output "api_key" {
  description = "(Optional) Parameters used for API_KEY authorization. An API key to include in the header for each authentication request. A maximum of 1 are allowed. Conflicts with basic and oauth. Documented below."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.api_key
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the connection."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.arn
}
output "basic" {
  description = "(Optional) Parameters used for BASIC authorization. A maximum of 1 are allowed. Conflicts with api_key and oauth. Documented below."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.basic
}
output "client_id" {
  description = "(Required) The client ID for the credentials to use for authorization. Created and stored in AWS Secrets Manager."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.client_id
}
output "client_parameters" {
  description = "(Required) Contains the client parameters for OAuth authorization. Contains the following two parameters.\n"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.client_parameters
}
output "description" {
  description = "(Optional) Enter a description for the connection. Maximum of 512 characters."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.description
}
output "http_method" {
  description = "(Required) A password for the authorization. Created and stored in AWS Secrets Manager."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.http_method
}
output "query_string" {
  description = "(Optional) Contains additional query string parameters for the connection. You can include up to 100 additional body string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB. Each parameter can contain the following:"
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.query_string
}
output "value" {
  description = "(Required) The value associated with the key. Created and stored in AWS Secrets Manager if is secret."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.value
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the connection."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.arn
}
output "secret_arn" {
  description = "The Amazon Resource Name (ARN) of the secret created from the authorization parameters specified for the connection."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.secret_arn
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
      "kind/name"                   = "aws_cloudwatch_event_connection"
      "kind/version"                = "v0.1.0"
    }
  }
}
