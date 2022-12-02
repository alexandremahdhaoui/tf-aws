resource "aws_elastic_beanstalk_configuration_template" "aws_elastic_beanstalk_configuration_template" {
  value               = var.value
  description         = var.description
  environment_id      = var.environment_id
  name                = var.name
  namespace           = var.namespace
  solution_stack_name = var.solution_stack_name
  application         = var.application
  option_settings     = var.option_settings
  resource            = var.resource
  setting             = var.setting
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "application" {
  description = ""
  type        = string
}
variable "option_settings" {
  description = ""
  type        = string
}
variable "resource" {
  description = "(Optional) resource name for scheduled actionIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "setting" {
  description = "Option Settings"
  type        = string
}
variable "solution_stack_name" {
  description = "Amazon API documentationOption SettingsThe setting field supports the following format:"
  type        = string
}
variable "description" {
  description = ""
  type        = string
}
variable "environment_id" {
  description = ""
  type        = string
}
variable "name" {
  description = ""
  type        = string
}
variable "namespace" {
  description = "unique namespace identifying the option's associated AWS resource"
  type        = string
}
variable "value" {
  description = "value for the configuration option"
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
output "environment_id" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.environment_id
}
output "name" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.name
}
output "namespace" {
  description = "unique namespace identifying the option's associated AWS resource"
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.namespace
}
output "value" {
  description = "value for the configuration option"
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.value
}
output "description" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.description
}
output "option_settings" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.option_settings
}
output "resource" {
  description = "(Optional) resource name for scheduled actionIn addition to all arguments above, the following attributes are exported:"
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.resource
}
output "setting" {
  description = "Option Settings"
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.setting
}
output "solution_stack_name" {
  description = "Amazon API documentationOption SettingsThe setting field supports the following format:"
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.solution_stack_name
}
output "application" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.application
}
output "option_settings" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.option_settings
}
output "application" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.application
}
output "description" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.description
}
output "environment_id" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.environment_id
}
output "name" {
  description = ""
  value       = aws_elastic_beanstalk_configuration_template.aws_elastic_beanstalk_configuration_template.name
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
      "kind/name"                   = "aws_elastic_beanstalk_configuration_template"
      "kind/version"                = "v0.1.0"
    }
  }
}
