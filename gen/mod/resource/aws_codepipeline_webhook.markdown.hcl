resource "aws_codepipeline_webhook.markdown" "aws_codepipeline_webhook.markdown" {
  match_equals                 = var.match_equals
  name                         = var.name
  target_action                = var.target_action
  filter                       = var.filter
  secret_token                 = var.secret_token
  tags_all                     = var.tags_all
  allowed_ip_range             = var.allowed_ip_range
  arn                          = var.arn
  target_pipeline              = var.target_pipeline
  json_path                    = var.json_path
  tags                         = var.tags
  authentication               = var.authentication
  authentication_configuration = var.authentication_configuration
  id                           = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = " (Required) One or more filter blocks. Filter blocks are documented below."
  type        = string
}
variable "secret_token" {
  description = "(Optional) The shared secret for the GitHub repository webhook. Set this as secret in your github_repository_webhook's configuration block. Required for GITHUB_HMAC."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "allowed_ip_range" {
  description = "(Optional) A valid CIDR block for IP filtering. Required for IP.A filter block supports the following arguments:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The CodePipeline webhook's ARN."
  type        = string
}
variable "target_pipeline" {
  description = "(Required) The name of the pipeline."
  type        = string
}
variable "authentication" {
  description = "(Required) The type of authentication  to use. One of IP, GITHUB_HMAC, or UNAUTHENTICATED."
  type        = string
}
variable "authentication_configuration" {
  description = "(Optional) An auth block. Required for IP and GITHUB_HMAC. Auth blocks are documented below."
  type        = string
  default     = ""
}
variable "id" {
  description = "The CodePipeline webhook's ARN."
  type        = string
}
variable "json_path" {
  description = "(Required) The JSON path to filter on."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.An authentication_configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "match_equals" {
  description = "(Required) The value to match on (e.g., refs/heads/{Branch}). See AWS docs for details.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "(Required) The name of the webhook."
  type        = string
}
variable "target_action" {
  description = "(Required) The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline."
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
output "filter" {
  description = " (Required) One or more filter blocks. Filter blocks are documented below."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.filter
}
output "secret_token" {
  description = "(Optional) The shared secret for the GitHub repository webhook. Set this as secret in your github_repository_webhook's configuration block. Required for GITHUB_HMAC."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.secret_token
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.tags_all
}
output "allowed_ip_range" {
  description = "(Optional) A valid CIDR block for IP filtering. Required for IP.A filter block supports the following arguments:"
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.allowed_ip_range
}
output "arn" {
  description = "The CodePipeline webhook's ARN."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.arn
}
output "target_pipeline" {
  description = "(Required) The name of the pipeline."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.target_pipeline
}
output "authentication" {
  description = "(Required) The type of authentication  to use. One of IP, GITHUB_HMAC, or UNAUTHENTICATED."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.authentication
}
output "authentication_configuration" {
  description = "(Optional) An auth block. Required for IP and GITHUB_HMAC. Auth blocks are documented below."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.authentication_configuration
}
output "id" {
  description = "The CodePipeline webhook's ARN."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.id
}
output "json_path" {
  description = "(Required) The JSON path to filter on."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.json_path
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.An authentication_configuration block supports the following arguments:"
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.tags
}
output "match_equals" {
  description = "(Required) The value to match on (e.g., refs/heads/{Branch}). See AWS docs for details.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.match_equals
}
output "name" {
  description = "(Required) The name of the webhook."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.name
}
output "target_action" {
  description = "(Required) The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.target_action
}
output "arn" {
  description = "The CodePipeline webhook's ARN."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.arn
}
output "id" {
  description = "The CodePipeline webhook's ARN."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.tags_all
}
output "url" {
  description = "The CodePipeline webhook's URL. POST events to this endpoint to trigger the target."
  value       = aws_codepipeline_webhook.markdown.aws_codepipeline_webhook.markdown.url
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
      "kind/name"                   = "aws_codepipeline_webhook.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
