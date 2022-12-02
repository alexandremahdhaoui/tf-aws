resource "aws_iam_service_linked_role" "aws_iam_service_linked_role" {
  path             = var.path
  tags             = var.tags
  arn              = var.arn
  aws_service_name = var.aws_service_name
  custom_suffix    = var.custom_suffix
  description      = var.description
  id               = var.id
  name             = var.name
  create_date      = var.create_date
  unique_id        = var.unique_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create_date" {
  description = "The creation date of the IAM role."
  type        = string
}
variable "unique_id" {
  description = "The stable and unique string identifying the role."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) specifying the role."
  type        = string
}
variable "aws_service_name" {
  description = "(Required, Forces new resource) The AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: elasticbeanstalk.amazonaws.com. To find the full list of services that support service-linked roles, check the docs."
  type        = string
}
variable "custom_suffix" {
  description = "(Optional, forces new resource) Additional string appended to the role name. Not all AWS services support custom suffixes."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the role."
  type        = string
  default     = ""
}
variable "id" {
  description = "The Amazon Resource Name (ARN) of the role."
  type        = string
}
variable "name" {
  description = "The name of the role."
  type        = string
}
variable "path" {
  description = "The path of the role."
  type        = string
}
variable "tags" {
  description = "Key-value mapping of tags for the IAM role. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "aws_service_name" {
  description = "(Required, Forces new resource) The AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: elasticbeanstalk.amazonaws.com. To find the full list of services that support service-linked roles, check the docs."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.aws_service_name
}
output "custom_suffix" {
  description = "(Optional, forces new resource) Additional string appended to the role name. Not all AWS services support custom suffixes."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.custom_suffix
}
output "description" {
  description = "(Optional) The description of the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.description
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.id
}
output "name" {
  description = "The name of the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.name
}
output "path" {
  description = "The path of the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.path
}
output "tags" {
  description = "Key-value mapping of tags for the IAM role. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.tags
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.arn
}
output "unique_id" {
  description = "The stable and unique string identifying the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.unique_id
}
output "create_date" {
  description = "The creation date of the IAM role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.create_date
}
output "create_date" {
  description = "The creation date of the IAM role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.create_date
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.id
}
output "name" {
  description = "The name of the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.name
}
output "path" {
  description = "The path of the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.path
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.tags_all
}
output "unique_id" {
  description = "The stable and unique string identifying the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.unique_id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the role."
  value       = aws_iam_service_linked_role.aws_iam_service_linked_role.arn
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
      "kind/name"                   = "aws_iam_service_linked_role"
      "kind/version"                = "v0.1.0"
    }
  }
}
