datasource "aws_cloudfront_cache_policy" "aws_cloudfront_cache_policy" {
  header_behavior                                 = var.header_behavior
  parameters_in_cache_key_and_forwarded_to_origin = var.parameters_in_cache_key_and_forwarded_to_origin
  query_strings_config                            = var.query_strings_config
  etag                                            = var.etag
  enable_accept_encoding_gzip                     = var.enable_accept_encoding_gzip
  headers                                         = var.headers
  max_ttl                                         = var.max_ttl
  name                                            = var.name
  cookies                                         = var.cookies
  cookie_behavior                                 = var.cookie_behavior
  headers_config                                  = var.headers_config
  min_ttl                                         = var.min_ttl
  query_string_behavior                           = var.query_string_behavior
  query_strings                                   = var.query_strings
  comment                                         = var.comment
  default_ttl                                     = var.default_ttl
  enable_accept_encoding_brotli                   = var.enable_accept_encoding_brotli
  id                                              = var.id
  cookies_config                                  = var.cookies_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
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
variable "enable_accept_encoding_brotli" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier for the cache policy.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "etag" {
  description = "Current version of the cache policy."
  type        = string
}
variable "header_behavior" {
  description = "Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  type        = string
}
variable "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  type        = string
}
variable "query_strings_config" {
  description = "Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  type        = string
}
variable "cookies" {
  description = "Object that contains a list of cookie names. See Items for more information.Headers Config"
  type        = string
}
variable "enable_accept_encoding_gzip" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  type        = string
}
variable "headers" {
  description = "Object that contains a list of header names. See Items for more information.Query String Config"
  type        = string
}
variable "max_ttl" {
  description = "Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  type        = string
}
variable "name" {
  description = "(Optional) Unique name to identify the cache policy."
  type        = string
}
variable "comment" {
  description = "Comment to describe the cache policy."
  type        = string
}
variable "cookie_behavior" {
  description = "Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  type        = string
}
variable "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  type        = string
}
variable "min_ttl" {
  description = "Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  type        = string
}
variable "query_string_behavior" {
  description = "Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  type        = string
}
variable "query_strings" {
  description = "Object that contains a list of query string names. See Items for more information.Items"
  type        = string
}
output "etag" {
  description = "Current version of the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header_behavior" {
  description = "Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.header_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.parameters_in_cache_key_and_forwarded_to_origin
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_strings_config" {
  description = "Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookies" {
  description = "Object that contains a list of cookie names. See Items for more information.Headers Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_accept_encoding_gzip" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_gzip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers" {
  description = "Object that contains a list of header names. See Items for more information.Query String Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_ttl" {
  description = "Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.max_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Unique name to identify the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_strings" {
  description = "Object that contains a list of query string names. See Items for more information.Items"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "Comment to describe the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookie_behavior" {
  description = "Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookie_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_ttl" {
  description = "Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.min_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_string_behavior" {
  description = "Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_string_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_ttl" {
  description = "Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.default_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_accept_encoding_brotli" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_brotli
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Identifier for the cache policy.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookies" {
  description = "Object that contains a list of cookie names. See Items for more information.Headers Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "Current version of the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_strings_config" {
  description = "Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "Comment to describe the cache policy."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookie_behavior" {
  description = "Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookie_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_accept_encoding_brotli" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_brotli
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_accept_encoding_gzip" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.Cookies Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.enable_accept_encoding_gzip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters_in_cache_key_and_forwarded_to_origin" {
  description = "The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.Parameters In Cache Key And Forwarded To Origin"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.parameters_in_cache_key_and_forwarded_to_origin
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.cookies_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_ttl" {
  description = "Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.default_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_ttl" {
  description = "Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.min_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_strings" {
  description = "Object that contains a list of query string names. See Items for more information.Items"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_strings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header_behavior" {
  description = "Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.header_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers" {
  description = "Object that contains a list of header names. See Items for more information.Query String Config"
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_ttl" {
  description = "Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.max_ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_string_behavior" {
  description = "Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  value       = aws_cloudfront_cache_policy.aws_cloudfront_cache_policy.query_string_behavior
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
