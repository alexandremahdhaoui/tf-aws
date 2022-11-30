datasource "aws_cloudfront_response_headers_policy" "aws_cloudfront_response_headers_policy" {
  report_uri                       = var.report_uri
  strict_transport_security        = var.strict_transport_security
  access_control_expose_headers    = var.access_control_expose_headers
  id                               = var.id
  enabled                          = var.enabled
  frame_options                    = var.frame_options
  referrer_policy                  = var.referrer_policy
  value                            = var.value
  xss_protection                   = var.xss_protection
  content_security_policy          = var.content_security_policy
  cors_config                      = var.cors_config
  preload                          = var.preload
  server_timing_headers_config     = var.server_timing_headers_config
  access_control_allow_credentials = var.access_control_allow_credentials
  header                           = var.header
  access_control_allow_origins     = var.access_control_allow_origins
  access_control_max_age_sec       = var.access_control_max_age_sec
  content_type_options             = var.content_type_options
  etag                             = var.etag
  frame_option                     = var.frame_option
  include_subdomains               = var.include_subdomains
  access_control_allow_headers     = var.access_control_allow_headers
  access_control_allow_methods     = var.access_control_allow_methods
  name                             = var.name
  override                         = var.override
  security_headers_config          = var.security_headers_config
  mode_block                       = var.mode_block
  protection                       = var.protection
  comment                          = var.comment
  custom_headers_config            = var.custom_headers_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "custom_headers_config" {
  description = "Object that contains an attribute items that contains a list of Custom Headers See Custom Header for more information."
  type        = string
}
variable "mode_block" {
  description = "Whether CloudFront includes the mode=block directive in the X-XSS-Protection header."
  type        = string
}
variable "protection" {
  description = "Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0."
  type        = string
}
variable "comment" {
  description = "Comment to describe the response headers policy. The comment cannot be longer than 128 characters."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier for the response headers policy.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "report_uri" {
  description = "Whether CloudFront sets a reporting URI in the X-XSS-Protection header.Server Timing Headers Config"
  type        = string
}
variable "strict_transport_security" {
  description = "Settings that determine whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information."
  type        = string
}
variable "access_control_expose_headers" {
  description = "Object that contains an attribute items that contains a list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header."
  type        = string
}
variable "cors_config" {
  description = "Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information."
  type        = string
}
variable "enabled" {
  description = "Whether CloudFront adds the Server-Timing header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy."
  type        = string
}
variable "frame_options" {
  description = "Setting that determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value. See Frame Options for more information."
  type        = string
}
variable "referrer_policy" {
  description = "Value of the Referrer-Policy HTTP response header. Valid Values: no-referrer | no-referrer-when-downgrade | origin | origin-when-cross-origin | same-origin | strict-origin | strict-origin-when-cross-origin | unsafe-url"
  type        = string
}
variable "value" {
  description = "Value for the HTTP response header.Security Headers Config"
  type        = string
}
variable "xss_protection" {
  description = "Settings that determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.Content Security Policy"
  type        = string
}
variable "content_security_policy" {
  description = "The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header."
  type        = string
}
variable "header" {
  description = "HTTP response header name."
  type        = string
}
variable "preload" {
  description = "Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.XSS Protection"
  type        = string
}
variable "server_timing_headers_config" {
  description = "(Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.Cors Config"
  type        = string
}
variable "access_control_allow_credentials" {
  description = "A Boolean value that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header."
  type        = string
}
variable "access_control_allow_methods" {
  description = "Object that contains an attribute items that contains a list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header. Valid values: GET | POST | OPTIONS | PUT | DELETE | HEAD | ALL"
  type        = string
}
variable "access_control_allow_origins" {
  description = "Object that contains an attribute items that contains a list of origins that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header."
  type        = string
}
variable "access_control_max_age_sec" {
  description = "A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header."
  type        = string
}
variable "content_type_options" {
  description = "A setting that determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff. See Content Type Options for more information."
  type        = string
}
variable "etag" {
  description = "Current version of the response headers policy."
  type        = string
}
variable "frame_option" {
  description = "Value of the X-Frame-Options HTTP response header. Valid values: DENY | SAMEORIGIN"
  type        = string
}
variable "include_subdomains" {
  description = "Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header."
  type        = string
}
variable "access_control_allow_headers" {
  description = "Object that contains an attribute items that contains a list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header."
  type        = string
}
variable "override" {
  description = "Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy."
  type        = string
}
variable "name" {
  description = "(Optional) Unique name to identify the response headers policy."
  type        = string
}
variable "security_headers_config" {
  description = "A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information."
  type        = string
}
output "security_headers_config" {
  description = "A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.security_headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "Comment to describe the response headers policy. The comment cannot be longer than 128 characters."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_headers_config" {
  description = "Object that contains an attribute items that contains a list of Custom Headers See Custom Header for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.custom_headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mode_block" {
  description = "Whether CloudFront includes the mode=block directive in the X-XSS-Protection header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.mode_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protection" {
  description = "Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_expose_headers" {
  description = "Object that contains an attribute items that contains a list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_expose_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Identifier for the response headers policy.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "report_uri" {
  description = "Whether CloudFront sets a reporting URI in the X-XSS-Protection header.Server Timing Headers Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.report_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "strict_transport_security" {
  description = "Settings that determine whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.strict_transport_security
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value for the HTTP response header.Security Headers Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "xss_protection" {
  description = "Settings that determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.Content Security Policy"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.xss_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_security_policy" {
  description = "The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.content_security_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cors_config" {
  description = "Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.cors_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "Whether CloudFront adds the Server-Timing header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "frame_options" {
  description = "Setting that determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value. See Frame Options for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.frame_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "referrer_policy" {
  description = "Value of the Referrer-Policy HTTP response header. Valid Values: no-referrer | no-referrer-when-downgrade | origin | origin-when-cross-origin | same-origin | strict-origin | strict-origin-when-cross-origin | unsafe-url"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.referrer_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_credentials" {
  description = "A Boolean value that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_credentials
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header" {
  description = "HTTP response header name."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preload" {
  description = "Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.XSS Protection"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.preload
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "server_timing_headers_config" {
  description = "(Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.Cors Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.server_timing_headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "Current version of the response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "frame_option" {
  description = "Value of the X-Frame-Options HTTP response header. Valid values: DENY | SAMEORIGIN"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.frame_option
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "include_subdomains" {
  description = "Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.include_subdomains
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_headers" {
  description = "Object that contains an attribute items that contains a list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_methods" {
  description = "Object that contains an attribute items that contains a list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header. Valid values: GET | POST | OPTIONS | PUT | DELETE | HEAD | ALL"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_methods
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_origins" {
  description = "Object that contains an attribute items that contains a list of origins that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_origins
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_max_age_sec" {
  description = "A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_max_age_sec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_type_options" {
  description = "A setting that determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff. See Content Type Options for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.content_type_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Unique name to identify the response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "override" {
  description = "Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.override
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "Current version of the response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "report_uri" {
  description = "Whether CloudFront sets a reporting URI in the X-XSS-Protection header.Server Timing Headers Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.report_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_credentials" {
  description = "A Boolean value that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_credentials
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_headers_config" {
  description = "Object that contains an attribute items that contains a list of Custom Headers See Custom Header for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.custom_headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header" {
  description = "HTTP response header name."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mode_block" {
  description = "Whether CloudFront includes the mode=block directive in the X-XSS-Protection header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.mode_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "override" {
  description = "Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.override
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_origins" {
  description = "Object that contains an attribute items that contains a list of origins that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_origins
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_security_policy" {
  description = "The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.content_security_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protection" {
  description = "Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "referrer_policy" {
  description = "Value of the Referrer-Policy HTTP response header. Valid Values: no-referrer | no-referrer-when-downgrade | origin | origin-when-cross-origin | same-origin | strict-origin | strict-origin-when-cross-origin | unsafe-url"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.referrer_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value for the HTTP response header.Security Headers Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_expose_headers" {
  description = "Object that contains an attribute items that contains a list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_expose_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "Whether CloudFront adds the Server-Timing header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "include_subdomains" {
  description = "Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.include_subdomains
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "xss_protection" {
  description = "Settings that determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.Content Security Policy"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.xss_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_headers" {
  description = "Object that contains an attribute items that contains a list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_max_age_sec" {
  description = "A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_max_age_sec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "strict_transport_security" {
  description = "Settings that determine whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.strict_transport_security
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "Comment to describe the response headers policy. The comment cannot be longer than 128 characters."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preload" {
  description = "Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.XSS Protection"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.preload
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cors_config" {
  description = "Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.cors_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "frame_option" {
  description = "Value of the X-Frame-Options HTTP response header. Valid values: DENY | SAMEORIGIN"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.frame_option
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "frame_options" {
  description = "Setting that determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value. See Frame Options for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.frame_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_headers_config" {
  description = "A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.security_headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "server_timing_headers_config" {
  description = "(Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.Cors Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.server_timing_headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_allow_methods" {
  description = "Object that contains an attribute items that contains a list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header. Valid values: GET | POST | OPTIONS | PUT | DELETE | HEAD | ALL"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_methods
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_type_options" {
  description = "A setting that determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff. See Content Type Options for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.content_type_options
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
}
