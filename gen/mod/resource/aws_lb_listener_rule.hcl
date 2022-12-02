resource "aws_lb_listener_rule" "aws_lb_listener_rule" {
  arn                                 = var.arn
  enabled                             = var.enabled
  host                                = var.host
  path_pattern                        = var.path_pattern
  session_timeout                     = var.session_timeout
  user_pool_client_id                 = var.user_pool_client_id
  action                              = var.action
  authenticate_cognito                = var.authenticate_cognito
  authorization_endpoint              = var.authorization_endpoint
  listener_arn                        = var.listener_arn
  message_body                        = var.message_body
  user_pool_arn                       = var.user_pool_arn
  status_code                         = var.status_code
  authenticate_oidc                   = var.authenticate_oidc
  authentication_request_extra_params = var.authentication_request_extra_params
  client_id                           = var.client_id
  content_type                        = var.content_type
  http_request_method                 = var.http_request_method
  on_unauthenticated_request          = var.on_unauthenticated_request
  redirect                            = var.redirect
  values                              = var.values
  duration                            = var.duration
  forward                             = var.forward
  http_header                         = var.http_header
  priority                            = var.priority
  query                               = var.query
  stickiness                          = var.stickiness
  user_pool_domain                    = var.user_pool_domain
  weight                              = var.weight
  http_header_name                    = var.http_header_name
  query_string                        = var.query_string
  source_ip                           = var.source_ip
  tags                                = var.tags
  target_group_arn                    = var.target_group_arn
  value                               = var.value
  condition                           = var.condition
  fixed_response                      = var.fixed_response
  id                                  = var.id
  issuer                              = var.issuer
  path                                = var.path
  token_endpoint                      = var.token_endpoint
  type                                = var.type
  target_group                        = var.target_group
  client_secret                       = var.client_secret
  host_header                         = var.host_header
  key                                 = var.key
  port                                = var.port
  protocol                            = var.protocol
  scope                               = var.scope
  session_cookie_name                 = var.session_cookie_name
  user_info_endpoint                  = var.user_info_endpoint
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the rule (matches id)"
  type        = string
}
variable "enabled" {
  description = "(Required) Indicates whether target group stickiness is enabled."
  type        = string
}
variable "host" {
  description = "(Optional) The hostname. This component is not percent-encoded. The hostname can contain #{host}. Defaults to #{host}."
  type        = string
  default     = ""
}
variable "path_pattern" {
  description = "(Optional) Contains a single values item which is a list of path patterns to match against the request URL. Maximum size of each pattern is 128 characters. Comparison is case sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a query_string condition."
  type        = string
  default     = ""
}
variable "session_timeout" {
  description = "(Optional) The maximum duration of the authentication session, in seconds."
  type        = string
  default     = ""
}
variable "user_pool_client_id" {
  description = "(Required) The ID of the Cognito user pool client."
  type        = string
}
variable "message_body" {
  description = "(Optional) The message body."
  type        = string
  default     = ""
}
variable "user_pool_arn" {
  description = "(Required) The ARN of the Cognito user pool."
  type        = string
}
variable "action" {
  description = "(Required) An Action block. Action blocks are documented below."
  type        = string
}
variable "authenticate_cognito" {
  description = "(Optional) Information for creating an authenticate action using Cognito. Required if type is authenticate-cognito."
  type        = string
  default     = ""
}
variable "authorization_endpoint" {
  description = "(Required) The authorization endpoint of the IdP."
  type        = string
}
variable "listener_arn" {
  description = "(Required, Forces New Resource) The ARN of the listener to which to attach the rule."
  type        = string
}
variable "http_request_method" {
  description = "(Optional) Contains a single values item which is a list of HTTP request methods or verbs to match. Maximum size is 40 characters. Only allowed characters are A-Z, hyphen (-) and underscore (_). Comparison is case sensitive. Wildcards are not supported. Only one needs to match for the condition to be satisfied. AWS recommends that GET and HEAD requests are routed in the same way because the response to a HEAD request may be cached."
  type        = string
  default     = ""
}
variable "on_unauthenticated_request" {
  description = "(Optional) The behavior if the user is not authenticated. Valid values: deny, allow and authenticate"
  type        = string
  default     = ""
}
variable "redirect" {
  description = "(Optional) Information for creating a redirect action. Required if type is redirect."
  type        = string
  default     = ""
}
variable "status_code" {
  description = "(Optional) The HTTP response code. Valid values are 2XX, 4XX, or 5XX.Authenticate Cognito Blocks (for authenticate_cognito) supports the following:"
  type        = string
  default     = ""
}
variable "authenticate_oidc" {
  description = "(Optional) Information for creating an authenticate action using OIDC. Required if type is authenticate-oidc.Forward Blocks (for forward) support the following:"
  type        = string
  default     = ""
}
variable "authentication_request_extra_params" {
  description = "(Optional) The query parameters to include in the redirect request to the authorization endpoint. Max: 10."
  type        = string
  default     = ""
}
variable "client_id" {
  description = "(Required) The OAuth 2.0 client identifier."
  type        = string
}
variable "content_type" {
  description = "(Required) The content type. Valid values are text/plain, text/css, text/html, application/javascript and application/json."
  type        = string
}
variable "query" {
  description = "(Optional) The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading \"?\". Defaults to #{query}."
  type        = string
  default     = ""
}
variable "stickiness" {
  description = "(Optional) The target group stickiness for the rule.Target Group Blocks (for target_group) supports the following:"
  type        = string
  default     = ""
}
variable "user_pool_domain" {
  description = "(Required) The domain prefix or fully-qualified domain name of the Cognito user pool.Authenticate OIDC Blocks (for authenticate_oidc) supports the following:"
  type        = string
}
variable "values" {
  description = "(Required) Query string pairs or values to match. Query String Value blocks documented below. Multiple values blocks can be specified, see example above. Maximum size of each string is 128 characters. Comparison is case insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). To search for a literal '*' or '?' character in a query string, escape the character with a backslash (\\). Only one pair needs to match for the condition to be satisfied.Query String Value Blocks (for query_string.values) support the following:"
  type        = string
}
variable "duration" {
  description = "(Optional) The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).Redirect Blocks (for redirect) support the following:~> strongNOTE:: You can reuse URI components using the following reserved keywords: #{protocol}, #{host}, #{port}, #{path} (the leading \"/\" is removed) and #{query}."
  type        = string
  default     = ""
}
variable "forward" {
  description = "(Optional) Information for creating an action that distributes requests among one or more target groups. Specify only if type is forward. If you specify both forward block and target_group_arn attribute, you can specify only one target group using forward and it must be the same target group specified in target_group_arn."
  type        = string
  default     = ""
}
variable "http_header" {
  description = "(Optional) HTTP headers to match. HTTP Header block fields documented below."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Optional) The priority for the rule between 1 and 50000. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority."
  type        = string
  default     = ""
}
variable "weight" {
  description = "(Optional) The weight. The range is 0 to 999.Target Group Stickiness Config Blocks (for stickiness) supports the following:"
  type        = string
  default     = ""
}
variable "target_group_arn" {
  description = "(Optional) The ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead."
  type        = string
  default     = ""
}
variable "http_header_name" {
  description = "(Required) Name of HTTP header to search. The maximum size is 40 characters. Comparison is case insensitive. Only RFC7240 characters are supported. Wildcards are not supported. You cannot use HTTP header condition to specify the host header, use a host-header condition instead."
  type        = string
}
variable "query_string" {
  description = "(Optional) Query strings to match. Query String block fields documented below."
  type        = string
  default     = ""
}
variable "source_ip" {
  description = "(Optional) Contains a single values item which is a list of source IP CIDR notations to match. You can use both IPv4 and IPv6 addresses. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the X-Forwarded-For header, use http_header condition instead.~> strongNOTE:: Exactly one of host_header, http_header, http_request_method, path_pattern, query_string or source_ip must be set per condition.HTTP Header BlocksHTTP Header Blocks (for http_header) support the following:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Action BlocksAction Blocks (for action) support the following:"
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) The absolute path, starting with the leading \"/\". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to /#{path}."
  type        = string
  default     = ""
}
variable "token_endpoint" {
  description = "(Required) The token endpoint of the IdP."
  type        = string
}
variable "type" {
  description = "(Required) The type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc."
  type        = string
}
variable "value" {
  description = "(Required) Query string value pattern to match.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "condition" {
  description = "(Required) A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below."
  type        = string
}
variable "fixed_response" {
  description = "(Optional) Information for creating an action that returns a custom HTTP response. Required if type is fixed-response."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ARN of the rule (matches arn)"
  type        = string
}
variable "issuer" {
  description = "(Required) The OIDC issuer identifier of the IdP."
  type        = string
}
variable "protocol" {
  description = "(Optional) The protocol. Valid values are HTTP, HTTPS, or #{protocol}. Defaults to #{protocol}."
  type        = string
  default     = ""
}
variable "scope" {
  description = "(Optional) The set of user claims to be requested from the IdP."
  type        = string
  default     = ""
}
variable "session_cookie_name" {
  description = "(Optional) The name of the cookie used to maintain session information."
  type        = string
  default     = ""
}
variable "target_group" {
  description = "(Required) One or more target groups block."
  type        = string
}
variable "client_secret" {
  description = "(Required) The OAuth 2.0 client secret."
  type        = string
}
variable "host_header" {
  description = "(Optional) Contains a single values item which is a list of host header patterns to match. The maximum size of each pattern is 128 characters. Comparison is case insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Optional) Query string key pattern to match."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Optional) The port. Specify a value from 1 to 65535 or #{port}. Defaults to #{port}."
  type        = string
  default     = ""
}
variable "user_info_endpoint" {
  description = "(Required) The user info endpoint of the IdP.Authentication Request Extra Params Blocks (for authentication_request_extra_params) supports the following:"
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
output "scope" {
  description = "(Optional) The set of user claims to be requested from the IdP."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.scope
}
output "session_cookie_name" {
  description = "(Optional) The name of the cookie used to maintain session information."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.session_cookie_name
}
output "target_group" {
  description = "(Required) One or more target groups block."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.target_group
}
output "client_secret" {
  description = "(Required) The OAuth 2.0 client secret."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.client_secret
}
output "host_header" {
  description = "(Optional) Contains a single values item which is a list of host header patterns to match. The maximum size of each pattern is 128 characters. Comparison is case insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.host_header
}
output "key" {
  description = "(Optional) Query string key pattern to match."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.key
}
output "port" {
  description = "(Optional) The port. Specify a value from 1 to 65535 or #{port}. Defaults to #{port}."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.port
}
output "protocol" {
  description = "(Optional) The protocol. Valid values are HTTP, HTTPS, or #{protocol}. Defaults to #{protocol}."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.protocol
}
output "user_info_endpoint" {
  description = "(Required) The user info endpoint of the IdP.Authentication Request Extra Params Blocks (for authentication_request_extra_params) supports the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.user_info_endpoint
}
output "arn" {
  description = "The ARN of the rule (matches id)"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.arn
}
output "enabled" {
  description = "(Required) Indicates whether target group stickiness is enabled."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.enabled
}
output "host" {
  description = "(Optional) The hostname. This component is not percent-encoded. The hostname can contain #{host}. Defaults to #{host}."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.host
}
output "path_pattern" {
  description = "(Optional) Contains a single values item which is a list of path patterns to match against the request URL. Maximum size of each pattern is 128 characters. Comparison is case sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a query_string condition."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.path_pattern
}
output "session_timeout" {
  description = "(Optional) The maximum duration of the authentication session, in seconds."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.session_timeout
}
output "user_pool_client_id" {
  description = "(Required) The ID of the Cognito user pool client."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.user_pool_client_id
}
output "user_pool_arn" {
  description = "(Required) The ARN of the Cognito user pool."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.user_pool_arn
}
output "action" {
  description = "(Required) An Action block. Action blocks are documented below."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.action
}
output "authenticate_cognito" {
  description = "(Optional) Information for creating an authenticate action using Cognito. Required if type is authenticate-cognito."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.authenticate_cognito
}
output "authorization_endpoint" {
  description = "(Required) The authorization endpoint of the IdP."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.authorization_endpoint
}
output "listener_arn" {
  description = "(Required, Forces New Resource) The ARN of the listener to which to attach the rule."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.listener_arn
}
output "message_body" {
  description = "(Optional) The message body."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.message_body
}
output "on_unauthenticated_request" {
  description = "(Optional) The behavior if the user is not authenticated. Valid values: deny, allow and authenticate"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.on_unauthenticated_request
}
output "redirect" {
  description = "(Optional) Information for creating a redirect action. Required if type is redirect."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.redirect
}
output "status_code" {
  description = "(Optional) The HTTP response code. Valid values are 2XX, 4XX, or 5XX.Authenticate Cognito Blocks (for authenticate_cognito) supports the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.status_code
}
output "authenticate_oidc" {
  description = "(Optional) Information for creating an authenticate action using OIDC. Required if type is authenticate-oidc.Forward Blocks (for forward) support the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.authenticate_oidc
}
output "authentication_request_extra_params" {
  description = "(Optional) The query parameters to include in the redirect request to the authorization endpoint. Max: 10."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.authentication_request_extra_params
}
output "client_id" {
  description = "(Required) The OAuth 2.0 client identifier."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.client_id
}
output "content_type" {
  description = "(Required) The content type. Valid values are text/plain, text/css, text/html, application/javascript and application/json."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.content_type
}
output "http_request_method" {
  description = "(Optional) Contains a single values item which is a list of HTTP request methods or verbs to match. Maximum size is 40 characters. Only allowed characters are A-Z, hyphen (-) and underscore (_). Comparison is case sensitive. Wildcards are not supported. Only one needs to match for the condition to be satisfied. AWS recommends that GET and HEAD requests are routed in the same way because the response to a HEAD request may be cached."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.http_request_method
}
output "stickiness" {
  description = "(Optional) The target group stickiness for the rule.Target Group Blocks (for target_group) supports the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.stickiness
}
output "user_pool_domain" {
  description = "(Required) The domain prefix or fully-qualified domain name of the Cognito user pool.Authenticate OIDC Blocks (for authenticate_oidc) supports the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.user_pool_domain
}
output "values" {
  description = "(Required) Query string pairs or values to match. Query String Value blocks documented below. Multiple values blocks can be specified, see example above. Maximum size of each string is 128 characters. Comparison is case insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). To search for a literal '*' or '?' character in a query string, escape the character with a backslash (\\). Only one pair needs to match for the condition to be satisfied.Query String Value Blocks (for query_string.values) support the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.values
}
output "duration" {
  description = "(Optional) The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).Redirect Blocks (for redirect) support the following:~> strongNOTE:: You can reuse URI components using the following reserved keywords: #{protocol}, #{host}, #{port}, #{path} (the leading \"/\" is removed) and #{query}."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.duration
}
output "forward" {
  description = "(Optional) Information for creating an action that distributes requests among one or more target groups. Specify only if type is forward. If you specify both forward block and target_group_arn attribute, you can specify only one target group using forward and it must be the same target group specified in target_group_arn."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.forward
}
output "http_header" {
  description = "(Optional) HTTP headers to match. HTTP Header block fields documented below."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.http_header
}
output "priority" {
  description = "(Optional) The priority for the rule between 1 and 50000. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.priority
}
output "query" {
  description = "(Optional) The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading \"?\". Defaults to #{query}."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.query
}
output "weight" {
  description = "(Optional) The weight. The range is 0 to 999.Target Group Stickiness Config Blocks (for stickiness) supports the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.weight
}
output "http_header_name" {
  description = "(Required) Name of HTTP header to search. The maximum size is 40 characters. Comparison is case insensitive. Only RFC7240 characters are supported. Wildcards are not supported. You cannot use HTTP header condition to specify the host header, use a host-header condition instead."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.http_header_name
}
output "query_string" {
  description = "(Optional) Query strings to match. Query String block fields documented below."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.query_string
}
output "source_ip" {
  description = "(Optional) Contains a single values item which is a list of source IP CIDR notations to match. You can use both IPv4 and IPv6 addresses. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the X-Forwarded-For header, use http_header condition instead.~> strongNOTE:: Exactly one of host_header, http_header, http_request_method, path_pattern, query_string or source_ip must be set per condition.HTTP Header BlocksHTTP Header Blocks (for http_header) support the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.source_ip
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Action BlocksAction Blocks (for action) support the following:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.tags
}
output "target_group_arn" {
  description = "(Optional) The ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.target_group_arn
}
output "token_endpoint" {
  description = "(Required) The token endpoint of the IdP."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.token_endpoint
}
output "type" {
  description = "(Required) The type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.type
}
output "value" {
  description = "(Required) Query string value pattern to match.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.value
}
output "condition" {
  description = "(Required) A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.condition
}
output "fixed_response" {
  description = "(Optional) Information for creating an action that returns a custom HTTP response. Required if type is fixed-response."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.fixed_response
}
output "id" {
  description = "The ARN of the rule (matches arn)"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.id
}
output "issuer" {
  description = "(Required) The OIDC issuer identifier of the IdP."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.issuer
}
output "path" {
  description = "(Optional) The absolute path, starting with the leading \"/\". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to /#{path}."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.path
}
output "arn" {
  description = "The ARN of the rule (matches id)"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.arn
}
output "id" {
  description = "The ARN of the rule (matches arn)"
  value       = aws_lb_listener_rule.aws_lb_listener_rule.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lb_listener_rule.aws_lb_listener_rule.tags_all
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
      "kind/name"                   = "aws_lb_listener_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
