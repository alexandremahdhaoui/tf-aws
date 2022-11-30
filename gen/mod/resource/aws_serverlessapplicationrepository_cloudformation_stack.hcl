resource "aws_serverlessapplicationrepository_cloudformation_stack" "aws_serverlessapplicationrepository_cloudformation_stack" {
  parameters       = var.parameters
  semantic_version = var.semantic_version
  tags             = var.tags
  application_id   = var.application_id
  capabilities     = var.capabilities
  id               = var.id
  name             = var.name
  outputs          = var.outputs
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "application_id" {
  description = "(Required) The ARN of the application from the Serverless Application Repository."
  type        = string
}
variable "capabilities" {
  description = "(Required) A list of capabilities. Valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_RESOURCE_POLICY, or CAPABILITY_AUTO_EXPAND"
  type        = string
}
variable "id" {
  description = "A unique identifier of the stack."
  type        = string
}
variable "name" {
  description = "(Required) The name of the stack to create. The resource deployed in AWS will be prefixed with serverlessrepo-"
  type        = string
}
variable "outputs" {
  description = "A map of outputs from the stack."
  type        = string
}
variable "parameters" {
  description = "(Optional) A map of Parameter structures that specify input parameters for the stack."
  type        = string
}
variable "semantic_version" {
  description = "(Optional) The version of the application to deploy. If not supplied, deploys the latest version."
  type        = string
}
variable "tags" {
  description = "(Optional) A list of tags to associate with this stack. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "semantic_version" {
  description = "(Optional) The version of the application to deploy. If not supplied, deploys the latest version."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.semantic_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A list of tags to associate with this stack. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_id" {
  description = "(Required) The ARN of the application from the Serverless Application Repository."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.application_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capabilities" {
  description = "(Required) A list of capabilities. Valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_RESOURCE_POLICY, or CAPABILITY_AUTO_EXPAND"
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.capabilities
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "A unique identifier of the stack."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the stack to create. The resource deployed in AWS will be prefixed with serverlessrepo-"
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outputs" {
  description = "A map of outputs from the stack."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.outputs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters" {
  description = "(Optional) A map of Parameter structures that specify input parameters for the stack."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "A unique identifier of the stack."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outputs" {
  description = "A map of outputs from the stack."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.outputs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_serverlessapplicationrepository_cloudformation_stack.aws_serverlessapplicationrepository_cloudformation_stack.tags_all
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
      "kind/name"                   = "aws_serverlessapplicationrepository_cloudformation_stack"
      "kind/version"                = "v0.1.0"
    }
  }
}
