resource "aws_s3_bucket_website_configuration" "aws_s3_bucket_website_configuration" {
  suffix                          = var.suffix
  id                              = var.id
  redirect                        = var.redirect
  replace_key_with                = var.replace_key_with
  index_document                  = var.index_document
  protocol                        = var.protocol
  redirect_all_requests_to        = var.redirect_all_requests_to
  replace_key_prefix_with         = var.replace_key_prefix_with
  website_domain                  = var.website_domain
  error_document                  = var.error_document
  expected_bucket_owner           = var.expected_bucket_owner
  host_name                       = var.host_name
  http_redirect_code              = var.http_redirect_code
  bucket                          = var.bucket
  condition                       = var.condition
  http_error_code_returned_equals = var.http_error_code_returned_equals
  routing_rules                   = var.routing_rules
  key                             = var.key
  key_prefix_equals               = var.key_prefix_equals
  routing_rule                    = var.routing_rule
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  type        = string
}
variable "redirect" {
  description = "(Required) A configuration block for redirect information detailed below.conditionThe condition configuration block supports the following arguments:"
  type        = string
}
variable "replace_key_with" {
  description = "(Optional, Conflicts with replace_key_prefix_with) The specific object key to use in the redirect request. For example, redirect request to error.html.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "suffix" {
  description = "index.html and you make a request to samplebucket/images/, the data that is returned will be for the object with the key name images/index.htmlredirect_all_requests_toThe redirect_all_requests_to configuration block supports the following arguments:"
  type        = string
}
variable "website_domain" {
  description = "The domain of the website endpoint. This is used to create Route 53 alias records."
  type        = string
}
variable "error_document" {
  description = "(Optional, Conflicts with redirect_all_requests_to) The name of the error document for the website detailed below."
  type        = string
}
variable "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
  type        = string
}
variable "host_name" {
  description = "(Optional) The host name to use in the redirect request."
  type        = string
}
variable "index_document" {
  description = "(Optional, Required if redirect_all_requests_to is not specified) The name of the index document for the website detailed below."
  type        = string
}
variable "protocol" {
  description = "(Optional) Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: http, https."
  type        = string
}
variable "redirect_all_requests_to" {
  description = "(Optional, Required if index_document is not specified) The redirect behavior for every request to this bucket's website endpoint detailed below. Conflicts with error_document, index_document, and routing_rule."
  type        = string
}
variable "replace_key_prefix_with" {
  description = "(Optional, Conflicts with replace_key_with) The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix docs/ (objects in the docs/ folder) to documents/, you can set a condition block with key_prefix_equals set to docs/ and in the redirect set replace_key_prefix_with to /documents."
  type        = string
}
variable "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  type        = string
}
variable "condition" {
  description = "(Optional) A configuration block for describing a condition that must be met for the specified redirect to apply detailed below."
  type        = string
}
variable "http_error_code_returned_equals" {
  description = "(Optional, Required if key_prefix_equals is not specified) The HTTP error code when the redirect is applied. If specified with key_prefix_equals, then both must be true for the redirect to be applied."
  type        = string
}
variable "http_redirect_code" {
  description = "(Optional) The HTTP redirect code to use on the response."
  type        = string
}
variable "key" {
  description = "(Required) The object key name to use when a 4XX class error occurs.index_documentThe index_document configuration block supports the following arguments:"
  type        = string
}
variable "key_prefix_equals" {
  description = "(Optional, Required if http_error_code_returned_equals is not specified) The object key name prefix when the redirect is applied. If specified with http_error_code_returned_equals, then both must be true for the redirect to be applied.redirectThe redirect configuration block supports the following arguments:"
  type        = string
}
variable "routing_rule" {
  description = "(Optional, Conflicts with redirect_all_requests_to and routing_rules) List of rules that define when a redirect is applied and the redirect behavior detailed below."
  type        = string
}
variable "routing_rules" {
  description = "(Optional, Conflicts with routing_rule and redirect_all_requests_to) A json array containing routing rules\"\") as seen in the example above.error_documentThe error_document configuration block supports the following arguments:"
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
output "routing_rules" {
  description = "(Optional, Conflicts with routing_rule and redirect_all_requests_to) A json array containing routing rules\"\") as seen in the example above.error_documentThe error_document configuration block supports the following arguments:"
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.routing_rules
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "(Required) The object key name to use when a 4XX class error occurs.index_documentThe index_document configuration block supports the following arguments:"
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_prefix_equals" {
  description = "(Optional, Required if http_error_code_returned_equals is not specified) The object key name prefix when the redirect is applied. If specified with http_error_code_returned_equals, then both must be true for the redirect to be applied.redirectThe redirect configuration block supports the following arguments:"
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.key_prefix_equals
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "routing_rule" {
  description = "(Optional, Conflicts with redirect_all_requests_to and routing_rules) List of rules that define when a redirect is applied and the redirect behavior detailed below."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.routing_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "suffix" {
  description = "index.html and you make a request to samplebucket/images/, the data that is returned will be for the object with the key name images/index.htmlredirect_all_requests_toThe redirect_all_requests_to configuration block supports the following arguments:"
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "redirect" {
  description = "(Required) A configuration block for redirect information detailed below.conditionThe condition configuration block supports the following arguments:"
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.redirect
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replace_key_with" {
  description = "(Optional, Conflicts with replace_key_prefix_with) The specific object key to use in the redirect request. For example, redirect request to error.html.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.replace_key_with
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "index_document" {
  description = "(Optional, Required if redirect_all_requests_to is not specified) The name of the index document for the website detailed below."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.index_document
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protocol" {
  description = "(Optional) Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: http, https."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "redirect_all_requests_to" {
  description = "(Optional, Required if index_document is not specified) The redirect behavior for every request to this bucket's website endpoint detailed below. Conflicts with error_document, index_document, and routing_rule."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.redirect_all_requests_to
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replace_key_prefix_with" {
  description = "(Optional, Conflicts with replace_key_with) The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix docs/ (objects in the docs/ folder) to documents/, you can set a condition block with key_prefix_equals set to docs/ and in the redirect set replace_key_prefix_with to /documents."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.replace_key_prefix_with
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website_domain" {
  description = "The domain of the website endpoint. This is used to create Route 53 alias records."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.website_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_document" {
  description = "(Optional, Conflicts with redirect_all_requests_to) The name of the error document for the website detailed below."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.error_document
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.expected_bucket_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "host_name" {
  description = "(Optional) The host name to use in the redirect request."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.host_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_redirect_code" {
  description = "(Optional) The HTTP redirect code to use on the response."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.http_redirect_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "condition" {
  description = "(Optional) A configuration block for describing a condition that must be met for the specified redirect to apply detailed below."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.condition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_error_code_returned_equals" {
  description = "(Optional, Required if key_prefix_equals is not specified) The HTTP error code when the redirect is applied. If specified with key_prefix_equals, then both must be true for the redirect to be applied."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.http_error_code_returned_equals
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website_domain" {
  description = "The domain of the website endpoint. This is used to create Route 53 alias records."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.website_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website_endpoint" {
  description = "The website endpoint."
  value       = aws_s3_bucket_website_configuration.aws_s3_bucket_website_configuration.website_endpoint
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
      "kind/name"                   = "aws_s3_bucket_website_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
