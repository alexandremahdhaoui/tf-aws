resource "aws_cloudfront_response_headers_policy" "aws_cloudfront_response_headers_policy" {
  access_control_expose_headers    = var.access_control_expose_headers
  access_control_max_age_sec       = var.access_control_max_age_sec
  name                             = var.name
  sampling_rate                    = var.sampling_rate
  frame_options                    = var.frame_options
  header                           = var.header
  mode_block                       = var.mode_block
  override                         = var.override
  xss_protection                   = var.xss_protection
  custom_headers_config            = var.custom_headers_config
  content_security_policy          = var.content_security_policy
  origin_override                  = var.origin_override
  preload                          = var.preload
  referrer_policy                  = var.referrer_policy
  server_timing_headers_config     = var.server_timing_headers_config
  value                            = var.value
  access_control_allow_methods     = var.access_control_allow_methods
  cors_config                      = var.cors_config
  enabled                          = var.enabled
  frame_option                     = var.frame_option
  report_uri                       = var.report_uri
  strict_transport_security        = var.strict_transport_security
  access_control_allow_headers     = var.access_control_allow_headers
  access_control_allow_origins     = var.access_control_allow_origins
  comment                          = var.comment
  content_type_options             = var.content_type_options
  include_subdomains               = var.include_subdomains
  access_control_allow_credentials = var.access_control_allow_credentials
  etag                             = var.etag
  protection                       = var.protection
  security_headers_config          = var.security_headers_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "access_control_expose_headers" {
  description = "(Optional) Object that contains an attribute items that contains a list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header."
  type        = string
  default     = ""
}
variable "access_control_max_age_sec" {
  description = "(Required) A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header."
  type        = string
}
variable "name" {
  description = "(Required) A unique name to identify the response headers policy."
  type        = string
}
variable "sampling_rate" {
  description = "(Required) A number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the Server-Timing header to. Valid range: Minimum value of 0.0. Maximum value of 100.0.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "frame_options" {
  description = "(Optional) Determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value. See Frame Options for more information."
  type        = string
  default     = ""
}
variable "header" {
  description = "(Required) The HTTP response header name."
  type        = string
}
variable "mode_block" {
  description = "(Required) Whether CloudFront includes the mode=block directive in the X-XSS-Protection header."
  type        = string
}
variable "override" {
  description = "(Required) Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy."
  type        = string
}
variable "xss_protection" {
  description = "(Optional) Determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.Content Security Policy"
  type        = string
  default     = ""
}
variable "custom_headers_config" {
  description = "(Optional) Object that contains an attribute items that contains a list of custom headers. See Custom Header for more information."
  type        = string
  default     = ""
}
variable "content_security_policy" {
  description = "(Required) The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header."
  type        = string
}
variable "origin_override" {
  description = "(Required) A Boolean value that determines how CloudFront behaves for the HTTP response header.Custom Header"
  type        = string
}
variable "preload" {
  description = "(Optional) Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.XSS Protection"
  type        = string
  default     = ""
}
variable "referrer_policy" {
  description = "(Required) The value of the Referrer-Policy HTTP response header. Valid Values: no-referrer | no-referrer-when-downgrade | origin | origin-when-cross-origin | same-origin | strict-origin | strict-origin-when-cross-origin | unsafe-url"
  type        = string
}
variable "server_timing_headers_config" {
  description = "(Optional) A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.Cors Config"
  type        = string
  default     = ""
}
variable "access_control_allow_methods" {
  description = "(Required) Object that contains an attribute items that contains a list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header. Valid values: GET | POST | OPTIONS | PUT | DELETE | HEAD | ALL"
  type        = string
}
variable "cors_config" {
  description = "(Optional) A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Required) A Whether CloudFront adds the Server-Timing header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy."
  type        = string
}
variable "frame_option" {
  description = "(Required) The value of the X-Frame-Options HTTP response header. Valid values: DENY | SAMEORIGIN"
  type        = string
}
variable "report_uri" {
  description = "(Optional) A reporting URI, which CloudFront uses as the value of the report directive in the X-XSS-Protection header. You cannot specify a report_uri when mode_block is true.Server Timing Headers Config"
  type        = string
  default     = ""
}
variable "strict_transport_security" {
  description = "(Optional) Determines whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) The value for the HTTP response header.Security Headers Config"
  type        = string
}
variable "access_control_allow_headers" {
  description = "(Required) Object that contains an attribute items that contains a list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header."
  type        = string
}
variable "access_control_allow_origins" {
  description = "(Required) Object that contains an attribute items that contains a list of origins that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header."
  type        = string
}
variable "comment" {
  description = "(Optional) A comment to describe the response headers policy. The comment cannot be longer than 128 characters."
  type        = string
  default     = ""
}
variable "content_type_options" {
  description = "(Optional) Determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff. See Content Type Options for more information."
  type        = string
  default     = ""
}
variable "include_subdomains" {
  description = "(Optional) Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header."
  type        = string
  default     = ""
}
variable "access_control_allow_credentials" {
  description = "(Required) A Boolean value that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header."
  type        = string
}
variable "etag" {
  description = "The current version of the response headers policy."
  type        = string
}
variable "protection" {
  description = "(Required) A Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0."
  type        = string
}
variable "security_headers_config" {
  description = "(Optional) A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information."
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
output "custom_headers_config" {
  description = "(Optional) Object that contains an attribute items that contains a list of custom headers. See Custom Header for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.custom_headers_config
}
output "content_security_policy" {
  description = "(Required) The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.content_security_policy
}
output "origin_override" {
  description = "(Required) A Boolean value that determines how CloudFront behaves for the HTTP response header.Custom Header"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.origin_override
}
output "preload" {
  description = "(Optional) Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.XSS Protection"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.preload
}
output "referrer_policy" {
  description = "(Required) The value of the Referrer-Policy HTTP response header. Valid Values: no-referrer | no-referrer-when-downgrade | origin | origin-when-cross-origin | same-origin | strict-origin | strict-origin-when-cross-origin | unsafe-url"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.referrer_policy
}
output "server_timing_headers_config" {
  description = "(Optional) A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.Cors Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.server_timing_headers_config
}
output "access_control_allow_methods" {
  description = "(Required) Object that contains an attribute items that contains a list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header. Valid values: GET | POST | OPTIONS | PUT | DELETE | HEAD | ALL"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_methods
}
output "cors_config" {
  description = "(Optional) A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.cors_config
}
output "enabled" {
  description = "(Required) A Whether CloudFront adds the Server-Timing header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.enabled
}
output "frame_option" {
  description = "(Required) The value of the X-Frame-Options HTTP response header. Valid values: DENY | SAMEORIGIN"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.frame_option
}
output "report_uri" {
  description = "(Optional) A reporting URI, which CloudFront uses as the value of the report directive in the X-XSS-Protection header. You cannot specify a report_uri when mode_block is true.Server Timing Headers Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.report_uri
}
output "strict_transport_security" {
  description = "(Optional) Determines whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.strict_transport_security
}
output "value" {
  description = "(Required) The value for the HTTP response header.Security Headers Config"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.value
}
output "access_control_allow_headers" {
  description = "(Required) Object that contains an attribute items that contains a list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_headers
}
output "access_control_allow_origins" {
  description = "(Required) Object that contains an attribute items that contains a list of origins that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_origins
}
output "comment" {
  description = "(Optional) A comment to describe the response headers policy. The comment cannot be longer than 128 characters."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.comment
}
output "content_type_options" {
  description = "(Optional) Determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff. See Content Type Options for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.content_type_options
}
output "include_subdomains" {
  description = "(Optional) Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.include_subdomains
}
output "access_control_allow_credentials" {
  description = "(Required) A Boolean value that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_allow_credentials
}
output "etag" {
  description = "The current version of the response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.etag
}
output "protection" {
  description = "(Required) A Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.protection
}
output "security_headers_config" {
  description = "(Optional) A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.security_headers_config
}
output "access_control_expose_headers" {
  description = "(Optional) Object that contains an attribute items that contains a list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_expose_headers
}
output "access_control_max_age_sec" {
  description = "(Required) A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.access_control_max_age_sec
}
output "name" {
  description = "(Required) A unique name to identify the response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.name
}
output "sampling_rate" {
  description = "(Required) A number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the Server-Timing header to. Valid range: Minimum value of 0.0. Maximum value of 100.0.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.sampling_rate
}
output "frame_options" {
  description = "(Optional) Determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value. See Frame Options for more information."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.frame_options
}
output "header" {
  description = "(Required) The HTTP response header name."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.header
}
output "mode_block" {
  description = "(Required) Whether CloudFront includes the mode=block directive in the X-XSS-Protection header."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.mode_block
}
output "override" {
  description = "(Required) Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.override
}
output "xss_protection" {
  description = "(Optional) Determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.Content Security Policy"
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.xss_protection
}
output "etag" {
  description = "The current version of the response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.etag
}
output "id" {
  description = "The identifier for the response headers policy."
  value       = aws_cloudfront_response_headers_policy.aws_cloudfront_response_headers_policy.id
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
      "kind/name"                   = "aws_cloudfront_response_headers_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
