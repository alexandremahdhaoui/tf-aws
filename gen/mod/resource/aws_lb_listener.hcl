resource "aws_lb_listener" "aws_lb_listener" {
  on_unauthenticated_request          = var.on_unauthenticated_request
  session_cookie_name                 = var.session_cookie_name
  authentication_request_extra_params = var.authentication_request_extra_params
  forward                             = var.forward
  path                                = var.path
  protocol                            = var.protocol
  redirect                            = var.redirect
  user_pool_client_id                 = var.user_pool_client_id
  alpn_policy                         = var.alpn_policy
  host                                = var.host
  target_group                        = var.target_group
  target_group_arn                    = var.target_group_arn
  token_endpoint                      = var.token_endpoint
  user_info_endpoint                  = var.user_info_endpoint
  value                               = var.value
  authenticate_cognito                = var.authenticate_cognito
  client_id                           = var.client_id
  issuer                              = var.issuer
  order                               = var.order
  session_timeout                     = var.session_timeout
  tags                                = var.tags
  duration                            = var.duration
  fixed_response                      = var.fixed_response
  id                                  = var.id
  message_body                        = var.message_body
  ssl_policy                          = var.ssl_policy
  status_code                         = var.status_code
  authenticate_oidc                   = var.authenticate_oidc
  content_type                        = var.content_type
  load_balancer_arn                   = var.load_balancer_arn
  tags_all                            = var.tags_all
  type                                = var.type
  user_pool_arn                       = var.user_pool_arn
  user_pool_domain                    = var.user_pool_domain
  arn                                 = var.arn
  default_action                      = var.default_action
  port                                = var.port
  query                               = var.query
  stickiness                          = var.stickiness
  weight                              = var.weight
  authorization_endpoint              = var.authorization_endpoint
  certificate_arn                     = var.certificate_arn
  key                                 = var.key
  scope                               = var.scope
  client_secret                       = var.client_secret
  enabled                             = var.enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "message_body" {
  description = "(Optional) Message body."
  type        = string
  default     = ""
}
variable "ssl_policy" {
  description = "(Optional) Name of the SSL Policy for the listener. Required if protocol is HTTPS or TLS."
  type        = string
  default     = ""
}
variable "status_code" {
  description = "(Required) HTTP redirect code. The redirect is either permanent (HTTP_301) or temporary (HTTP_302)."
  type        = string
}
variable "authenticate_oidc" {
  description = "(Optional) Configuration block for an identity provider that is compliant with OpenID Connect (OIDC). Specify only when type is authenticate-oidc. Detailed below."
  type        = string
  default     = ""
}
variable "content_type" {
  description = "(Required) Content type. Valid values are text/plain, text/css, text/html, application/javascript and application/json."
  type        = string
}
variable "id" {
  description = "ARN of the listener (matches arn)."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc."
  type        = string
}
variable "user_pool_arn" {
  description = "(Required) ARN of the Cognito user pool."
  type        = string
}
variable "user_pool_domain" {
  description = "(Required) Domain prefix or fully-qualified domain name of the Cognito user pool."
  type        = string
}
variable "arn" {
  description = "ARN of the listener (matches id)."
  type        = string
  default     = ""
}
variable "default_action" {
  description = "(Required) Configuration block for default actions. Detailed below."
  type        = string
}
variable "load_balancer_arn" {
  description = "(Required, Forces New Resource) ARN of the load balancer."
  type        = string
}
variable "query" {
  description = "(Optional) Query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading \"?\". Defaults to #{query}.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "stickiness" {
  description = "(Optional) Configuration block for target group stickiness for the rule. Detailed below.target_group"
  type        = string
  default     = ""
}
variable "weight" {
  description = "(Optional) Weight. The range is 0 to 999.stickiness"
  type        = string
  default     = ""
}
variable "authorization_endpoint" {
  description = "(Required) Authorization endpoint of the IdP."
  type        = string
}
variable "certificate_arn" {
  description = "(Optional) ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the aws_lb_listener_certificate resource."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Optional) Port. Specify a value from 1 to 65535 or #{port}. Defaults to #{port}."
  type        = string
  default     = ""
}
variable "scope" {
  description = "(Optional) Set of user claims to be requested from the IdP."
  type        = string
  default     = ""
}
variable "client_secret" {
  description = "(Required) OAuth 2.0 client secret."
  type        = string
}
variable "enabled" {
  description = "(Optional) Whether target group stickiness is enabled. Default is false.redirect~> strongNOTE:: You can reuse URI components using the following reserved keywords: #{protocol}, #{host}, #{port}, #{path} (the leading \"/\" is removed) and #{query}."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Key of query parameter."
  type        = string
}
variable "session_cookie_name" {
  description = "(Optional) Name of the cookie used to maintain session information."
  type        = string
  default     = ""
}
variable "authentication_request_extra_params" {
  description = "(Optional) Query parameters to include in the redirect request to the authorization endpoint. Max: 10."
  type        = string
  default     = ""
}
variable "forward" {
  description = "(Optional) Configuration block for creating an action that distributes requests among one or more target groups. Specify only if type is forward. If you specify both forward block and target_group_arn attribute, you can specify only one target group using forward and it must be the same target group specified in target_group_arn. Detailed below."
  type        = string
  default     = ""
}
variable "on_unauthenticated_request" {
  description = "(Optional) Behavior if the user is not authenticated. Valid values: deny, allow and authenticate"
  type        = string
  default     = ""
}
variable "protocol" {
  description = "(Optional) Protocol. Valid values are HTTP, HTTPS, or #{protocol}. Defaults to #{protocol}."
  type        = string
  default     = ""
}
variable "redirect" {
  description = "(Optional) Configuration block for creating a redirect action. Required if type is redirect. Detailed below."
  type        = string
  default     = ""
}
variable "user_pool_client_id" {
  description = "(Required) ID of the Cognito user pool client."
  type        = string
}
variable "alpn_policy" {
  description = "(Optional)  Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if protocol is TLS. Valid values are HTTP1Only, HTTP2Only, HTTP2Optional, HTTP2Preferred, and None."
  type        = string
  default     = ""
}
variable "host" {
  description = "(Optional) Hostname. This component is not percent-encoded. The hostname can contain #{host}. Defaults to #{host}."
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) Absolute path, starting with the leading \"/\". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to /#{path}."
  type        = string
  default     = ""
}
variable "target_group_arn" {
  description = "(Optional) ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead.authenticate_cognito"
  type        = string
  default     = ""
}
variable "token_endpoint" {
  description = "(Required) Token endpoint of the IdP."
  type        = string
}
variable "user_info_endpoint" {
  description = "(Required) User info endpoint of the IdP."
  type        = string
}
variable "value" {
  description = "(Required) Value of query parameter.authenticate_oidc"
  type        = string
}
variable "authenticate_cognito" {
  description = "(Optional) Configuration block for using Amazon Cognito to authenticate users. Specify only when type is authenticate-cognito. Detailed below."
  type        = string
  default     = ""
}
variable "client_id" {
  description = "(Required) OAuth 2.0 client identifier."
  type        = string
}
variable "target_group" {
  description = "(Required) Set of 1-5 target group blocks. Detailed below."
  type        = string
}
variable "order" {
  description = "(Optional) Order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first. Valid values are between 1 and 50000."
  type        = string
  default     = ""
}
variable "session_timeout" {
  description = "(Optional) Maximum duration of the authentication session, in seconds.fixed_response"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.~> strongNOTE:: Please note that listeners that are attached to Application Load Balancers must use either HTTP or HTTPS protocols while listeners that are attached to Network Load Balancers must use the TCP protocol.default_action"
  type        = string
  default     = ""
}
variable "duration" {
  description = "(Required) Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days)."
  type        = string
}
variable "fixed_response" {
  description = "(Optional) Information for creating an action that returns a custom HTTP response. Required if type is fixed-response."
  type        = string
  default     = ""
}
variable "issuer" {
  description = "(Required) OIDC issuer identifier of the IdP."
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
output "user_pool_domain" {
  description = "(Required) Domain prefix or fully-qualified domain name of the Cognito user pool."
  value       = aws_lb_listener.aws_lb_listener.user_pool_domain
}
output "arn" {
  description = "ARN of the listener (matches id)."
  value       = aws_lb_listener.aws_lb_listener.arn
}
output "default_action" {
  description = "(Required) Configuration block for default actions. Detailed below."
  value       = aws_lb_listener.aws_lb_listener.default_action
}
output "load_balancer_arn" {
  description = "(Required, Forces New Resource) ARN of the load balancer."
  value       = aws_lb_listener.aws_lb_listener.load_balancer_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lb_listener.aws_lb_listener.tags_all
}
output "type" {
  description = "(Required) Type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc."
  value       = aws_lb_listener.aws_lb_listener.type
}
output "user_pool_arn" {
  description = "(Required) ARN of the Cognito user pool."
  value       = aws_lb_listener.aws_lb_listener.user_pool_arn
}
output "authorization_endpoint" {
  description = "(Required) Authorization endpoint of the IdP."
  value       = aws_lb_listener.aws_lb_listener.authorization_endpoint
}
output "certificate_arn" {
  description = "(Optional) ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the aws_lb_listener_certificate resource."
  value       = aws_lb_listener.aws_lb_listener.certificate_arn
}
output "port" {
  description = "(Optional) Port. Specify a value from 1 to 65535 or #{port}. Defaults to #{port}."
  value       = aws_lb_listener.aws_lb_listener.port
}
output "query" {
  description = "(Optional) Query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading \"?\". Defaults to #{query}.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lb_listener.aws_lb_listener.query
}
output "stickiness" {
  description = "(Optional) Configuration block for target group stickiness for the rule. Detailed below.target_group"
  value       = aws_lb_listener.aws_lb_listener.stickiness
}
output "weight" {
  description = "(Optional) Weight. The range is 0 to 999.stickiness"
  value       = aws_lb_listener.aws_lb_listener.weight
}
output "client_secret" {
  description = "(Required) OAuth 2.0 client secret."
  value       = aws_lb_listener.aws_lb_listener.client_secret
}
output "enabled" {
  description = "(Optional) Whether target group stickiness is enabled. Default is false.redirect~> strongNOTE:: You can reuse URI components using the following reserved keywords: #{protocol}, #{host}, #{port}, #{path} (the leading \"/\" is removed) and #{query}."
  value       = aws_lb_listener.aws_lb_listener.enabled
}
output "key" {
  description = "(Required) Key of query parameter."
  value       = aws_lb_listener.aws_lb_listener.key
}
output "scope" {
  description = "(Optional) Set of user claims to be requested from the IdP."
  value       = aws_lb_listener.aws_lb_listener.scope
}
output "authentication_request_extra_params" {
  description = "(Optional) Query parameters to include in the redirect request to the authorization endpoint. Max: 10."
  value       = aws_lb_listener.aws_lb_listener.authentication_request_extra_params
}
output "forward" {
  description = "(Optional) Configuration block for creating an action that distributes requests among one or more target groups. Specify only if type is forward. If you specify both forward block and target_group_arn attribute, you can specify only one target group using forward and it must be the same target group specified in target_group_arn. Detailed below."
  value       = aws_lb_listener.aws_lb_listener.forward
}
output "on_unauthenticated_request" {
  description = "(Optional) Behavior if the user is not authenticated. Valid values: deny, allow and authenticate"
  value       = aws_lb_listener.aws_lb_listener.on_unauthenticated_request
}
output "session_cookie_name" {
  description = "(Optional) Name of the cookie used to maintain session information."
  value       = aws_lb_listener.aws_lb_listener.session_cookie_name
}
output "alpn_policy" {
  description = "(Optional)  Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if protocol is TLS. Valid values are HTTP1Only, HTTP2Only, HTTP2Optional, HTTP2Preferred, and None."
  value       = aws_lb_listener.aws_lb_listener.alpn_policy
}
output "host" {
  description = "(Optional) Hostname. This component is not percent-encoded. The hostname can contain #{host}. Defaults to #{host}."
  value       = aws_lb_listener.aws_lb_listener.host
}
output "path" {
  description = "(Optional) Absolute path, starting with the leading \"/\". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to /#{path}."
  value       = aws_lb_listener.aws_lb_listener.path
}
output "protocol" {
  description = "(Optional) Protocol. Valid values are HTTP, HTTPS, or #{protocol}. Defaults to #{protocol}."
  value       = aws_lb_listener.aws_lb_listener.protocol
}
output "redirect" {
  description = "(Optional) Configuration block for creating a redirect action. Required if type is redirect. Detailed below."
  value       = aws_lb_listener.aws_lb_listener.redirect
}
output "user_pool_client_id" {
  description = "(Required) ID of the Cognito user pool client."
  value       = aws_lb_listener.aws_lb_listener.user_pool_client_id
}
output "value" {
  description = "(Required) Value of query parameter.authenticate_oidc"
  value       = aws_lb_listener.aws_lb_listener.value
}
output "authenticate_cognito" {
  description = "(Optional) Configuration block for using Amazon Cognito to authenticate users. Specify only when type is authenticate-cognito. Detailed below."
  value       = aws_lb_listener.aws_lb_listener.authenticate_cognito
}
output "client_id" {
  description = "(Required) OAuth 2.0 client identifier."
  value       = aws_lb_listener.aws_lb_listener.client_id
}
output "target_group" {
  description = "(Required) Set of 1-5 target group blocks. Detailed below."
  value       = aws_lb_listener.aws_lb_listener.target_group
}
output "target_group_arn" {
  description = "(Optional) ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead.authenticate_cognito"
  value       = aws_lb_listener.aws_lb_listener.target_group_arn
}
output "token_endpoint" {
  description = "(Required) Token endpoint of the IdP."
  value       = aws_lb_listener.aws_lb_listener.token_endpoint
}
output "user_info_endpoint" {
  description = "(Required) User info endpoint of the IdP."
  value       = aws_lb_listener.aws_lb_listener.user_info_endpoint
}
output "duration" {
  description = "(Required) Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days)."
  value       = aws_lb_listener.aws_lb_listener.duration
}
output "fixed_response" {
  description = "(Optional) Information for creating an action that returns a custom HTTP response. Required if type is fixed-response."
  value       = aws_lb_listener.aws_lb_listener.fixed_response
}
output "issuer" {
  description = "(Required) OIDC issuer identifier of the IdP."
  value       = aws_lb_listener.aws_lb_listener.issuer
}
output "order" {
  description = "(Optional) Order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first. Valid values are between 1 and 50000."
  value       = aws_lb_listener.aws_lb_listener.order
}
output "session_timeout" {
  description = "(Optional) Maximum duration of the authentication session, in seconds.fixed_response"
  value       = aws_lb_listener.aws_lb_listener.session_timeout
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.~> strongNOTE:: Please note that listeners that are attached to Application Load Balancers must use either HTTP or HTTPS protocols while listeners that are attached to Network Load Balancers must use the TCP protocol.default_action"
  value       = aws_lb_listener.aws_lb_listener.tags
}
output "authenticate_oidc" {
  description = "(Optional) Configuration block for an identity provider that is compliant with OpenID Connect (OIDC). Specify only when type is authenticate-oidc. Detailed below."
  value       = aws_lb_listener.aws_lb_listener.authenticate_oidc
}
output "content_type" {
  description = "(Required) Content type. Valid values are text/plain, text/css, text/html, application/javascript and application/json."
  value       = aws_lb_listener.aws_lb_listener.content_type
}
output "id" {
  description = "ARN of the listener (matches arn)."
  value       = aws_lb_listener.aws_lb_listener.id
}
output "message_body" {
  description = "(Optional) Message body."
  value       = aws_lb_listener.aws_lb_listener.message_body
}
output "ssl_policy" {
  description = "(Optional) Name of the SSL Policy for the listener. Required if protocol is HTTPS or TLS."
  value       = aws_lb_listener.aws_lb_listener.ssl_policy
}
output "status_code" {
  description = "(Required) HTTP redirect code. The redirect is either permanent (HTTP_301) or temporary (HTTP_302)."
  value       = aws_lb_listener.aws_lb_listener.status_code
}
output "arn" {
  description = "ARN of the listener (matches id)."
  value       = aws_lb_listener.aws_lb_listener.arn
}
output "id" {
  description = "ARN of the listener (matches arn)."
  value       = aws_lb_listener.aws_lb_listener.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lb_listener.aws_lb_listener.tags_all
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
      "kind/name"                   = "aws_lb_listener"
      "kind/version"                = "v0.1.0"
    }
  }
}
