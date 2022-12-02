datasource "aws_cloudfront_cache_policy" "aws_cloudfront_cache_policy" {
  cookie_behavior                                 = var.cookie_behavior
  etag                                            = var.etag
  query_string_behavior                           = var.query_string_behavior
  comment                                         = var.comment
  cookies                                         = var.cookies
  headers                                         = var.headers
  min_ttl                                         = var.min_ttl
  query_strings                                   = var.query_strings
  query_strings_config                            = var.query_strings_config
  enable_accept_encoding_brotli                   = var.enable_accept_encoding_brotli
  enable_accept_encoding_gzip                     = var.enable_accept_encoding_gzip
  header_behavior                                 = var.header_behavior
  headers_config                                  = var.headers_config
  cookies_config                                  = var.cookies_config
  default_ttl                                     = var.default_ttl
  id                                              = var.id
  max_ttl                                         = var.max_ttl
  name                                            = var.name
  parameters_in_cache_key_and_forwarded_to_origin = var.parameters_in_cache_key_and_forwarded_to_origin
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "comment" {
  description = "Comment to describe the cache policy."
  type        = string
}
variable "cookies" {
  description = "Object that contains a list of cookie names. See Items for more information.Headers Config"
  type        = string
}
variable "headers" {
  description = "Object that contains a list of header names. See Items for more information.Query String Config"
  type        = string
}
variable "min_ttl" {
  description = "Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  type        = string
}
variable "query_strings" {
  description = "Object that contains a list of query string names. See Items for more information.Items"
  type        = string
}
variable "query_strings_config" {
  description = "Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  type        = string
}
variable "enable_accept_encoding_brotli" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  type        = string
}
variable "enable_accept_encoding_gzip" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  type        = string
}
variable "header_behavior" {
  description = "Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  type        = string
}
variable "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  type        = string
}
variable "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  type        = string
}
variable "default_ttl" {
  description = "Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier for the cache policy.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "max_ttl" {
  description = "Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  type        = string
}
variable "name" {
  description = "(Optional) Unique name to identify the cache policy."
  type        = string
  default     = ""
}
variable "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  type        = string
}
variable "cookie_behavior" {
  description = "Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  type        = string
}
variable "etag" {
  description = "Current version of the cache policy."
  type        = string
}
variable "query_string_behavior" {
  description = "Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  type        = string
}
output "enable_accept_encoding_brotli" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_brotli
}
output "enable_accept_encoding_gzip" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_gzip
}
output "header_behavior" {
  description = "Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.header_behavior
}
output "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers_config
}
output "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies_config
}
output "default_ttl" {
  description = "Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.default_ttl
}
output "id" {
  description = "(Optional) Identifier for the cache policy.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.id
}
output "max_ttl" {
  description = "Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.max_ttl
}
output "name" {
  description = "(Optional) Unique name to identify the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.name
}
output "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.parameters_in_cache_key_and_forwarded_to_origin
}
output "cookie_behavior" {
  description = "Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookie_behavior
}
output "etag" {
  description = "Current version of the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.etag
}
output "query_string_behavior" {
  description = "Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_string_behavior
}
output "comment" {
  description = "Comment to describe the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.comment
}
output "cookies" {
  description = "Object that contains a list of cookie names. See Items for more information.Headers Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies
}
output "headers" {
  description = "Object that contains a list of header names. See Items for more information.Query String Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers
}
output "min_ttl" {
  description = "Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.min_ttl
}
output "query_strings" {
  description = "Object that contains a list of query string names. See Items for more information.Items"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings
}
output "query_strings_config" {
  description = "Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings_config
}
output "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies_config
}
output "enable_accept_encoding_brotli" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_brotli
}
output "etag" {
  description = "Current version of the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.etag
}
output "min_ttl" {
  description = "Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.min_ttl
}
output "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.parameters_in_cache_key_and_forwarded_to_origin
}
output "cookies" {
  description = "Object that contains a list of cookie names. See Items for more information.Headers Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies
}
output "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers_config
}
output "query_strings" {
  description = "Object that contains a list of query string names. See Items for more information.Items"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings
}
output "enable_accept_encoding_gzip" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_gzip
}
output "max_ttl" {
  description = "Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.max_ttl
}
output "query_strings_config" {
  description = "Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings_config
}
output "comment" {
  description = "Comment to describe the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.comment
}
output "cookie_behavior" {
  description = "Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookie_behavior
}
output "default_ttl" {
  description = "Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.default_ttl
}
output "header_behavior" {
  description = "Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.header_behavior
}
output "headers" {
  description = "Object that contains a list of header names. See Items for more information.Query String Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers
}
output "query_string_behavior" {
  description = "Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_string_behavior
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
}
