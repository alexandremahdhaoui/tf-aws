resource "aws_wafv2_rule_group" "aws_wafv2_rule_group" {
  header_name                           = var.header_name
  cookies                               = var.cookies
  field_to_match                        = var.field_to_match
  priority                              = var.priority
  uri_path                              = var.uri_path
  visibility_config                     = var.visibility_config
  description                           = var.description
  byte_match_statement                  = var.byte_match_statement
  type                                  = var.type
  body                                  = var.body
  method                                = var.method
  oversize_handling                     = var.oversize_handling
  rule_label                            = var.rule_label
  sqli_match_statement                  = var.sqli_match_statement
  statement                             = var.statement
  text_transformation                   = var.text_transformation
  xss_match_statement                   = var.xss_match_statement
  custom_response_body_key              = var.custom_response_body_key
  count                                 = var.count
  headers                               = var.headers
  invalid_fallback_behavior             = var.invalid_fallback_behavior
  limit                                 = var.limit
  single_header                         = var.single_header
  arn                                   = var.arn
  country_codes                         = var.country_codes
  included_headers                      = var.included_headers
  ip_set_reference_statement            = var.ip_set_reference_statement
  cloudwatch_metrics_enabled            = var.cloudwatch_metrics_enabled
  custom_request_handling               = var.custom_request_handling
  match_pattern                         = var.match_pattern
  regex_match_statement                 = var.regex_match_statement
  single_query_argument                 = var.single_query_argument
  content_type                          = var.content_type
  aggregate_key_type                    = var.aggregate_key_type
  custom_response                       = var.custom_response
  search_string                         = var.search_string
  size_constraint_statement             = var.size_constraint_statement
  action                                = var.action
  forwarded_ip_config                   = var.forwarded_ip_config
  id                                    = var.id
  ip_set_forwarded_ip_config            = var.ip_set_forwarded_ip_config
  label_match_statement                 = var.label_match_statement
  regex_string                          = var.regex_string
  response_code                         = var.response_code
  capacity                              = var.capacity
  name                                  = var.name
  or_statement                          = var.or_statement
  regex_pattern_set_reference_statement = var.regex_pattern_set_reference_statement
  metric_name                           = var.metric_name
  insert_header                         = var.insert_header
  not_statement                         = var.not_statement
  size                                  = var.size
  fallback_behavior                     = var.fallback_behavior
  comparison_operator                   = var.comparison_operator
  geo_match_statement                   = var.geo_match_statement
  json_body                             = var.json_body
  query_string                          = var.query_string
  all_query_arguments                   = var.all_query_arguments
  key                                   = var.key
  scope                                 = var.scope
  allow                                 = var.allow
  content                               = var.content
  match_scope                           = var.match_scope
  response_header                       = var.response_header
  rule                                  = var.rule
  sampled_requests_enabled              = var.sampled_requests_enabled
  and_statement                         = var.and_statement
  custom_response_body                  = var.custom_response_body
  position                              = var.position
  scope_down_statement                  = var.scope_down_statement
  value                                 = var.value
  block                                 = var.block
  excluded_headers                      = var.excluded_headers
  positional_constraint                 = var.positional_constraint
  rate_based_statement                  = var.rate_based_statement
  tags                                  = var.tags
  all                                   = var.all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "insert_header" {
  description = "(Required) The insert_header blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.Custom ResponseThe custom_response block supports the following arguments:"
  type        = string
}
variable "not_statement" {
  description = "(Optional) A logical rule statement used to negate the results of another rule statement. See NOT Statement below for details."
  type        = string
}
variable "size" {
  description = "(Required) The size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive."
  type        = string
}
variable "fallback_behavior" {
  description = "(Required) - The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: MATCH or NO_MATCH."
  type        = string
}
variable "comparison_operator" {
  description = "(Required) The operator to use to compare the request part to the size setting. Valid values include: EQ, NE, LE, LT, GE, or GT."
  type        = string
}
variable "geo_match_statement" {
  description = "(Optional) A rule statement used to identify web requests based on country of origin. See GEO Match Statement below for details."
  type        = string
}
variable "json_body" {
  description = "(Optional) Inspect the request body as JSON. See JSON Body for details."
  type        = string
}
variable "query_string" {
  description = "(Optional) Inspect the query string. This is the part of a URL that appears after a ? character, if any."
  type        = string
}
variable "all_query_arguments" {
  description = "(Optional) Inspect all query arguments."
  type        = string
}
variable "key" {
  description = "(Required) The string to match against.IP Set Reference StatementA rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an aws_wafv2_ip_set that specifies the addresses you want to detect, then use the ARN of that set in this statement.The ip_set_reference_statement block supports the following arguments:"
  type        = string
}
variable "scope" {
  description = "(Required) Specify whether you want to match using the label name or just the namespace. Valid values are LABEL or NAMESPACE."
  type        = string
}
variable "allow" {
  description = "(Optional) Instructs AWS WAF to allow the web request. See Allow below for details."
  type        = string
}
variable "content" {
  description = "(Required) The payload of the custom response."
  type        = string
}
variable "match_scope" {
  description = "(Required) The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: ALL, KEY, VALUE"
  type        = string
}
variable "response_header" {
  description = "(Optional) The response_header blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.Custom HTTP HeaderEach block supports the following arguments. Duplicate header names are not allowed:"
  type        = string
}
variable "rule" {
  description = "(Optional) The rule blocks used to identify the web requests that you want to allow, block, or count. See Rules below for details."
  type        = string
}
variable "sampled_requests_enabled" {
  description = "(Required) A boolean indicating whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "and_statement" {
  description = "(Optional) A logical rule statement used to combine other rule statements with AND logic. See AND Statement below for details."
  type        = string
}
variable "custom_response_body" {
  description = "(Optional) Defines custom response bodies that can be referenced by custom_response actions. See Custom Response Body below for details."
  type        = string
}
variable "position" {
  description = "(Required) - The position in the header to search for the IP address. Valid values include: FIRST, LAST, or ANY. If ANY is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.HeadersInspect the request headers.The headers block supports the following arguments:"
  type        = string
}
variable "scope_down_statement" {
  description = "(Optional) An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See Statement above for details.Regex Match StatementA rule statement used to search web request components for a match against a single regular expression.The regex_match_statement block supports the following arguments:"
  type        = string
}
variable "value" {
  description = "The value of the custom header.Rule LabelEach block supports the following arguments:"
  type        = string
}
variable "block" {
  description = "(Optional) Instructs AWS WAF to block the web request. See Block below for details."
  type        = string
}
variable "excluded_headers" {
  description = "An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values."
  type        = string
}
variable "positional_constraint" {
  description = "(Required) The area within the portion of a web request that you want AWS WAF to search for search_string. Valid values include the following: EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD. See the AWS documentation for more information."
  type        = string
}
variable "rate_based_statement" {
  description = "(Optional) A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. This statement can not be nested. See Rate Based Statement below for details."
  type        = string
}
variable "tags" {
  description = "(Optional) An array of key:value pairs to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "all" {
  description = "An empty configuration block that is used for inspecting all headers."
  type        = string
}
variable "header_name" {
  description = "(Required) - The name of the HTTP header to use for the IP address."
  type        = string
}
variable "cookies" {
  description = "(Optional) Inspect the cookies in the web request. See Cookies below for details."
  type        = string
}
variable "field_to_match" {
  description = "(Required) The part of a web request that you want AWS WAF to inspect. See Field to Match below for details."
  type        = string
}
variable "priority" {
  description = "(Required) The relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content."
  type        = string
}
variable "uri_path" {
  description = "(Optional) Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.Forwarded IP ConfigThe forwarded_ip_config block supports the following arguments:"
  type        = string
}
variable "visibility_config" {
  description = "(Required) Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.ActionThe action block supports the following arguments:~> strongNOTE: One of allow, block, or count, is required when specifying an action."
  type        = string
}
variable "description" {
  description = "(Optional) A friendly description of the rule group."
  type        = string
}
variable "byte_match_statement" {
  description = "(Optional) A rule statement that defines a string match search for AWS WAF to apply to web requests. See Byte Match Statement below for details."
  type        = string
}
variable "type" {
  description = "(Required) The transformation to apply, please refer to the Text Transformation documentation for more details.Visibility ConfigurationThe visibility_config block supports the following arguments:"
  type        = string
}
variable "body" {
  description = "(Optional) Inspect the request body, which immediately follows the request headers."
  type        = string
}
variable "method" {
  description = "(Optional) Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform."
  type        = string
}
variable "oversize_handling" {
  description = "(Required) What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: CONTINUE, MATCH, NO_MATCHText TransformationThe text_transformation block supports the following arguments:"
  type        = string
}
variable "rule_label" {
  description = "(Optional) Labels to apply to web requests that match the rule match statement. See Rule Label below for details."
  type        = string
}
variable "sqli_match_statement" {
  description = "(Optional) An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See SQL Injection Match Statement below for details."
  type        = string
}
variable "statement" {
  description = "(Required) The statements to combine with OR logic. You can use any statements that can be nested. See Statement above for details.Rate Based StatementA rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests. See the documentation for more information.You can't nest a rate_based_statement, for example for use inside a not_statement or or_statement. It can only be referenced as a top-level statement within a rule.The rate_based_statement block supports the following arguments:"
  type        = string
}
variable "text_transformation" {
  description = "(Required) Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.\nAt least one required.\nSee Text Transformation below for details.Field to MatchThe part of a web request that you want AWS WAF to inspect. Include the single field_to_match type that you want to inspect, with additional specifications as needed, according to the type. You specify a single request component in field_to_match for each rule statement that requires it. To inspect more than one component of a web request, create a separate rule statement for each component. See the documentation for more details.The field_to_match block supports the following arguments:~> strongNOTE: Only one of all_query_arguments, body, cookies, headers, json_body, method, query_string, single_header, single_query_argument, or uri_path{} should be used when specifying all_query_arguments, body, method, or query_string attributes."
  type        = string
}
variable "xss_match_statement" {
  description = "(Optional) A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See XSS Match Statement below for details.AND StatementA logical rule statement used to combine other rule statements with AND logic. You provide more than one statement within the and_statement.The and_statement block supports the following arguments:"
  type        = string
}
variable "custom_response_body_key" {
  description = "(Optional) References the response body that you want AWS WAF to return to the web request client. This must reference a key defined in a custom_response_body block of this resource."
  type        = string
}
variable "count" {
  description = "(Optional) Instructs AWS WAF to count the web request and allow it. See Count below for details.AllowThe allow block supports the following arguments:"
  type        = string
}
variable "headers" {
  description = "(Optional) Inspect the request headers. See Headers below for details."
  type        = string
}
variable "invalid_fallback_behavior" {
  description = "(Optional) What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are EVALUATE_AS_STRING, MATCH and NO_MATCH."
  type        = string
}
variable "limit" {
  description = "(Required) The limit on requests per 5-minute period for a single originating IP address."
  type        = string
}
variable "single_header" {
  description = "(Optional) Inspect a single header. See Single Header below for details."
  type        = string
}
variable "arn" {
  description = "The ARN of the WAF rule group."
  type        = string
}
variable "country_codes" {
  description = "(Required) An array of two-character country codes, for example, [ \"US\", \"CN\" ], from the alpha-2 country ISO codes of the ISO 3166 international standard. See the documentation for valid values."
  type        = string
}
variable "included_headers" {
  description = "An array of strings that will be used for inspecting headers that have a key that matches one of the provided values."
  type        = string
}
variable "ip_set_reference_statement" {
  description = "(Optional) A rule statement used to detect web requests coming from particular IP addresses or address ranges. See IP Set Reference Statement below for details."
  type        = string
}
variable "cloudwatch_metrics_enabled" {
  description = "(Required) A boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see AWS WAF Metrics."
  type        = string
}
variable "custom_request_handling" {
  description = "(Optional) Defines custom handling for the web request. See Custom Request Handling below for details.Custom Request HandlingThe custom_request_handling block supports the following arguments:"
  type        = string
}
variable "match_pattern" {
  description = "(Required) The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either all, included_cookies or excluded_cookies. More details: CookieMatchPattern"
  type        = string
}
variable "regex_match_statement" {
  description = "(Optional) A rule statement used to search web request components for a match against a single regular expression. See Regex Match Statement below for details."
  type        = string
}
variable "single_query_argument" {
  description = "(Optional) Inspect a single query argument. See Single Query Argument below for details."
  type        = string
}
variable "content_type" {
  description = "(Required) The type of content in the payload that you are defining in the content argument. Valid values are TEXT_PLAIN, TEXT_HTML, or APPLICATION_JSON.RulesEach rule supports the following arguments:"
  type        = string
}
variable "aggregate_key_type" {
  description = "(Optional) Setting that indicates how to aggregate the request counts. Valid values include: FORWARDED_IP or IP. Default: IP."
  type        = string
}
variable "custom_response" {
  description = "(Optional) Defines a custom response for the web request. See Custom Response below for details.CountThe count block supports the following arguments:"
  type        = string
}
variable "search_string" {
  description = "(Required) A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in field_to_match. The maximum length of the value is 50 bytes."
  type        = string
}
variable "size_constraint_statement" {
  description = "(Optional) A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See Size Constraint Statement below for more details."
  type        = string
}
variable "action" {
  description = "(Required) The action that AWS WAF should take on a web request when it matches the rule's statement. Settings at the aws_wafv2_web_acl level can override the rule action setting. See Action below for details."
  type        = string
}
variable "forwarded_ip_config" {
  description = "(Optional) The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If aggregate_key_type is set to FORWARDED_IP, this block is required. See Forwarded IP Config below for details."
  type        = string
}
variable "id" {
  description = "The ID of the WAF rule group."
  type        = string
}
variable "ip_set_forwarded_ip_config" {
  description = "(Optional) The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.NOT StatementA logical rule statement used to negate the results of another rule statement. You provide one statement within the not_statement.The not_statement block supports the following arguments:"
  type        = string
}
variable "label_match_statement" {
  description = "(Optional) A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See Label Match Statement below for details."
  type        = string
}
variable "regex_string" {
  description = "(Required) The string representing the regular expression. Minimum of 1 and maximum of 512 characters."
  type        = string
}
variable "response_code" {
  description = "(Required) The HTTP status code to return to the client."
  type        = string
}
variable "capacity" {
  description = "(Required, Forces new resource) The web ACL capacity units (WCUs) required for this rule group. See here for general information and here for capacity specific information."
  type        = string
}
variable "name" {
  description = "(Optional) The name of the query header to inspect. This setting must be provided as lower case characters.CookiesFieldToMatch specification.The cookies block supports the following arguments:"
  type        = string
}
variable "or_statement" {
  description = "(Optional) A logical rule statement used to combine other rule statements with OR logic. See OR Statement below for details."
  type        = string
}
variable "regex_pattern_set_reference_statement" {
  description = "(Optional) A rule statement used to search web request components for matches with regular expressions. See Regex Pattern Set Reference Statement below for details."
  type        = string
}
variable "metric_name" {
  description = "(Required, Forces new resource) A friendly name of the CloudWatch metric. The name can contain only alphanumeric characters (A-Z, a-z, 0-9) hyphen(-) and underscore (_), with length from one to 128 characters. It can't contain whitespace or metric names reserved for AWS WAF, for example All and Default_Action."
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
output "sqli_match_statement" {
  description = "(Optional) An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See SQL Injection Match Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.sqli_match_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "statement" {
  description = "(Required) The statements to combine with OR logic. You can use any statements that can be nested. See Statement above for details.Rate Based StatementA rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests. See the documentation for more information.You can't nest a rate_based_statement, for example for use inside a not_statement or or_statement. It can only be referenced as a top-level statement within a rule.The rate_based_statement block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "text_transformation" {
  description = "(Required) Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.\nAt least one required.\nSee Text Transformation below for details.Field to MatchThe part of a web request that you want AWS WAF to inspect. Include the single field_to_match type that you want to inspect, with additional specifications as needed, according to the type. You specify a single request component in field_to_match for each rule statement that requires it. To inspect more than one component of a web request, create a separate rule statement for each component. See the documentation for more details.The field_to_match block supports the following arguments:~> strongNOTE: Only one of all_query_arguments, body, cookies, headers, json_body, method, query_string, single_header, single_query_argument, or uri_path{} should be used when specifying all_query_arguments, body, method, or query_string attributes."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.text_transformation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "xss_match_statement" {
  description = "(Optional) A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See XSS Match Statement below for details.AND StatementA logical rule statement used to combine other rule statements with AND logic. You provide more than one statement within the and_statement.The and_statement block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.xss_match_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_response_body_key" {
  description = "(Optional) References the response body that you want AWS WAF to return to the web request client. This must reference a key defined in a custom_response_body block of this resource."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.custom_response_body_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "method" {
  description = "(Optional) Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.method
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "oversize_handling" {
  description = "(Required) What AWS WAF should do if the cookies of the request are larger than AWS WAF can inspect. AWS WAF does not support inspecting the entire contents of request cookies when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies and at most 8 KB of cookie contents to AWS WAF. Valid values: CONTINUE, MATCH, NO_MATCHText TransformationThe text_transformation block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.oversize_handling
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_label" {
  description = "(Optional) Labels to apply to web requests that match the rule match statement. See Rule Label below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.rule_label
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "limit" {
  description = "(Required) The limit on requests per 5-minute period for a single originating IP address."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "single_header" {
  description = "(Optional) Inspect a single header. See Single Header below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.single_header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the WAF rule group."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "count" {
  description = "(Optional) Instructs AWS WAF to count the web request and allow it. See Count below for details.AllowThe allow block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers" {
  description = "(Optional) Inspect the request headers. See Headers below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invalid_fallback_behavior" {
  description = "(Optional) What to do when JSON parsing fails. Defaults to evaluating up to the first parsing failure. Valid values are EVALUATE_AS_STRING, MATCH and NO_MATCH."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.invalid_fallback_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_metrics_enabled" {
  description = "(Required) A boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see AWS WAF Metrics."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.cloudwatch_metrics_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "country_codes" {
  description = "(Required) An array of two-character country codes, for example, [ \"US\", \"CN\" ], from the alpha-2 country ISO codes of the ISO 3166 international standard. See the documentation for valid values."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.country_codes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "included_headers" {
  description = "An array of strings that will be used for inspecting headers that have a key that matches one of the provided values."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.included_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_set_reference_statement" {
  description = "(Optional) A rule statement used to detect web requests coming from particular IP addresses or address ranges. See IP Set Reference Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.ip_set_reference_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "single_query_argument" {
  description = "(Optional) Inspect a single query argument. See Single Query Argument below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.single_query_argument
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_type" {
  description = "(Required) The type of content in the payload that you are defining in the content argument. Valid values are TEXT_PLAIN, TEXT_HTML, or APPLICATION_JSON.RulesEach rule supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.content_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_request_handling" {
  description = "(Optional) Defines custom handling for the web request. See Custom Request Handling below for details.Custom Request HandlingThe custom_request_handling block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.custom_request_handling
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "match_pattern" {
  description = "(Required) The filter to use to identify the subset of cookies to inspect in a web request. You must specify exactly one setting: either all, included_cookies or excluded_cookies. More details: CookieMatchPattern"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.match_pattern
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "regex_match_statement" {
  description = "(Optional) A rule statement used to search web request components for a match against a single regular expression. See Regex Match Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.regex_match_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size_constraint_statement" {
  description = "(Optional) A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See Size Constraint Statement below for more details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.size_constraint_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "action" {
  description = "(Required) The action that AWS WAF should take on a web request when it matches the rule's statement. Settings at the aws_wafv2_web_acl level can override the rule action setting. See Action below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aggregate_key_type" {
  description = "(Optional) Setting that indicates how to aggregate the request counts. Valid values include: FORWARDED_IP or IP. Default: IP."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.aggregate_key_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_response" {
  description = "(Optional) Defines a custom response for the web request. See Custom Response below for details.CountThe count block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.custom_response
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "search_string" {
  description = "(Required) A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in field_to_match. The maximum length of the value is 50 bytes."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.search_string
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "label_match_statement" {
  description = "(Optional) A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See Label Match Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.label_match_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "regex_string" {
  description = "(Required) The string representing the regular expression. Minimum of 1 and maximum of 512 characters."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.regex_string
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "response_code" {
  description = "(Required) The HTTP status code to return to the client."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.response_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity" {
  description = "(Required, Forces new resource) The web ACL capacity units (WCUs) required for this rule group. See here for general information and here for capacity specific information."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "forwarded_ip_config" {
  description = "(Optional) The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If aggregate_key_type is set to FORWARDED_IP, this block is required. See Forwarded IP Config below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.forwarded_ip_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the WAF rule group."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_set_forwarded_ip_config" {
  description = "(Optional) The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.NOT StatementA logical rule statement used to negate the results of another rule statement. You provide one statement within the not_statement.The not_statement block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.ip_set_forwarded_ip_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_name" {
  description = "(Required, Forces new resource) A friendly name of the CloudWatch metric. The name can contain only alphanumeric characters (A-Z, a-z, 0-9) hyphen(-) and underscore (_), with length from one to 128 characters. It can't contain whitespace or metric names reserved for AWS WAF, for example All and Default_Action."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.metric_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) The name of the query header to inspect. This setting must be provided as lower case characters.CookiesFieldToMatch specification.The cookies block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "or_statement" {
  description = "(Optional) A logical rule statement used to combine other rule statements with OR logic. See OR Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.or_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "regex_pattern_set_reference_statement" {
  description = "(Optional) A rule statement used to search web request components for matches with regular expressions. See Regex Pattern Set Reference Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.regex_pattern_set_reference_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fallback_behavior" {
  description = "(Required) - The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: MATCH or NO_MATCH."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.fallback_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "insert_header" {
  description = "(Required) The insert_header blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.Custom ResponseThe custom_response block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.insert_header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_statement" {
  description = "(Optional) A logical rule statement used to negate the results of another rule statement. See NOT Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.not_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size" {
  description = "(Required) The size, in bytes, to compare to the request part, after any transformations. Valid values are integers between 0 and 21474836480, inclusive."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_string" {
  description = "(Optional) Inspect the query string. This is the part of a URL that appears after a ? character, if any."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.query_string
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "all_query_arguments" {
  description = "(Optional) Inspect all query arguments."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.all_query_arguments
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comparison_operator" {
  description = "(Required) The operator to use to compare the request part to the size setting. Valid values include: EQ, NE, LE, LT, GE, or GT."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.comparison_operator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "geo_match_statement" {
  description = "(Optional) A rule statement used to identify web requests based on country of origin. See GEO Match Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.geo_match_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "json_body" {
  description = "(Optional) Inspect the request body as JSON. See JSON Body for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.json_body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow" {
  description = "(Optional) Instructs AWS WAF to allow the web request. See Allow below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.allow
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "(Required) The string to match against.IP Set Reference StatementA rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an aws_wafv2_ip_set that specifies the addresses you want to detect, then use the ARN of that set in this statement.The ip_set_reference_statement block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scope" {
  description = "(Required) Specify whether you want to match using the label name or just the namespace. Valid values are LABEL or NAMESPACE."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule" {
  description = "(Optional) The rule blocks used to identify the web requests that you want to allow, block, or count. See Rules below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sampled_requests_enabled" {
  description = "(Required) A boolean indicating whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.sampled_requests_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "and_statement" {
  description = "(Optional) A logical rule statement used to combine other rule statements with AND logic. See AND Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.and_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "(Required) The payload of the custom response."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "match_scope" {
  description = "(Required) The parts of the cookies to inspect with the rule inspection criteria. If you specify All, AWS WAF inspects both keys and values. Valid values: ALL, KEY, VALUE"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.match_scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "response_header" {
  description = "(Optional) The response_header blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.Custom HTTP HeaderEach block supports the following arguments. Duplicate header names are not allowed:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.response_header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "The value of the custom header.Rule LabelEach block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block" {
  description = "(Optional) Instructs AWS WAF to block the web request. See Block below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_response_body" {
  description = "(Optional) Defines custom response bodies that can be referenced by custom_response actions. See Custom Response Body below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.custom_response_body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "position" {
  description = "(Required) - The position in the header to search for the IP address. Valid values include: FIRST, LAST, or ANY. If ANY is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.HeadersInspect the request headers.The headers block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.position
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scope_down_statement" {
  description = "(Optional) An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See Statement above for details.Regex Match StatementA rule statement used to search web request components for a match against a single regular expression.The regex_match_statement block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.scope_down_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) An array of key:value pairs to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "all" {
  description = "An empty configuration block that is used for inspecting all headers."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "excluded_headers" {
  description = "An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.excluded_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "positional_constraint" {
  description = "(Required) The area within the portion of a web request that you want AWS WAF to search for search_string. Valid values include the following: EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD. See the AWS documentation for more information."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.positional_constraint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rate_based_statement" {
  description = "(Optional) A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. This statement can not be nested. See Rate Based Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.rate_based_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookies" {
  description = "(Optional) Inspect the cookies in the web request. See Cookies below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.cookies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header_name" {
  description = "(Required) - The name of the HTTP header to use for the IP address."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.header_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "visibility_config" {
  description = "(Required) Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.ActionThe action block supports the following arguments:~> strongNOTE: One of allow, block, or count, is required when specifying an action."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.visibility_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A friendly description of the rule group."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "field_to_match" {
  description = "(Required) The part of a web request that you want AWS WAF to inspect. See Field to Match below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.field_to_match
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "(Required) The relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uri_path" {
  description = "(Optional) Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.Forwarded IP ConfigThe forwarded_ip_config block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.uri_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "body" {
  description = "(Optional) Inspect the request body, which immediately follows the request headers."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "byte_match_statement" {
  description = "(Optional) A rule statement that defines a string match search for AWS WAF to apply to web requests. See Byte Match Statement below for details."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.byte_match_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) The transformation to apply, please refer to the Text Transformation documentation for more details.Visibility ConfigurationThe visibility_config block supports the following arguments:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the WAF rule group."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the WAF rule group."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.tags_all
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
      "kind/name"                   = "aws_wafv2_rule_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
