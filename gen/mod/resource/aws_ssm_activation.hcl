resource "aws_ssm_activation" "aws_ssm_activation" {
  description        = var.description
  expired            = var.expired
  id                 = var.id
  name               = var.name
  tags               = var.tags
  activation_code    = var.activation_code
  expiration_date    = var.expiration_date
  iam_role           = var.iam_role
  registration_count = var.registration_count
  registration_limit = var.registration_limit
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "registration_limit" {
  description = "The maximum number of managed instances you want to be registered. The default value is 1 instance."
  type        = string
}
variable "activation_code" {
  description = "The code the system generates when it processes the activation."
  type        = string
}
variable "expiration_date" {
  description = "The date by which this activation request should expire. The default value is 24 hours."
  type        = string
}
variable "iam_role" {
  description = "The IAM Role attached to the managed instance."
  type        = string
}
variable "registration_count" {
  description = "The number of managed instances that are currently registered using this activation."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "description" {
  description = "The description of the resource that was registered."
  type        = string
}
variable "expired" {
  description = "If the current activation has expired."
  type        = string
}
variable "id" {
  description = "The activation ID."
  type        = string
}
variable "name" {
  description = "The default name of the registered managed instance."
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
output "id" {
  description = "The activation ID."
  value       = aws_ssm_activation.aws_ssm_activation.id
}
output "name" {
  description = "The default name of the registered managed instance."
  value       = aws_ssm_activation.aws_ssm_activation.name
}
output "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_activation.aws_ssm_activation.tags
}
output "description" {
  description = "The description of the resource that was registered."
  value       = aws_ssm_activation.aws_ssm_activation.description
}
output "expired" {
  description = "If the current activation has expired."
  value       = aws_ssm_activation.aws_ssm_activation.expired
}
output "iam_role" {
  description = "The IAM Role attached to the managed instance."
  value       = aws_ssm_activation.aws_ssm_activation.iam_role
}
output "registration_count" {
  description = "The number of managed instances that are currently registered using this activation."
  value       = aws_ssm_activation.aws_ssm_activation.registration_count
}
output "registration_limit" {
  description = "The maximum number of managed instances you want to be registered. The default value is 1 instance."
  value       = aws_ssm_activation.aws_ssm_activation.registration_limit
}
output "activation_code" {
  description = "The code the system generates when it processes the activation."
  value       = aws_ssm_activation.aws_ssm_activation.activation_code
}
output "expiration_date" {
  description = "The date by which this activation request should expire. The default value is 24 hours."
  value       = aws_ssm_activation.aws_ssm_activation.expiration_date
}
output "expired" {
  description = "If the current activation has expired."
  value       = aws_ssm_activation.aws_ssm_activation.expired
}
output "iam_role" {
  description = "The IAM Role attached to the managed instance."
  value       = aws_ssm_activation.aws_ssm_activation.iam_role
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ssm_activation.aws_ssm_activation.tags_all
}
output "id" {
  description = "The activation ID."
  value       = aws_ssm_activation.aws_ssm_activation.id
}
output "name" {
  description = "The default name of the registered managed instance."
  value       = aws_ssm_activation.aws_ssm_activation.name
}
output "registration_count" {
  description = "The number of managed instances that are currently registered using this activation."
  value       = aws_ssm_activation.aws_ssm_activation.registration_count
}
output "registration_limit" {
  description = "The maximum number of managed instances you want to be registered. The default value is 1 instance."
  value       = aws_ssm_activation.aws_ssm_activation.registration_limit
}
output "activation_code" {
  description = "The code the system generates when it processes the activation."
  value       = aws_ssm_activation.aws_ssm_activation.activation_code
}
output "description" {
  description = "The description of the resource that was registered."
  value       = aws_ssm_activation.aws_ssm_activation.description
}
output "expiration_date" {
  description = "The date by which this activation request should expire. The default value is 24 hours."
  value       = aws_ssm_activation.aws_ssm_activation.expiration_date
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
      "kind/name"                   = "aws_ssm_activation"
      "kind/version"                = "v0.1.0"
    }
  }
}
