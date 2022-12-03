resource "aws_quicksight_user" "aws_quicksight_user" {
  user_role      = var.user_role
  aws_account_id = var.aws_account_id
  email          = var.email
  iam_arn        = var.iam_arn
  identity_type  = var.identity_type
  namespace      = var.namespace
  session_name   = var.session_name
  user_name      = var.user_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "session_name" {
  description = "(Optional) The name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "user_name" {
  description = "(Optional) The Amazon QuickSight user name that you want to create for the user you are registering. Only valid for registering a user with identity_type set to QUICKSIGHT."
  type        = string
  default     = ""
}
variable "user_role" {
  description = "(Required) The Amazon QuickSight role of the user. The user role can be one of the following: READER, AUTHOR, or ADMIN"
  type        = string
}
variable "aws_account_id" {
  description = "(Optional) The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account."
  type        = string
  default     = ""
}
variable "email" {
  description = "(Required) The email address of the user that you want to register."
  type        = string
}
variable "iam_arn" {
  description = "(Optional) The ARN of the IAM user or role that you are registering with Amazon QuickSight."
  type        = string
  default     = ""
}
variable "identity_type" {
  description = "(Required) Amazon QuickSight supports several ways of managing the identity of users. This parameter accepts either  IAM or QUICKSIGHT. If IAM is specified, the iam_arn must also be specified."
  type        = string
}
variable "namespace" {
  description = "  - (Optional) The Amazon Quicksight namespace to create the user in. Defaults to default."
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
output "identity_type" {
  description = "(Required) Amazon QuickSight supports several ways of managing the identity of users. This parameter accepts either  IAM or QUICKSIGHT. If IAM is specified, the iam_arn must also be specified."
  value       = aws_quicksight_user.aws_quicksight_user.identity_type
}
output "namespace" {
  description = "  - (Optional) The Amazon Quicksight namespace to create the user in. Defaults to default."
  value       = aws_quicksight_user.aws_quicksight_user.namespace
}
output "session_name" {
  description = "(Optional) The name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.In addition to all arguments above, the following attributes are exported:"
  value       = aws_quicksight_user.aws_quicksight_user.session_name
}
output "user_name" {
  description = "(Optional) The Amazon QuickSight user name that you want to create for the user you are registering. Only valid for registering a user with identity_type set to QUICKSIGHT."
  value       = aws_quicksight_user.aws_quicksight_user.user_name
}
output "user_role" {
  description = "(Required) The Amazon QuickSight role of the user. The user role can be one of the following: READER, AUTHOR, or ADMIN"
  value       = aws_quicksight_user.aws_quicksight_user.user_role
}
output "aws_account_id" {
  description = "(Optional) The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account."
  value       = aws_quicksight_user.aws_quicksight_user.aws_account_id
}
output "email" {
  description = "(Required) The email address of the user that you want to register."
  value       = aws_quicksight_user.aws_quicksight_user.email
}
output "iam_arn" {
  description = "(Optional) The ARN of the IAM user or role that you are registering with Amazon QuickSight."
  value       = aws_quicksight_user.aws_quicksight_user.iam_arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the user"
  value       = aws_quicksight_user.aws_quicksight_user.arn
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
      "kind/name"                   = "aws_quicksight_user"
      "kind/version"                = "v0.1.0"
    }
  }
}
