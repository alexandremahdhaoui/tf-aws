resource "aws_amplify_app" "aws_amplify_app" {
  name                          = var.name
  status                        = var.status
  branch_name                   = var.branch_name
  build_spec                    = var.build_spec
  iam_service_role_arn          = var.iam_service_role_arn
  source                        = var.source
  tags                          = var.tags
  access_token                  = var.access_token
  enable_branch_auto_deletion   = var.enable_branch_auto_deletion
  enable_pull_request_preview   = var.enable_pull_request_preview
  enable_branch_auto_build      = var.enable_branch_auto_build
  production_branch             = var.production_branch
  arn                           = var.arn
  custom_rule                   = var.custom_rule
  enable_auto_branch_creation   = var.enable_auto_branch_creation
  platform                      = var.platform
  repository                    = var.repository
  stage                         = var.stage
  tags_all                      = var.tags_all
  target                        = var.target
  auto_branch_creation_config   = var.auto_branch_creation_config
  enable_basic_auth             = var.enable_basic_auth
  framework                     = var.framework
  id                            = var.id
  pull_request_environment_name = var.pull_request_environment_name
  auto_branch_creation_patterns = var.auto_branch_creation_patterns
  default_domain                = var.default_domain
  description                   = var.description
  environment_variables         = var.environment_variables
  last_deploy_time              = var.last_deploy_time
  basic_auth_credentials        = var.basic_auth_credentials
  condition                     = var.condition
  enable_performance_mode       = var.enable_performance_mode
  enable_auto_build             = var.enable_auto_build
  oauth_token                   = var.oauth_token
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "source" {
  description = "(Required) Source pattern for a URL rewrite or redirect rule."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.An auto_branch_creation_config block supports the following arguments:"
  type        = string
  default     = ""
}
variable "access_token" {
  description = "(Optional) Personal access token for a third-party source control system for an Amplify app. The personal access token is used to create a webhook and a read-only deploy key. The token is not stored."
  type        = string
  default     = ""
}
variable "enable_branch_auto_deletion" {
  description = "(Optional) Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository."
  type        = string
  default     = ""
}
variable "enable_pull_request_preview" {
  description = "(Optional) Enables pull request previews for the autocreated branch."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Amplify app."
  type        = string
}
variable "custom_rule" {
  description = "(Optional) Custom rewrite and redirect rules for an Amplify app. A custom_rule block is documented below."
  type        = string
  default     = ""
}
variable "enable_auto_branch_creation" {
  description = "(Optional) Enables automated branch creation for an Amplify app."
  type        = string
  default     = ""
}
variable "enable_branch_auto_build" {
  description = "(Optional) Enables auto-building of branches for the Amplify App."
  type        = string
  default     = ""
}
variable "production_branch" {
  description = "Describes the information about a production branch for an Amplify app. A production_branch block is documented below."
  type        = string
}
variable "target" {
  description = "(Required) Target pattern for a URL rewrite or redirect rule.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "auto_branch_creation_config" {
  description = "(Optional) Automated branch creation configuration for an Amplify app. An auto_branch_creation_config block is documented below."
  type        = string
  default     = ""
}
variable "enable_basic_auth" {
  description = "(Optional) Enables basic authorization for the autocreated branch."
  type        = string
  default     = ""
}
variable "framework" {
  description = "(Optional) Framework for the autocreated branch."
  type        = string
  default     = ""
}
variable "platform" {
  description = "(Optional) Platform or framework for an Amplify app. Valid values: WEB."
  type        = string
  default     = ""
}
variable "repository" {
  description = "(Optional) Repository for an Amplify app."
  type        = string
  default     = ""
}
variable "stage" {
  description = "(Optional) Describes the current stage for the autocreated branch. Valid values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST.A custom_rule block supports the following arguments:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A production_branch block supports the following attributes:"
  type        = string
}
variable "auto_branch_creation_patterns" {
  description = "(Optional) Automated branch creation glob patterns for an Amplify app."
  type        = string
  default     = ""
}
variable "default_domain" {
  description = "Default domain for the Amplify app."
  type        = string
}
variable "description" {
  description = "(Optional) Description for an Amplify app."
  type        = string
  default     = ""
}
variable "id" {
  description = "Unique ID of the Amplify app."
  type        = string
}
variable "pull_request_environment_name" {
  description = "(Optional) Amplify environment name for the pull request."
  type        = string
  default     = ""
}
variable "basic_auth_credentials" {
  description = "(Optional) Basic authorization credentials for the autocreated branch."
  type        = string
  default     = ""
}
variable "condition" {
  description = "(Optional) Condition for a URL rewrite or redirect rule, such as a country code."
  type        = string
  default     = ""
}
variable "enable_performance_mode" {
  description = "(Optional) Enables performance mode for the branch."
  type        = string
  default     = ""
}
variable "environment_variables" {
  description = "(Optional) Environment variables for the autocreated branch."
  type        = string
  default     = ""
}
variable "last_deploy_time" {
  description = "Last deploy time of the production branch."
  type        = string
}
variable "enable_auto_build" {
  description = "(Optional) Enables auto building for the autocreated branch."
  type        = string
  default     = ""
}
variable "oauth_token" {
  description = "(Optional) OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored."
  type        = string
  default     = ""
}
variable "branch_name" {
  description = "Branch name for the production branch."
  type        = string
}
variable "build_spec" {
  description = "(Optional) Build specification (build spec) for the autocreated branch."
  type        = string
  default     = ""
}
variable "iam_service_role_arn" {
  description = "(Optional) AWS Identity and Access Management (IAM) service role for an Amplify app."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name for an Amplify app."
  type        = string
}
variable "status" {
  description = "Status of the production branch."
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
output "last_deploy_time" {
  description = "Last deploy time of the production branch."
  value       = aws_amplify_app.aws_amplify_app.last_deploy_time
}
output "basic_auth_credentials" {
  description = "(Optional) Basic authorization credentials for the autocreated branch."
  value       = aws_amplify_app.aws_amplify_app.basic_auth_credentials
}
output "condition" {
  description = "(Optional) Condition for a URL rewrite or redirect rule, such as a country code."
  value       = aws_amplify_app.aws_amplify_app.condition
}
output "enable_performance_mode" {
  description = "(Optional) Enables performance mode for the branch."
  value       = aws_amplify_app.aws_amplify_app.enable_performance_mode
}
output "environment_variables" {
  description = "(Optional) Environment variables for the autocreated branch."
  value       = aws_amplify_app.aws_amplify_app.environment_variables
}
output "enable_auto_build" {
  description = "(Optional) Enables auto building for the autocreated branch."
  value       = aws_amplify_app.aws_amplify_app.enable_auto_build
}
output "oauth_token" {
  description = "(Optional) OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored."
  value       = aws_amplify_app.aws_amplify_app.oauth_token
}
output "status" {
  description = "Status of the production branch."
  value       = aws_amplify_app.aws_amplify_app.status
}
output "branch_name" {
  description = "Branch name for the production branch."
  value       = aws_amplify_app.aws_amplify_app.branch_name
}
output "build_spec" {
  description = "(Optional) Build specification (build spec) for the autocreated branch."
  value       = aws_amplify_app.aws_amplify_app.build_spec
}
output "iam_service_role_arn" {
  description = "(Optional) AWS Identity and Access Management (IAM) service role for an Amplify app."
  value       = aws_amplify_app.aws_amplify_app.iam_service_role_arn
}
output "name" {
  description = "(Required) Name for an Amplify app."
  value       = aws_amplify_app.aws_amplify_app.name
}
output "source" {
  description = "(Required) Source pattern for a URL rewrite or redirect rule."
  value       = aws_amplify_app.aws_amplify_app.source
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.An auto_branch_creation_config block supports the following arguments:"
  value       = aws_amplify_app.aws_amplify_app.tags
}
output "access_token" {
  description = "(Optional) Personal access token for a third-party source control system for an Amplify app. The personal access token is used to create a webhook and a read-only deploy key. The token is not stored."
  value       = aws_amplify_app.aws_amplify_app.access_token
}
output "enable_branch_auto_deletion" {
  description = "(Optional) Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository."
  value       = aws_amplify_app.aws_amplify_app.enable_branch_auto_deletion
}
output "enable_pull_request_preview" {
  description = "(Optional) Enables pull request previews for the autocreated branch."
  value       = aws_amplify_app.aws_amplify_app.enable_pull_request_preview
}
output "production_branch" {
  description = "Describes the information about a production branch for an Amplify app. A production_branch block is documented below."
  value       = aws_amplify_app.aws_amplify_app.production_branch
}
output "arn" {
  description = "ARN of the Amplify app."
  value       = aws_amplify_app.aws_amplify_app.arn
}
output "custom_rule" {
  description = "(Optional) Custom rewrite and redirect rules for an Amplify app. A custom_rule block is documented below."
  value       = aws_amplify_app.aws_amplify_app.custom_rule
}
output "enable_auto_branch_creation" {
  description = "(Optional) Enables automated branch creation for an Amplify app."
  value       = aws_amplify_app.aws_amplify_app.enable_auto_branch_creation
}
output "enable_branch_auto_build" {
  description = "(Optional) Enables auto-building of branches for the Amplify App."
  value       = aws_amplify_app.aws_amplify_app.enable_branch_auto_build
}
output "repository" {
  description = "(Optional) Repository for an Amplify app."
  value       = aws_amplify_app.aws_amplify_app.repository
}
output "stage" {
  description = "(Optional) Describes the current stage for the autocreated branch. Valid values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST.A custom_rule block supports the following arguments:"
  value       = aws_amplify_app.aws_amplify_app.stage
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A production_branch block supports the following attributes:"
  value       = aws_amplify_app.aws_amplify_app.tags_all
}
output "target" {
  description = "(Required) Target pattern for a URL rewrite or redirect rule.In addition to all arguments above, the following attributes are exported:"
  value       = aws_amplify_app.aws_amplify_app.target
}
output "auto_branch_creation_config" {
  description = "(Optional) Automated branch creation configuration for an Amplify app. An auto_branch_creation_config block is documented below."
  value       = aws_amplify_app.aws_amplify_app.auto_branch_creation_config
}
output "enable_basic_auth" {
  description = "(Optional) Enables basic authorization for the autocreated branch."
  value       = aws_amplify_app.aws_amplify_app.enable_basic_auth
}
output "framework" {
  description = "(Optional) Framework for the autocreated branch."
  value       = aws_amplify_app.aws_amplify_app.framework
}
output "platform" {
  description = "(Optional) Platform or framework for an Amplify app. Valid values: WEB."
  value       = aws_amplify_app.aws_amplify_app.platform
}
output "pull_request_environment_name" {
  description = "(Optional) Amplify environment name for the pull request."
  value       = aws_amplify_app.aws_amplify_app.pull_request_environment_name
}
output "auto_branch_creation_patterns" {
  description = "(Optional) Automated branch creation glob patterns for an Amplify app."
  value       = aws_amplify_app.aws_amplify_app.auto_branch_creation_patterns
}
output "default_domain" {
  description = "Default domain for the Amplify app."
  value       = aws_amplify_app.aws_amplify_app.default_domain
}
output "description" {
  description = "(Optional) Description for an Amplify app."
  value       = aws_amplify_app.aws_amplify_app.description
}
output "id" {
  description = "Unique ID of the Amplify app."
  value       = aws_amplify_app.aws_amplify_app.id
}
output "default_domain" {
  description = "Default domain for the Amplify app."
  value       = aws_amplify_app.aws_amplify_app.default_domain
}
output "last_deploy_time" {
  description = "Last deploy time of the production branch."
  value       = aws_amplify_app.aws_amplify_app.last_deploy_time
}
output "production_branch" {
  description = "Describes the information about a production branch for an Amplify app. A production_branch block is documented below."
  value       = aws_amplify_app.aws_amplify_app.production_branch
}
output "thumbnail_url" {
  description = "Thumbnail URL for the production branch."
  value       = aws_amplify_app.aws_amplify_app.thumbnail_url
}
output "branch_name" {
  description = "Branch name for the production branch."
  value       = aws_amplify_app.aws_amplify_app.branch_name
}
output "id" {
  description = "Unique ID of the Amplify app."
  value       = aws_amplify_app.aws_amplify_app.id
}
output "status" {
  description = "Status of the production branch."
  value       = aws_amplify_app.aws_amplify_app.status
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A production_branch block supports the following attributes:"
  value       = aws_amplify_app.aws_amplify_app.tags_all
}
output "arn" {
  description = "ARN of the Amplify app."
  value       = aws_amplify_app.aws_amplify_app.arn
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
      "kind/name"                   = "aws_amplify_app"
      "kind/version"                = "v0.1.0"
    }
  }
}
