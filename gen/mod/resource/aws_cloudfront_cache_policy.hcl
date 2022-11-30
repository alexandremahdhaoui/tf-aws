resource "aws_cloudfront_cache_policy" "aws_cloudfront_cache_policy" {
  default_ttl                                     = var.default_ttl
  enable_accept_encoding_gzip                     = var.enable_accept_encoding_gzip
  header_behavior                                 = var.header_behavior
  headers                                         = var.headers
  headers_config                                  = var.headers_config
  max_ttl                                         = var.max_ttl
  name                                            = var.name
  cookie_behavior                                 = var.cookie_behavior
  cookies_config                                  = var.cookies_config
  etag                                            = var.etag
  parameters_in_cache_key_and_forwarded_to_origin = var.parameters_in_cache_key_and_forwarded_to_origin
  query_strings_config                            = var.query_strings_config
  query_string_behavior                           = var.query_string_behavior
  query_strings                                   = var.query_strings
  comment                                         = var.comment
  enable_accept_encoding_brotli                   = var.enable_accept_encoding_brotli
  items                                           = var.items
  cookies                                         = var.cookies
  min_ttl                                         = var.min_ttl
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "default_ttl" {
  description = "(Optional) The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  type        = string
}
variable "enable_accept_encoding_gzip" {
  description = "(Optional) A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  type        = string
}
variable "name" {
  description = "(Required) A unique name to identify the cache policy."
  type        = string
}
variable "cookie_behavior" {
  description = "(Required) Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  type        = string
}
variable "cookies_config" {
  description = "(Required) Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  type        = string
}
variable "etag" {
  description = "The current version of the cache policy."
  type        = string
}
variable "header_behavior" {
  description = "(Required) Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  type        = string
}
variable "headers" {
  description = "(Optional) Object that contains a list of header names. See Items for more information.Query String Config"
  type        = string
}
variable "headers_config" {
  description = "(Required) Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  type        = string
}
variable "max_ttl" {
  description = "(Optional) The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  type        = string
}
variable "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "(Required) The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  type        = string
}
variable "query_strings_config" {
  description = "(Required) Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  type        = string
}
variable "comment" {
  description = "(Optional) A comment to describe the cache policy."
  type        = string
}
variable "enable_accept_encoding_brotli" {
  description = "(Optional) A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  type        = string
}
variable "items" {
  description = "(Required) A list of item names (cookies, headers, or query strings).In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "query_string_behavior" {
  description = "(Required) Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  type        = string
}
variable "query_strings" {
  description = "(Optional) Object that contains a list of query string names. See Items for more information.Items"
  type        = string
}
variable "cookies" {
  description = "(Optional) Object that contains a list of cookie names. See Items for more information.Headers Config"
  type        = string
}
variable "min_ttl" {
  description = "(Required) The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
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
output "cookies" {
  description = "(Optional) Object that contains a list of cookie names. See Items for more information.Headers Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_ttl" {
  description = "(Required) The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.min_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_ttl" {
  description = "(Optional) The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.default_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_accept_encoding_gzip" {
  description = "(Optional) A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_gzip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers" {
  description = "(Optional) Object that contains a list of header names. See Items for more information.Query String Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers_config" {
  description = "(Required) Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_ttl" {
  description = "(Optional) The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.max_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) A unique name to identify the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookie_behavior" {
  description = "(Required) Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookie_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookies_config" {
  description = "(Required) Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "The current version of the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header_behavior" {
  description = "(Required) Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.header_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "(Required) The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.parameters_in_cache_key_and_forwarded_to_origin
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_strings_config" {
  description = "(Required) Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_strings" {
  description = "(Optional) Object that contains a list of query string names. See Items for more information.Items"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "(Optional) A comment to describe the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_accept_encoding_brotli" {
  description = "(Optional) A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_brotli
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "items" {
  description = "(Required) A list of item names (cookies, headers, or query strings).In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.items
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_string_behavior" {
  description = "(Required) Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_string_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "The current version of the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier for the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.id
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
      "kind/name"                   = "aws_cloudfront_cache_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
