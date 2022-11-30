resource "aws_appconfig_configuration_profile" "aws_appconfig_configuration_profile" {
  name                     = var.name
  tags                     = var.tags
  type                     = var.type
  configuration_profile_id = var.configuration_profile_id
  arn                      = var.arn
  content                  = var.content
  description              = var.description
  id                       = var.id
  location_uri             = var.location_uri
  retrieval_role_arn       = var.retrieval_role_arn
  validator                = var.validator
  application_id           = var.application_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "content" {
  description = "(Optional, Required when type is LAMBDA) Either the JSON Schema content or the ARN of an AWS Lambda function."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the configuration profile. Can be at most 1024 characters."
  type        = string
}
variable "id" {
  description = "AppConfig configuration profile ID and application ID separated by a colon (:)."
  type        = string
}
variable "location_uri" {
  description = "(Required, Forces new resource) URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify hosted. For an SSM document, specify either the document name in the format ssm-document://<Document_name> or the ARN. For a parameter, specify either the parameter name in the format ssm-parameter://<Parameter_name> or the ARN. For an Amazon S3 object, specify the URI in the following format: s3://<bucket>/<objectKey>."
  type        = string
}
variable "retrieval_role_arn" {
  description = "(Optional) ARN of an IAM role with permission to access the configuration at the specified location_uri. A retrieval role ARN is not required for configurations stored in the AWS AppConfig hosted configuration store. It is required for all other sources that store your configuration."
  type        = string
}
variable "validator" {
  description = "(Optional) Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.ValidatorThe validator block supports the following:"
  type        = string
}
variable "application_id" {
  description = "(Required, Forces new resource) Application ID. Must be between 4 and 7 characters in length."
  type        = string
}
variable "arn" {
  description = "ARN of the AppConfig Configuration Profile."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "type" {
  description = "(Optional) Type of validator. Valid values: JSON_SCHEMA and LAMBDA.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "configuration_profile_id" {
  description = "The configuration profile ID."
  type        = string
}
variable "name" {
  description = "(Required) Name for the configuration profile. Must be between 1 and 64 characters in length."
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
output "validator" {
  description = "(Optional) Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.ValidatorThe validator block supports the following:"
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.validator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_id" {
  description = "(Required, Forces new resource) Application ID. Must be between 4 and 7 characters in length."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.application_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the AppConfig Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "(Optional, Required when type is LAMBDA) Either the JSON Schema content or the ARN of an AWS Lambda function."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the configuration profile. Can be at most 1024 characters."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AppConfig configuration profile ID and application ID separated by a colon (:)."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location_uri" {
  description = "(Required, Forces new resource) URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify hosted. For an SSM document, specify either the document name in the format ssm-document://<Document_name> or the ARN. For a parameter, specify either the parameter name in the format ssm-parameter://<Parameter_name> or the ARN. For an Amazon S3 object, specify the URI in the following format: s3://<bucket>/<objectKey>."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.location_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retrieval_role_arn" {
  description = "(Optional) ARN of an IAM role with permission to access the configuration at the specified location_uri. A retrieval role ARN is not required for configurations stored in the AWS AppConfig hosted configuration store. It is required for all other sources that store your configuration."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.retrieval_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_profile_id" {
  description = "The configuration profile ID."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.configuration_profile_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name for the configuration profile. Must be between 1 and 64 characters in length."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) Type of validator. Valid values: JSON_SCHEMA and LAMBDA.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the AppConfig Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_profile_id" {
  description = "The configuration profile ID."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.configuration_profile_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AppConfig configuration profile ID and application ID separated by a colon (:)."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.tags_all
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
      "kind/name"                   = "aws_appconfig_configuration_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
