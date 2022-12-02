resource "aws_amplify_branch" "aws_amplify_branch" {
  custom_domains                = var.custom_domains
  environment_variables         = var.environment_variables
  ttl                           = var.ttl
  arn                           = var.arn
  destination_branch            = var.destination_branch
  display_name                  = var.display_name
  enable_performance_mode       = var.enable_performance_mode
  pull_request_environment_name = var.pull_request_environment_name
  source_branch                 = var.source_branch
  app_id                        = var.app_id
  backend_environment_arn       = var.backend_environment_arn
  branch_name                   = var.branch_name
  description                   = var.description
  enable_basic_auth             = var.enable_basic_auth
  enable_pull_request_preview   = var.enable_pull_request_preview
  framework                     = var.framework
  tags                          = var.tags
  associated_resources          = var.associated_resources
  basic_auth_credentials        = var.basic_auth_credentials
  enable_auto_build             = var.enable_auto_build
  enable_notification           = var.enable_notification
  stage                         = var.stage
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "custom_domains" {
  description = "Custom domains for the branch."
  type        = string
}
variable "environment_variables" {
  description = "(Optional) Environment variables for the branch."
  type        = string
  default     = ""
}
variable "ttl" {
  description = "(Optional) Content Time To Live (TTL) for the website in seconds.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN for the branch."
  type        = string
}
variable "destination_branch" {
  description = "Destination branch if the branch is a pull request branch."
  type        = string
}
variable "display_name" {
  description = "(Optional) Display name for a branch. This is used as the default domain prefix."
  type        = string
  default     = ""
}
variable "enable_performance_mode" {
  description = "(Optional) Enables performance mode for the branch."
  type        = string
  default     = ""
}
variable "pull_request_environment_name" {
  description = "(Optional) Amplify environment name for the pull request."
  type        = string
  default     = ""
}
variable "source_branch" {
  description = "Source branch if the branch is a pull request branch."
  type        = string
}
variable "app_id" {
  description = "(Required) Unique ID for an Amplify app."
  type        = string
}
variable "backend_environment_arn" {
  description = "(Optional) ARN for a backend environment that is part of an Amplify app."
  type        = string
  default     = ""
}
variable "branch_name" {
  description = "(Required) Name for the branch."
  type        = string
}
variable "description" {
  description = "(Optional) Description for the branch."
  type        = string
  default     = ""
}
variable "enable_basic_auth" {
  description = "(Optional) Enables basic authorization for the branch."
  type        = string
  default     = ""
}
variable "enable_pull_request_preview" {
  description = "(Optional) Enables pull request previews for this branch."
  type        = string
  default     = ""
}
variable "framework" {
  description = "(Optional) Framework for the branch."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "associated_resources" {
  description = "A list of custom resources that are linked to this branch."
  type        = string
}
variable "basic_auth_credentials" {
  description = "(Optional) Basic authorization credentials for the branch."
  type        = string
  default     = ""
}
variable "enable_auto_build" {
  description = "(Optional) Enables auto building for the branch."
  type        = string
  default     = ""
}
variable "enable_notification" {
  description = "(Optional) Enables notifications for the branch."
  type        = string
  default     = ""
}
variable "stage" {
  description = "(Optional) Describes the current stage for the branch. Valid values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST."
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
output "associated_resources" {
  description = "A list of custom resources that are linked to this branch."
  value       = aws_amplify_branch.aws_amplify_branch.associated_resources
}
output "basic_auth_credentials" {
  description = "(Optional) Basic authorization credentials for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.basic_auth_credentials
}
output "enable_auto_build" {
  description = "(Optional) Enables auto building for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.enable_auto_build
}
output "enable_notification" {
  description = "(Optional) Enables notifications for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.enable_notification
}
output "stage" {
  description = "(Optional) Describes the current stage for the branch. Valid values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST."
  value       = aws_amplify_branch.aws_amplify_branch.stage
}
output "custom_domains" {
  description = "Custom domains for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.custom_domains
}
output "environment_variables" {
  description = "(Optional) Environment variables for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.environment_variables
}
output "ttl" {
  description = "(Optional) Content Time To Live (TTL) for the website in seconds.In addition to all arguments above, the following attributes are exported:"
  value       = aws_amplify_branch.aws_amplify_branch.ttl
}
output "arn" {
  description = "ARN for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.arn
}
output "destination_branch" {
  description = "Destination branch if the branch is a pull request branch."
  value       = aws_amplify_branch.aws_amplify_branch.destination_branch
}
output "display_name" {
  description = "(Optional) Display name for a branch. This is used as the default domain prefix."
  value       = aws_amplify_branch.aws_amplify_branch.display_name
}
output "enable_performance_mode" {
  description = "(Optional) Enables performance mode for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.enable_performance_mode
}
output "pull_request_environment_name" {
  description = "(Optional) Amplify environment name for the pull request."
  value       = aws_amplify_branch.aws_amplify_branch.pull_request_environment_name
}
output "source_branch" {
  description = "Source branch if the branch is a pull request branch."
  value       = aws_amplify_branch.aws_amplify_branch.source_branch
}
output "framework" {
  description = "(Optional) Framework for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.framework
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_amplify_branch.aws_amplify_branch.tags
}
output "app_id" {
  description = "(Required) Unique ID for an Amplify app."
  value       = aws_amplify_branch.aws_amplify_branch.app_id
}
output "backend_environment_arn" {
  description = "(Optional) ARN for a backend environment that is part of an Amplify app."
  value       = aws_amplify_branch.aws_amplify_branch.backend_environment_arn
}
output "branch_name" {
  description = "(Required) Name for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.branch_name
}
output "description" {
  description = "(Optional) Description for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.description
}
output "enable_basic_auth" {
  description = "(Optional) Enables basic authorization for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.enable_basic_auth
}
output "enable_pull_request_preview" {
  description = "(Optional) Enables pull request previews for this branch."
  value       = aws_amplify_branch.aws_amplify_branch.enable_pull_request_preview
}
output "arn" {
  description = "ARN for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.arn
}
output "associated_resources" {
  description = "A list of custom resources that are linked to this branch."
  value       = aws_amplify_branch.aws_amplify_branch.associated_resources
}
output "custom_domains" {
  description = "Custom domains for the branch."
  value       = aws_amplify_branch.aws_amplify_branch.custom_domains
}
output "destination_branch" {
  description = "Destination branch if the branch is a pull request branch."
  value       = aws_amplify_branch.aws_amplify_branch.destination_branch
}
output "source_branch" {
  description = "Source branch if the branch is a pull request branch."
  value       = aws_amplify_branch.aws_amplify_branch.source_branch
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_amplify_branch.aws_amplify_branch.tags_all
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
      "kind/name"                   = "aws_amplify_branch"
      "kind/version"                = "v0.1.0"
    }
  }
}
