resource "aws_iam_role" "aws_iam_role" {
  description           = var.description
  force_detach_policies = var.force_detach_policies
  name                  = var.name
  policy                = var.policy
  tags                  = var.tags
  name_prefix           = var.name_prefix
  path                  = var.path
  permissions_boundary  = var.permissions_boundary
  unique_id             = var.unique_id
  create_date           = var.create_date
  inline_policy         = var.inline_policy
  managed_policy_arns   = var.managed_policy_arns
  tags_all              = var.tags_all
  arn                   = var.arn
  id                    = var.id
  max_session_duration  = var.max_session_duration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique friendly name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) Path to the role. See IAM Identifiers for more information."
  type        = string
  default     = ""
}
variable "permissions_boundary" {
  description = "(Optional) ARN of the policy that is used to set the permissions boundary for the role."
  type        = string
  default     = ""
}
variable "unique_id" {
  description = "Stable and unique string identifying the role."
  type        = string
  default     = ""
}
variable "create_date" {
  description = "Creation date of the IAM role."
  type        = string
  default     = ""
}
variable "inline_policy" {
  description = "(Optional) Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Terraform will not manage any inline policies in this resource. Configuring one empty block (i.e., inline_policy {}) will cause Terraform to remove emall inline policies added out of band on apply."
  type        = string
  default     = ""
}
variable "managed_policy_arns" {
  description = "(Optional) Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., managed_policy_arns = []) will cause Terraform to remove emall managed policy attachments."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) specifying the role."
  type        = string
  default     = ""
}
variable "id" {
  description = "Name of the role."
  type        = string
  default     = ""
}
variable "max_session_duration" {
  description = "(Optional) Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the role."
  type        = string
  default     = ""
}
variable "force_detach_policies" {
  description = "(Optional) Whether to force detaching any policies the role has before destroying it. Defaults to false."
  type        = string
  default     = ""
}
variable "name" {
  description = "Name of the role."
  type        = string
  default     = ""
}
variable "policy" {
  description = "(Required) Policy document as a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "Key-value mapping of tags for the IAM role. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.inline_policyThis configuration block supports the following:~> strongNOTE: Since one empty block (i.e., inline_policy {}) is valid syntactically to remove out of band policies on apply, name and policy are technically emoptional. However, they are both emrequired in order to manage actual inline policies. Not including one or the other may not result in Terraform errors but will result in unpredictable and incorrect behavior."
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
output "max_session_duration" {
  description = "(Optional) Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  value       = aws_iam_role.aws_iam_role.max_session_duration
}
output "arn" {
  description = "Amazon Resource Name (ARN) specifying the role."
  value       = aws_iam_role.aws_iam_role.arn
}
output "id" {
  description = "Name of the role."
  value       = aws_iam_role.aws_iam_role.id
}
output "name" {
  description = "Name of the role."
  value       = aws_iam_role.aws_iam_role.name
}
output "policy" {
  description = "(Required) Policy document as a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.In addition to all arguments above, the following attributes are exported:"
  value       = aws_iam_role.aws_iam_role.policy
}
output "tags" {
  description = "Key-value mapping of tags for the IAM role. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.inline_policyThis configuration block supports the following:~> strongNOTE: Since one empty block (i.e., inline_policy {}) is valid syntactically to remove out of band policies on apply, name and policy are technically emoptional. However, they are both emrequired in order to manage actual inline policies. Not including one or the other may not result in Terraform errors but will result in unpredictable and incorrect behavior."
  value       = aws_iam_role.aws_iam_role.tags
}
output "description" {
  description = "(Optional) Description of the role."
  value       = aws_iam_role.aws_iam_role.description
}
output "force_detach_policies" {
  description = "(Optional) Whether to force detaching any policies the role has before destroying it. Defaults to false."
  value       = aws_iam_role.aws_iam_role.force_detach_policies
}
output "permissions_boundary" {
  description = "(Optional) ARN of the policy that is used to set the permissions boundary for the role."
  value       = aws_iam_role.aws_iam_role.permissions_boundary
}
output "unique_id" {
  description = "Stable and unique string identifying the role."
  value       = aws_iam_role.aws_iam_role.unique_id
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique friendly name beginning with the specified prefix. Conflicts with name."
  value       = aws_iam_role.aws_iam_role.name_prefix
}
output "path" {
  description = "(Optional) Path to the role. See IAM Identifiers for more information."
  value       = aws_iam_role.aws_iam_role.path
}
output "managed_policy_arns" {
  description = "(Optional) Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., managed_policy_arns = []) will cause Terraform to remove emall managed policy attachments."
  value       = aws_iam_role.aws_iam_role.managed_policy_arns
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_iam_role.aws_iam_role.tags_all
}
output "create_date" {
  description = "Creation date of the IAM role."
  value       = aws_iam_role.aws_iam_role.create_date
}
output "inline_policy" {
  description = "(Optional) Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Terraform will not manage any inline policies in this resource. Configuring one empty block (i.e., inline_policy {}) will cause Terraform to remove emall inline policies added out of band on apply."
  value       = aws_iam_role.aws_iam_role.inline_policy
}
output "arn" {
  description = "Amazon Resource Name (ARN) specifying the role."
  value       = aws_iam_role.aws_iam_role.arn
}
output "create_date" {
  description = "Creation date of the IAM role."
  value       = aws_iam_role.aws_iam_role.create_date
}
output "id" {
  description = "Name of the role."
  value       = aws_iam_role.aws_iam_role.id
}
output "name" {
  description = "Name of the role."
  value       = aws_iam_role.aws_iam_role.name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_iam_role.aws_iam_role.tags_all
}
output "unique_id" {
  description = "Stable and unique string identifying the role."
  value       = aws_iam_role.aws_iam_role.unique_id
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
      "kind/name"                   = "aws_iam_role"
      "kind/version"                = "v0.1.0"
    }
  }
}
