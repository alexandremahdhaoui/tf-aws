resource "aws_cloudfront_origin_request_policy" "aws_cloudfront_origin_request_policy" {
  headers_config       = var.headers_config
  name                 = var.name
  query_strings_config = var.query_strings_config
  comment              = var.comment
  cookies_config       = var.cookies_config
  etag                 = var.etag
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "comment" {
  description = "(Optional) Comment to describe the origin request policy."
  type        = string
}
variable "cookies_config" {
  description = "(Required) Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  type        = string
}
variable "etag" {
  description = "The current version of the origin request policy."
  type        = string
}
variable "headers_config" {
  description = "(Required) Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  type        = string
}
variable "name" {
  description = "(Required) Unique name to identify the origin request policy."
  type        = string
}
variable "query_strings_config" {
  description = "(Required) Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.Cookies Configcookie_behavior(Required) Determines whether any cookies in viewer requests are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist allcookies(Optional) Object that contains a list of cookie names. See Items for more information.Headers Configheader_behavior(Required) Determines whether any HTTP headers are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allViewer, allViewerAndWhitelistCloudFrontheaders(Optional) Object that contains a list of header names. See Items for more information.Query String Configquery_string_behavior(Required) Determines whether any URL query strings in viewer requests are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allquery_strings(Optional) Object that contains a list of query string names. See Items for more information.Itemsitems(Required) List of item names (cookies, headers, or query strings).In addition to all arguments above, the following attributes are exported:"
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
output "comment" {
  description = "(Optional) Comment to describe the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cookies_config" {
  description = "(Required) Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.cookies_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "The current version of the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "headers_config" {
  description = "(Required) Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.headers_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Unique name to identify the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_strings_config" {
  description = "(Required) Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.Cookies Configcookie_behavior(Required) Determines whether any cookies in viewer requests are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist allcookies(Optional) Object that contains a list of cookie names. See Items for more information.Headers Configheader_behavior(Required) Determines whether any HTTP headers are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allViewer, allViewerAndWhitelistCloudFrontheaders(Optional) Object that contains a list of header names. See Items for more information.Query String Configquery_string_behavior(Required) Determines whether any URL query strings in viewer requests are included in the origin request key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allquery_strings(Optional) Object that contains a list of query string names. See Items for more information.Itemsitems(Required) List of item names (cookies, headers, or query strings).In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.query_strings_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "The current version of the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier for the origin request policy."
  value       = aws_cloudfront_origin_request_policy.aws_cloudfront_origin_request_policy.id
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
      "kind/name"                   = "aws_cloudfront_origin_request_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
