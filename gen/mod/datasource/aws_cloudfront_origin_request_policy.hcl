datasource "aws_cloudfront_origin_request_policy" "aws_cloudfront_origin_request_policy" {
  id             = var.id
  name           = var.name
  comment        = var.comment
  cookies_config = var.cookies_config
  etag           = var.etag
  headers_config = var.headers_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  type        = string
}
variable "etag" {
  description = "Current version of the origin request policy."
  type        = string
}
variable "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  type        = string
}
variable "id" {
  description = "Identifier for the origin request policy.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "Unique name to identify the origin request policy."
  type        = string
}
variable "comment" {
  description = "Comment to describe the origin request policy."
  type        = string
}
output "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.headers_config
}
output "id" {
  description = "Identifier for the origin request policy.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.id
}
output "name" {
  description = "Unique name to identify the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.name
}
output "comment" {
  description = "Comment to describe the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.comment
}
output "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.cookies_config
}
output "etag" {
  description = "Current version of the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.etag
}
output "query_strings_config" {
  description = "Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.Cookies Configcookie_behaviorDetermines whether any cookies in viewer requests are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist allcookiesObject that contains a list of cookie names. See Items for more information.Headers Configheader_behaviorDetermines whether any HTTP headers are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allViewer, allViewerAndWhitelistCloudFrontheadersObject that contains a list of header names. See Items for more information.Query String Configquery_string_behaviorDetermines whether any URL query strings in viewer requests are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allquery_stringsObject that contains a list of query string names. See Items for more information."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.query_strings_config
}
output "comment" {
  description = "Comment to describe the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.comment
}
output "cookies_config" {
  description = "Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.cookies_config
}
output "etag" {
  description = "Current version of the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.etag
}
output "headers_config" {
  description = "Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.headers_config
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
