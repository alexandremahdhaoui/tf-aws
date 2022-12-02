resource "aws_wafv2_web_acl" "aws_wafv2_web_acl" {
  forwarded_ip_config                   = var.forwarded_ip_config
  ip_set_reference_statement            = var.ip_set_reference_statement
  method                                = var.method
  search_string                         = var.search_string
  aggregate_key_type                    = var.aggregate_key_type
  custom_request_handling               = var.custom_request_handling
  label_match_statement                 = var.label_match_statement
  not_statement                         = var.not_statement
  size                                  = var.size
  sqli_match_statement                  = var.sqli_match_statement
  xss_match_statement                   = var.xss_match_statement
  block                                 = var.block
  limit                                 = var.limit
  headers                               = var.headers
  custom_response_body_key              = var.custom_response_body_key
  fallback_behavior                     = var.fallback_behavior
  sampled_requests_enabled              = var.sampled_requests_enabled
  text_transformation                   = var.text_transformation
  allow                                 = var.allow
  comparison_operator                   = var.comparison_operator
  custom_response_body                  = var.custom_response_body
  id                                    = var.id
  metric_name                           = var.metric_name
  query_string                          = var.query_string
  action                                = var.action
  field_to_match                        = var.field_to_match
  geo_match_statement                   = var.geo_match_statement
  none                                  = var.none
  tags                                  = var.tags
  content_type                          = var.content_type
  header_name                           = var.header_name
  json_body                             = var.json_body
  response_header                       = var.response_header
  scope_down_statement                  = var.scope_down_statement
  statement                             = var.statement
  vendor_name                           = var.vendor_name
  byte_match_statement                  = var.byte_match_statement
  oversize_handling                     = var.oversize_handling
  ip_set_forwarded_ip_config            = var.ip_set_forwarded_ip_config
  rule                                  = var.rule
  excluded_headers                      = var.excluded_headers
  insert_header                         = var.insert_header
  or_statement                          = var.or_statement
  position                              = var.position
  positional_constraint                 = var.positional_constraint
  rate_based_statement                  = var.rate_based_statement
  included_headers                      = var.included_headers
  and_statement                         = var.and_statement
  arn                                   = var.arn
  custom_response                       = var.custom_response
  scope                                 = var.scope
  single_query_argument                 = var.single_query_argument
  all_query_arguments                   = var.all_query_arguments
  captcha                               = var.captcha
  cloudwatch_metrics_enabled            = var.cloudwatch_metrics_enabled
  cookies                               = var.cookies
  count                                 = var.count
  country_codes                         = var.country_codes
  default_action                        = var.default_action
  name                                  = var.name
  capacity                              = var.capacity
  rule_group_reference_statement        = var.rule_group_reference_statement
  rule_label                            = var.rule_label
  regex_pattern_set_reference_statement = var.regex_pattern_set_reference_statement
  managed_rule_group_statement          = var.managed_rule_group_statement
  match_pattern                         = var.match_pattern
  single_header                         = var.single_header
  value                                 = var.value
  visibility_config                     = var.visibility_config
  key                                   = var.key
  excluded_rule                         = var.excluded_rule
  match_scope                           = var.match_scope
  override_action                       = var.override_action
  regex_match_statement                 = var.regex_match_statement
  uri_path                              = var.uri_path
  version                               = var.version
  all                                   = var.all
  invalid_fallback_behavior             = var.invalid_fallback_behavior
  content                               = var.content
  description                           = var.description
  priority                              = var.priority
  regex_string                          = var.regex_string
  response_code                         = var.response_code
  size_constraint_statement             = var.size_constraint_statement
  type                                  = var.type
  body                                  = var.body
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "included_headers" {
  description = "An array of strings that will be used for inspecting headers that have a key that matches one of the provided values."
  type        = string
}
variable "insert_header" {
  description = "(Required) The insert_header blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.Custom ResponseThe custom_response block supports the following arguments:"
  type        = string
}
variable "or_statement" {
  description = "(Optional) Logical rule statement used to combine other rule statements with OR logic. See OR Statement below for details."
  type        = string
  default     = ""
}
variable "position" {
  description = "(Required) - Position in the header to search for the IP address. Valid values include: FIRST, LAST, or ANY. If ANY is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.HeadersInspect the request headers.The headers block supports the following arguments:"
  type        = string
}
variable "positional_constraint" {
  description = "(Required) Area within the portion of a web request that you want AWS WAF to search for search_string. Valid values include the following: EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD. See the AWS documentation for more information."
  type        = string
}
variable "rate_based_statement" {
  description = "(Optional) Rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. This statement can not be nested. See Rate Based Statement below for details."
  type        = string
  default     = ""
}
variable "all_query_arguments" {
  description = "(Optional) Inspect all query arguments."
  type        = string
  default     = ""
}
variable "and_statement" {
  description = "(Optional) Logical rule statement used to combine other rule statements with AND logic. See AND Statement below for details."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the WAF WebACL."
  type        = string
}
variable "custom_response" {
  description = "(Optional) Defines a custom response for the web request. See Custom Response below for details.CaptchaThe captcha block supports the following arguments:"
  type        = string
  default     = ""
}
variable "scope" {
  description = "(Required) Specify whether you want to match using the label name or just the namespace. Valid values are LABEL or NAMESPACE."
  type        = string
}
variable "single_query_argument" {
  description = "(Optional) Inspect a single query argument. See Single Query Argument below for details."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Name of the query header to inspect. This setting must be provided as lower case characters.CookiesFieldToMatch specification.The cookies block supports the following arguments:"
  type        = string
  default     = ""
}
variable "capacity" {
  description = "Web ACL capacity units (WCUs) currently being used by this web ACL."
  type        = string
}
variable "captcha" {
  description = "(Optional) Instructs AWS WAF to run a Captcha check against the web request. See Captcha below for details."
  type        = string
  default     = ""
}
variable "cloudwatch_metrics_enabled" {
  description = "(Required) Whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see AWS WAF Metrics."
  type        = string
}
variable "cookies" {
  description = "(Optional) Inspect the cookies in the web request. See Cookies below for details."
  type        = string
  default     = ""
}
variable "count" {
  description = "(Optional) Override the rule action setting to count (i.e., only count matches). Configured as an empty block {}."
  type        = string
  default     = ""
}
variable "country_codes" {
  description = "(Required) Array of two-character country codes, for example, [ \"US\", \"CN\" ], from the alpha-2 country ISO codes of the ISO 3166 international standard. See the documentation for valid values."
  type        = string
}
variable "default_action" {
  description = "(Required) Action to perform if none of the rules contained in the WebACL match. See Default Action below for details."
  type        = string
}
variable "regex_pattern_set_reference_statement" {
  description = "(Optional) Rule statement used to search web request components for matches with regular expressions. See Regex Pattern Set Reference Statement below for details."
  type        = string
  default     = ""
}
variable "rule_group_reference_statement" {
  description = "(Optional) Rule statement used to run the rules that are defined in an WAFv2 Rule Group. See Rule Group Reference Statement below for details."
  type        = string
  default     = ""
}
variable "rule_label" {
  description = "(Optional) Labels to apply to web requests that match the rule match statement. See Rule Label below for details."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) String to match against.Managed Rule Group StatementA rule statement used to run the rules that are defined in a managed rule group.You can't nest a managed_rule_group_statement, for example for use inside a not_statement or or_statement. It can only be referenced as a top-level statement within a rule.The managed_rule_group_statement block supports the following arguments:"
  type        = string
}
variable "managed_rule_group_statement" {
  description = "(Optional) Rule statement used to run the rules that are defined in a managed rule group.  This statement can not be nested. See Managed Rule Group Statement below for details."
  type        = string
  default     = ""
}
variable "match_pattern" {
  description = "(Required) The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either all, included_cookies or excluded_cookies. More details: CookieMatchPattern"
  type        = string
}
variable "single_header" {
  description = "(Optional) Inspect a single header. See Single Header below for details."
  type        = string
  default     = ""
}
variable "value" {
  description = "Value of the custom header.Rule LabelEach block supports the following arguments:"
  type        = string
}
variable "visibility_config" {
  description = "(Required) Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.ActionThe action block supports the following arguments:~> strongNOTE: One of allow, block, or count, is required when specifying an action."
  type        = string
}
variable "all" {
  description = "An empty configuration block that is used for inspecting all headers."
  type        = string
}
variable "excluded_rule" {
  description = "(Optional) The rules whose actions are set to COUNT by the web ACL, regardless of the action that is set on the rule. See Excluded Rule below for details.Size Constraint StatementA rule statement that uses a comparison operator to compare a number of bytes against the size of a request component. AWS WAFv2 inspects up to the first 8192 bytes (8 KB) of a request body, and when inspecting the request URI Path, the slash /The size_constraint_statement block supports the following arguments:"
  type        = string
  default     = ""
}
variable "match_scope" {
  description = "(Required) The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: ALL, KEY, VALUE"
  type        = string
}
variable "override_action" {
  description = "(Optional) Override action to apply to the rules in a rule group. Used only for rule strongstatements that reference a rule group, like rule_group_reference_statement and managed_rule_group_statement. See Override Action below for details."
  type        = string
  default     = ""
}
variable "regex_match_statement" {
  description = "(Optional) Rule statement used to search web request components for a match against a single regular expression. See Regex Match Statement below for details."
  type        = string
  default     = ""
}
variable "uri_path" {
  description = "(Optional) Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.Forwarded IP ConfigThe forwarded_ip_config block supports the following arguments:"
  type        = string
  default     = ""
}
variable "version" {
  description = "(Optional) Version of the managed rule group. You can set Version_1.0 or Version_1.1 etc. If you want to use the default version, do not set anything.NOT StatementA logical rule statement used to negate the results of another rule statement. You provide one statement within the not_statement.The not_statement block supports the following arguments:"
  type        = string
  default     = ""
}
variable "content" {
  description = "(Required) Payload of the custom response."
  type        = string
}
variable "invalid_fallback_behavior" {
  description = "(Optional) What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are EVALUATE_AS_STRING, MATCH and NO_MATCH."
  type        = string
  default     = ""
}
variable "body" {
  description = "(Optional) Inspect the request body, which immediately follows the request headers."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Friendly description of the WebACL."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Required) Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content."
  type        = string
}
variable "regex_string" {
  description = "(Required) String representing the regular expression. Minimum of 1 and maximum of 512 characters."
  type        = string
}
variable "response_code" {
  description = "(Required) The HTTP status code to return to the client."
  type        = string
}
variable "size_constraint_statement" {
  description = "(Optional) Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See Size Constraint Statement below for more details."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Transformation to apply, please refer to the Text Transformation documentation for more details.Visibility ConfigurationThe visibility_config block supports the following arguments:"
  type        = string
}
variable "aggregate_key_type" {
  description = "(Optional) Setting that indicates how to aggregate the request counts. Valid values include: FORWARDED_IP or IP. Default: IP."
  type        = string
  default     = ""
}
variable "forwarded_ip_config" {
  description = "(Optional) Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If aggregate_key_type is set to FORWARDED_IP, this block is required. See Forwarded IP Config below for details."
  type        = string
  default     = ""
}
variable "ip_set_reference_statement" {
  description = "(Optional) Rule statement used to detect web requests coming from particular IP addresses or address ranges. See IP Set Reference Statement below for details."
  type        = string
  default     = ""
}
variable "method" {
  description = "(Optional) Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform."
  type        = string
  default     = ""
}
variable "search_string" {
  description = "(Required) String value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in field_to_match. The maximum length of the value is 50 bytes."
  type        = string
}
variable "block" {
  description = "(Optional) Instructs AWS WAF to block the web request. See Block below for details."
  type        = string
  default     = ""
}
variable "custom_request_handling" {
  description = "(Optional) Defines custom handling for the web request. See Custom Request Handling below for details.Custom Request HandlingThe custom_request_handling block supports the following arguments:"
  type        = string
  default     = ""
}
variable "label_match_statement" {
  description = "(Optional) Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See Label Match Statement below for details."
  type        = string
  default     = ""
}
variable "not_statement" {
  description = "(Optional) Logical rule statement used to negate the results of another rule statement. See NOT Statement below for details."
  type        = string
  default     = ""
}
variable "size" {
  description = "(Required) Size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive."
  type        = string
}
variable "sqli_match_statement" {
  description = "(Optional) An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See SQL Injection Match Statement below for details."
  type        = string
  default     = ""
}
variable "xss_match_statement" {
  description = "(Optional) Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See XSS Match Statement below for details.AND StatementA logical rule statement used to combine other rule statements with AND logic. You provide more than one statement within the and_statement.The and_statement block supports the following arguments:"
  type        = string
  default     = ""
}
variable "headers" {
  description = "(Optional) Inspect the request headers. See Headers below for details."
  type        = string
  default     = ""
}
variable "limit" {
  description = "(Required) Limit on requests per 5-minute period for a single originating IP address."
  type        = string
}
variable "allow" {
  description = "(Optional) Instructs AWS WAF to allow the web request. See Allow below for details."
  type        = string
  default     = ""
}
variable "custom_response_body_key" {
  description = "(Optional) References the response body that you want AWS WAF to return to the web request client. This must reference a key defined in a custom_response_body block of this resource."
  type        = string
  default     = ""
}
variable "fallback_behavior" {
  description = "(Required) - Match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: MATCH or NO_MATCH."
  type        = string
}
variable "sampled_requests_enabled" {
  description = "(Required) Whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "text_transformation" {
  description = "Text Transformation below for details.Excluded RuleThe excluded_rule block supports the following arguments:"
  type        = string
}
variable "action" {
  description = "(Optional) Action that AWS WAF should take on a web request when it matches the rule's statement. This is used only for rules whose strongstatements do not reference a rule group. See Action below for details."
  type        = string
  default     = ""
}
variable "comparison_operator" {
  description = "(Required) Operator to use to compare the request part to the size setting. Valid values include: EQ, NE, LE, LT, GE, or GT."
  type        = string
}
variable "custom_response_body" {
  description = "(Optional) Defines custom response bodies that can be referenced by custom_response actions. See Custom Response Body below for details."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the WAF WebACL."
  type        = string
}
variable "metric_name" {
  description = "(Required) A friendly name of the CloudWatch metric. The name can contain only alphanumeric characters (A-Z, a-z, 0-9) hyphen(-) and underscore (_), with length from one to 128 characters. It can't contain whitespace or metric names reserved for AWS WAF, for example All and Default_Action."
  type        = string
}
variable "query_string" {
  description = "(Optional) Inspect the query string. This is the part of a URL that appears after a ? character, if any."
  type        = string
  default     = ""
}
variable "content_type" {
  description = "(Required) Type of content in the payload that you are defining in the content argument. Valid values are TEXT_PLAIN, TEXT_HTML, or APPLICATION_JSON.Default ActionThe default_action block supports the following arguments:~> strongNOTE: One of allow or block, expressed as an empty configuration block {}, is required when specifying a default_action"
  type        = string
}
variable "field_to_match" {
  description = "(Optional) Part of a web request that you want AWS WAF to inspect. See Field to Match below for details."
  type        = string
  default     = ""
}
variable "geo_match_statement" {
  description = "(Optional) Rule statement used to identify web requests based on country of origin. See GEO Match Statement below for details."
  type        = string
  default     = ""
}
variable "none" {
  description = "(Optional) Don't override the rule action setting. Configured as an empty block {}.AllowThe allow block supports the following arguments:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of key-value pairs to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "byte_match_statement" {
  description = "(Optional) Rule statement that defines a string match search for AWS WAF to apply to web requests. See Byte Match Statement below for details."
  type        = string
  default     = ""
}
variable "header_name" {
  description = "(Required) - Name of the HTTP header to use for the IP address."
  type        = string
}
variable "json_body" {
  description = "(Optional) Inspect the request body as JSON. See JSON Body for details."
  type        = string
  default     = ""
}
variable "response_header" {
  description = "(Optional) The response_header blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.Custom HTTP HeaderEach block supports the following arguments. Duplicate header names are not allowed:"
  type        = string
  default     = ""
}
variable "scope_down_statement" {
  description = "(Optional) Optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See Statement above for details.Regex Match StatementA rule statement used to search web request components for a match against a single regular expression.The regex_match_statement block supports the following arguments:"
  type        = string
  default     = ""
}
variable "statement" {
  description = "(Required) Statements to combine with OR logic. You can use any statements that can be nested. See Statement above for details.Rate Based StatementA rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests. See the documentation for more information.You can't nest a rate_based_statement, for example for use inside a not_statement or or_statement. It can only be referenced as a top-level statement within a rule.The rate_based_statement block supports the following arguments:"
  type        = string
}
variable "vendor_name" {
  description = "(Required) Name of the managed rule group vendor."
  type        = string
}
variable "oversize_handling" {
  description = "(Required) What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: CONTINUE, MATCH, NO_MATCHText TransformationThe text_transformation block supports the following arguments:"
  type        = string
}
variable "excluded_headers" {
  description = "An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values."
  type        = string
}
variable "ip_set_forwarded_ip_config" {
  description = "(Optional) Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.Label Match StatementThe label_match_statement block supports the following arguments:"
  type        = string
  default     = ""
}
variable "rule" {
  description = "(Optional) Rule blocks used to identify the web requests that you want to allow, block, or count. See Rules below for details."
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
output "content" {
  description = "(Required) Payload of the custom response."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.content
}
output "invalid_fallback_behavior" {
  description = "(Optional) What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are EVALUATE_AS_STRING, MATCH and NO_MATCH."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.invalid_fallback_behavior
}
output "response_code" {
  description = "(Required) The HTTP status code to return to the client."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.response_code
}
output "size_constraint_statement" {
  description = "(Optional) Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See Size Constraint Statement below for more details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.size_constraint_statement
}
output "type" {
  description = "(Required) Transformation to apply, please refer to the Text Transformation documentation for more details.Visibility ConfigurationThe visibility_config block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.type
}
output "body" {
  description = "(Optional) Inspect the request body, which immediately follows the request headers."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.body
}
output "description" {
  description = "(Optional) Friendly description of the WebACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.description
}
output "priority" {
  description = "(Required) Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.priority
}
output "regex_string" {
  description = "(Required) String representing the regular expression. Minimum of 1 and maximum of 512 characters."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.regex_string
}
output "search_string" {
  description = "(Required) String value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in field_to_match. The maximum length of the value is 50 bytes."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.search_string
}
output "aggregate_key_type" {
  description = "(Optional) Setting that indicates how to aggregate the request counts. Valid values include: FORWARDED_IP or IP. Default: IP."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.aggregate_key_type
}
output "forwarded_ip_config" {
  description = "(Optional) Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If aggregate_key_type is set to FORWARDED_IP, this block is required. See Forwarded IP Config below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.forwarded_ip_config
}
output "ip_set_reference_statement" {
  description = "(Optional) Rule statement used to detect web requests coming from particular IP addresses or address ranges. See IP Set Reference Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.ip_set_reference_statement
}
output "method" {
  description = "(Optional) Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.method
}
output "size" {
  description = "(Required) Size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.size
}
output "sqli_match_statement" {
  description = "(Optional) An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See SQL Injection Match Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.sqli_match_statement
}
output "xss_match_statement" {
  description = "(Optional) Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See XSS Match Statement below for details.AND StatementA logical rule statement used to combine other rule statements with AND logic. You provide more than one statement within the and_statement.The and_statement block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.xss_match_statement
}
output "block" {
  description = "(Optional) Instructs AWS WAF to block the web request. See Block below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.block
}
output "custom_request_handling" {
  description = "(Optional) Defines custom handling for the web request. See Custom Request Handling below for details.Custom Request HandlingThe custom_request_handling block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.custom_request_handling
}
output "label_match_statement" {
  description = "(Optional) Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See Label Match Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.label_match_statement
}
output "not_statement" {
  description = "(Optional) Logical rule statement used to negate the results of another rule statement. See NOT Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.not_statement
}
output "headers" {
  description = "(Optional) Inspect the request headers. See Headers below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.headers
}
output "limit" {
  description = "(Required) Limit on requests per 5-minute period for a single originating IP address."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.limit
}
output "text_transformation" {
  description = "Text Transformation below for details.Excluded RuleThe excluded_rule block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.text_transformation
}
output "allow" {
  description = "(Optional) Instructs AWS WAF to allow the web request. See Allow below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.allow
}
output "custom_response_body_key" {
  description = "(Optional) References the response body that you want AWS WAF to return to the web request client. This must reference a key defined in a custom_response_body block of this resource."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.custom_response_body_key
}
output "fallback_behavior" {
  description = "(Required) - Match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: MATCH or NO_MATCH."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.fallback_behavior
}
output "sampled_requests_enabled" {
  description = "(Required) Whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.sampled_requests_enabled
}
output "metric_name" {
  description = "(Required) A friendly name of the CloudWatch metric. The name can contain only alphanumeric characters (A-Z, a-z, 0-9) hyphen(-) and underscore (_), with length from one to 128 characters. It can't contain whitespace or metric names reserved for AWS WAF, for example All and Default_Action."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.metric_name
}
output "query_string" {
  description = "(Optional) Inspect the query string. This is the part of a URL that appears after a ? character, if any."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.query_string
}
output "action" {
  description = "(Optional) Action that AWS WAF should take on a web request when it matches the rule's statement. This is used only for rules whose strongstatements do not reference a rule group. See Action below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.action
}
output "comparison_operator" {
  description = "(Required) Operator to use to compare the request part to the size setting. Valid values include: EQ, NE, LE, LT, GE, or GT."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.comparison_operator
}
output "custom_response_body" {
  description = "(Optional) Defines custom response bodies that can be referenced by custom_response actions. See Custom Response Body below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.custom_response_body
}
output "id" {
  description = "The ID of the WAF WebACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.id
}
output "tags" {
  description = "(Optional) Map of key-value pairs to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.tags
}
output "content_type" {
  description = "(Required) Type of content in the payload that you are defining in the content argument. Valid values are TEXT_PLAIN, TEXT_HTML, or APPLICATION_JSON.Default ActionThe default_action block supports the following arguments:~> strongNOTE: One of allow or block, expressed as an empty configuration block {}, is required when specifying a default_action"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.content_type
}
output "field_to_match" {
  description = "(Optional) Part of a web request that you want AWS WAF to inspect. See Field to Match below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.field_to_match
}
output "geo_match_statement" {
  description = "(Optional) Rule statement used to identify web requests based on country of origin. See GEO Match Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.geo_match_statement
}
output "none" {
  description = "(Optional) Don't override the rule action setting. Configured as an empty block {}.AllowThe allow block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.none
}
output "scope_down_statement" {
  description = "(Optional) Optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See Statement above for details.Regex Match StatementA rule statement used to search web request components for a match against a single regular expression.The regex_match_statement block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.scope_down_statement
}
output "statement" {
  description = "(Required) Statements to combine with OR logic. You can use any statements that can be nested. See Statement above for details.Rate Based StatementA rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests. See the documentation for more information.You can't nest a rate_based_statement, for example for use inside a not_statement or or_statement. It can only be referenced as a top-level statement within a rule.The rate_based_statement block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.statement
}
output "vendor_name" {
  description = "(Required) Name of the managed rule group vendor."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.vendor_name
}
output "byte_match_statement" {
  description = "(Optional) Rule statement that defines a string match search for AWS WAF to apply to web requests. See Byte Match Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.byte_match_statement
}
output "header_name" {
  description = "(Required) - Name of the HTTP header to use for the IP address."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.header_name
}
output "json_body" {
  description = "(Optional) Inspect the request body as JSON. See JSON Body for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.json_body
}
output "response_header" {
  description = "(Optional) The response_header blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.Custom HTTP HeaderEach block supports the following arguments. Duplicate header names are not allowed:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.response_header
}
output "oversize_handling" {
  description = "(Required) What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: CONTINUE, MATCH, NO_MATCHText TransformationThe text_transformation block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.oversize_handling
}
output "excluded_headers" {
  description = "An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.excluded_headers
}
output "ip_set_forwarded_ip_config" {
  description = "(Optional) Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.Label Match StatementThe label_match_statement block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.ip_set_forwarded_ip_config
}
output "rule" {
  description = "(Optional) Rule blocks used to identify the web requests that you want to allow, block, or count. See Rules below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.rule
}
output "positional_constraint" {
  description = "(Required) Area within the portion of a web request that you want AWS WAF to search for search_string. Valid values include the following: EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD. See the AWS documentation for more information."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.positional_constraint
}
output "rate_based_statement" {
  description = "(Optional) Rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. This statement can not be nested. See Rate Based Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.rate_based_statement
}
output "included_headers" {
  description = "An array of strings that will be used for inspecting headers that have a key that matches one of the provided values."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.included_headers
}
output "insert_header" {
  description = "(Required) The insert_header blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.Custom ResponseThe custom_response block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.insert_header
}
output "or_statement" {
  description = "(Optional) Logical rule statement used to combine other rule statements with OR logic. See OR Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.or_statement
}
output "position" {
  description = "(Required) - Position in the header to search for the IP address. Valid values include: FIRST, LAST, or ANY. If ANY is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.HeadersInspect the request headers.The headers block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.position
}
output "scope" {
  description = "(Required) Specify whether you want to match using the label name or just the namespace. Valid values are LABEL or NAMESPACE."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.scope
}
output "single_query_argument" {
  description = "(Optional) Inspect a single query argument. See Single Query Argument below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.single_query_argument
}
output "all_query_arguments" {
  description = "(Optional) Inspect all query arguments."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.all_query_arguments
}
output "and_statement" {
  description = "(Optional) Logical rule statement used to combine other rule statements with AND logic. See AND Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.and_statement
}
output "arn" {
  description = "The ARN of the WAF WebACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.arn
}
output "custom_response" {
  description = "(Optional) Defines a custom response for the web request. See Custom Response below for details.CaptchaThe captcha block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.custom_response
}
output "count" {
  description = "(Optional) Override the rule action setting to count (i.e., only count matches). Configured as an empty block {}."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.count
}
output "country_codes" {
  description = "(Required) Array of two-character country codes, for example, [ \"US\", \"CN\" ], from the alpha-2 country ISO codes of the ISO 3166 international standard. See the documentation for valid values."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.country_codes
}
output "default_action" {
  description = "(Required) Action to perform if none of the rules contained in the WebACL match. See Default Action below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.default_action
}
output "name" {
  description = "(Optional) Name of the query header to inspect. This setting must be provided as lower case characters.CookiesFieldToMatch specification.The cookies block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.name
}
output "capacity" {
  description = "Web ACL capacity units (WCUs) currently being used by this web ACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.capacity
}
output "captcha" {
  description = "(Optional) Instructs AWS WAF to run a Captcha check against the web request. See Captcha below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.captcha
}
output "cloudwatch_metrics_enabled" {
  description = "(Required) Whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see AWS WAF Metrics."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.cloudwatch_metrics_enabled
}
output "cookies" {
  description = "(Optional) Inspect the cookies in the web request. See Cookies below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.cookies
}
output "regex_pattern_set_reference_statement" {
  description = "(Optional) Rule statement used to search web request components for matches with regular expressions. See Regex Pattern Set Reference Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.regex_pattern_set_reference_statement
}
output "rule_group_reference_statement" {
  description = "(Optional) Rule statement used to run the rules that are defined in an WAFv2 Rule Group. See Rule Group Reference Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.rule_group_reference_statement
}
output "rule_label" {
  description = "(Optional) Labels to apply to web requests that match the rule match statement. See Rule Label below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.rule_label
}
output "value" {
  description = "Value of the custom header.Rule LabelEach block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.value
}
output "visibility_config" {
  description = "(Required) Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.ActionThe action block supports the following arguments:~> strongNOTE: One of allow, block, or count, is required when specifying an action."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.visibility_config
}
output "key" {
  description = "(Required) String to match against.Managed Rule Group StatementA rule statement used to run the rules that are defined in a managed rule group.You can't nest a managed_rule_group_statement, for example for use inside a not_statement or or_statement. It can only be referenced as a top-level statement within a rule.The managed_rule_group_statement block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.key
}
output "managed_rule_group_statement" {
  description = "(Optional) Rule statement used to run the rules that are defined in a managed rule group.  This statement can not be nested. See Managed Rule Group Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.managed_rule_group_statement
}
output "match_pattern" {
  description = "(Required) The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either all, included_cookies or excluded_cookies. More details: CookieMatchPattern"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.match_pattern
}
output "single_header" {
  description = "(Optional) Inspect a single header. See Single Header below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.single_header
}
output "regex_match_statement" {
  description = "(Optional) Rule statement used to search web request components for a match against a single regular expression. See Regex Match Statement below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.regex_match_statement
}
output "uri_path" {
  description = "(Optional) Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.Forwarded IP ConfigThe forwarded_ip_config block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.uri_path
}
output "version" {
  description = "(Optional) Version of the managed rule group. You can set Version_1.0 or Version_1.1 etc. If you want to use the default version, do not set anything.NOT StatementA logical rule statement used to negate the results of another rule statement. You provide one statement within the not_statement.The not_statement block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.version
}
output "all" {
  description = "An empty configuration block that is used for inspecting all headers."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.all
}
output "excluded_rule" {
  description = "(Optional) The rules whose actions are set to COUNT by the web ACL, regardless of the action that is set on the rule. See Excluded Rule below for details.Size Constraint StatementA rule statement that uses a comparison operator to compare a number of bytes against the size of a request component. AWS WAFv2 inspects up to the first 8192 bytes (8 KB) of a request body, and when inspecting the request URI Path, the slash /The size_constraint_statement block supports the following arguments:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.excluded_rule
}
output "match_scope" {
  description = "(Required) The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: ALL, KEY, VALUE"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.match_scope
}
output "override_action" {
  description = "(Optional) Override action to apply to the rules in a rule group. Used only for rule strongstatements that reference a rule group, like rule_group_reference_statement and managed_rule_group_statement. See Override Action below for details."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.override_action
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.tags_all
}
output "arn" {
  description = "The ARN of the WAF WebACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.arn
}
output "capacity" {
  description = "Web ACL capacity units (WCUs) currently being used by this web ACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.capacity
}
output "id" {
  description = "The ID of the WAF WebACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.id
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
      "kind/name"                   = "aws_wafv2_web_acl"
      "kind/version"                = "v0.1.0"
    }
  }
}
