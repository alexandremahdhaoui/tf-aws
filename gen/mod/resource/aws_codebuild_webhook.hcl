resource "aws_codebuild_webhook" "aws_codebuild_webhook" {
  filter_group            = var.filter_group
  project_name            = var.project_name
  type                    = var.type
  payload_url             = var.payload_url
  secret                  = var.secret
  branch_filter           = var.branch_filter
  build_type              = var.build_type
  exclude_matched_pattern = var.exclude_matched_pattern
  filter                  = var.filter
  id                      = var.id
  pattern                 = var.pattern
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The name of the build project."
  type        = string
}
variable "pattern" {
  description = "(Required) For a filter that uses EVENT type, a comma-separated string that specifies one event: PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED, PULL_REQUEST_REOPENED. PULL_REQUEST_MERGED works with GitHub & GitHub Enterprise only. For a filter that uses any of the other filter types, a regular expression."
  type        = string
}
variable "payload_url" {
  description = "The CodeBuild endpoint where webhook events are sent."
  type        = string
}
variable "secret" {
  description = "The secret token of the associated repository. Not returned by the CodeBuild API for all source types."
  type        = string
}
variable "branch_filter" {
  description = "(Optional) A regular expression used to determine which branches get built. Default is all branches are built. We recommend using filter_group over branch_filter."
  type        = string
  default     = ""
}
variable "build_type" {
  description = "(Optional) The type of build this webhook will trigger. Valid values for this parameter are: BUILD, BUILD_BATCH."
  type        = string
  default     = ""
}
variable "exclude_matched_pattern" {
  description = "(Optional) If set to true, the specified filter does emnot trigger a build. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "filter" {
  description = "(Required) A webhook filter for the group. Filter blocks are documented below.filter supports the following:"
  type        = string
}
variable "filter_group" {
  description = "(Optional) Information about the webhook's trigger. Filter group blocks are documented below.filter_group supports the following:"
  type        = string
  default     = ""
}
variable "project_name" {
  description = "(Required) The name of the build project."
  type        = string
}
variable "type" {
  description = "(Required) The webhook filter group's type. Valid values for this parameter are: EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE. At least one filter group must specify EVENT as its type."
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
output "pattern" {
  description = "(Required) For a filter that uses EVENT type, a comma-separated string that specifies one event: PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED, PULL_REQUEST_REOPENED. PULL_REQUEST_MERGED works with GitHub & GitHub Enterprise only. For a filter that uses any of the other filter types, a regular expression."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.pattern
}
output "payload_url" {
  description = "The CodeBuild endpoint where webhook events are sent."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.payload_url
}
output "secret" {
  description = "The secret token of the associated repository. Not returned by the CodeBuild API for all source types."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.secret
}
output "branch_filter" {
  description = "(Optional) A regular expression used to determine which branches get built. Default is all branches are built. We recommend using filter_group over branch_filter."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.branch_filter
}
output "build_type" {
  description = "(Optional) The type of build this webhook will trigger. Valid values for this parameter are: BUILD, BUILD_BATCH."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.build_type
}
output "exclude_matched_pattern" {
  description = "(Optional) If set to true, the specified filter does emnot trigger a build. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codebuild_webhook.aws_codebuild_webhook.exclude_matched_pattern
}
output "filter" {
  description = "(Required) A webhook filter for the group. Filter blocks are documented below.filter supports the following:"
  value       = aws_codebuild_webhook.aws_codebuild_webhook.filter
}
output "id" {
  description = "The name of the build project."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.id
}
output "filter_group" {
  description = "(Optional) Information about the webhook's trigger. Filter group blocks are documented below.filter_group supports the following:"
  value       = aws_codebuild_webhook.aws_codebuild_webhook.filter_group
}
output "project_name" {
  description = "(Required) The name of the build project."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.project_name
}
output "type" {
  description = "(Required) The webhook filter group's type. Valid values for this parameter are: EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE. At least one filter group must specify EVENT as its type."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.type
}
output "url" {
  description = "The URL to the webhook.~> strongNote: The secret attribute is only set on resource creation, so if the secret is manually rotated, terraform will not pick up the change on subsequent runs.  In that case, the webhook resource should be tainted and re-created to get the secret back in sync."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.url
}
output "id" {
  description = "The name of the build project."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.id
}
output "payload_url" {
  description = "The CodeBuild endpoint where webhook events are sent."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.payload_url
}
output "secret" {
  description = "The secret token of the associated repository. Not returned by the CodeBuild API for all source types."
  value       = aws_codebuild_webhook.aws_codebuild_webhook.secret
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
      "kind/name"                   = "aws_codebuild_webhook"
      "kind/version"                = "v0.1.0"
    }
  }
}
