resource "aws_codepipeline_custom_action_type" "aws_codepipeline_custom_action_type" {
  queryable                     = var.queryable
  arn                           = var.arn
  input_artifact_details        = var.input_artifact_details
  key                           = var.key
  name                          = var.name
  provider_name                 = var.provider_name
  secret                        = var.secret
  tags                          = var.tags
  third_party_configuration_url = var.third_party_configuration_url
  category                      = var.category
  description                   = var.description
  minimum_count                 = var.minimum_count
  id                            = var.id
  maximum_count                 = var.maximum_count
  output_artifact_details       = var.output_artifact_details
  required                      = var.required
  revision_url_template         = var.revision_url_template
  configuration_property        = var.configuration_property
  entity_url_template           = var.entity_url_template
  execution_url_template        = var.execution_url_template
  version                       = var.version
  owner                         = var.owner
  settings                      = var.settings
  type                          = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "settings" {
  description = "(Optional) The settings for an action type.The settings object supports the following:"
  type        = string
  default     = ""
}
variable "type" {
  description = "- (Optional) The type of the configuration property. Valid values: String, Number, Boolean"
  type        = string
  default     = ""
}
variable "owner" {
  description = "The creator of the action being called."
  type        = string
}
variable "input_artifact_details" {
  description = "(Required) The details of the input artifact for the action.The input_artifact_details object supports the following:"
  type        = string
}
variable "key" {
  description = "(Required) Whether the configuration property is a key."
  type        = string
}
variable "queryable" {
  description = "(Optional) Indicates that the property will be used in conjunction with PollForJobs."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The action ARN."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the action configuration property."
  type        = string
  default     = ""
}
variable "minimum_count" {
  description = "(Required) The minimum number of artifacts allowed for the action type. Min: 0, Max: 5"
  type        = string
}
variable "name" {
  description = "(Required) The name of the action configuration property."
  type        = string
}
variable "provider_name" {
  description = "(Required) The provider of the service used in the custom action"
  type        = string
}
variable "secret" {
  description = "- (Required) Whether the configuration property is secret."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "third_party_configuration_url" {
  description = "(Optional) The URL of a sign-up page where users can sign up for an external service and perform initial configuration of the action provided by that service."
  type        = string
  default     = ""
}
variable "category" {
  description = "(Required) The category of the custom action. Valid values: Source, Build, Deploy, Test, Invoke, Approval"
  type        = string
}
variable "entity_url_template" {
  description = "(Optional) The URL returned to the AWS CodePipeline console that provides a deep link to the resources of the external system."
  type        = string
  default     = ""
}
variable "execution_url_template" {
  description = "(Optional) The URL returned to the AWS CodePipeline console that contains a link to the top-level landing page for the external system."
  type        = string
  default     = ""
}
variable "id" {
  description = "Composed of category, provider and version. For example, Build:terraform:1"
  type        = string
}
variable "maximum_count" {
  description = "(Required) The maximum number of artifacts allowed for the action type. Min: 0, Max: 5"
  type        = string
}
variable "output_artifact_details" {
  description = "(Required) The details of the output artifact of the action.The output_artifact_details object supports the following:"
  type        = string
}
variable "required" {
  description = "(Required) Whether the configuration property is a required value."
  type        = string
}
variable "revision_url_template" {
  description = "(Optional) The URL returned to the AWS CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action."
  type        = string
  default     = ""
}
variable "configuration_property" {
  description = "(Optional) The configuration properties for the custom action. Max 10 items.The configuration_property object supports the following:"
  type        = string
  default     = ""
}
variable "version" {
  description = "(Required) The version identifier of the custom action.In addition to all arguments above, the following attributes are exported:"
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
output "execution_url_template" {
  description = "(Optional) The URL returned to the AWS CodePipeline console that contains a link to the top-level landing page for the external system."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.execution_url_template
}
output "id" {
  description = "Composed of category, provider and version. For example, Build:terraform:1"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.id
}
output "maximum_count" {
  description = "(Required) The maximum number of artifacts allowed for the action type. Min: 0, Max: 5"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.maximum_count
}
output "output_artifact_details" {
  description = "(Required) The details of the output artifact of the action.The output_artifact_details object supports the following:"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.output_artifact_details
}
output "required" {
  description = "(Required) Whether the configuration property is a required value."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.required
}
output "revision_url_template" {
  description = "(Optional) The URL returned to the AWS CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.revision_url_template
}
output "configuration_property" {
  description = "(Optional) The configuration properties for the custom action. Max 10 items.The configuration_property object supports the following:"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.configuration_property
}
output "entity_url_template" {
  description = "(Optional) The URL returned to the AWS CodePipeline console that provides a deep link to the resources of the external system."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.entity_url_template
}
output "version" {
  description = "(Required) The version identifier of the custom action.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.version
}
output "type" {
  description = "- (Optional) The type of the configuration property. Valid values: String, Number, Boolean"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.type
}
output "owner" {
  description = "The creator of the action being called."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.owner
}
output "settings" {
  description = "(Optional) The settings for an action type.The settings object supports the following:"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.settings
}
output "key" {
  description = "(Required) Whether the configuration property is a key."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.key
}
output "queryable" {
  description = "(Optional) Indicates that the property will be used in conjunction with PollForJobs."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.queryable
}
output "arn" {
  description = "The action ARN."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.arn
}
output "input_artifact_details" {
  description = "(Required) The details of the input artifact for the action.The input_artifact_details object supports the following:"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.input_artifact_details
}
output "minimum_count" {
  description = "(Required) The minimum number of artifacts allowed for the action type. Min: 0, Max: 5"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.minimum_count
}
output "name" {
  description = "(Required) The name of the action configuration property."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.name
}
output "provider_name" {
  description = "(Required) The provider of the service used in the custom action"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.provider_name
}
output "secret" {
  description = "- (Required) Whether the configuration property is secret."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.secret
}
output "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.tags
}
output "third_party_configuration_url" {
  description = "(Optional) The URL of a sign-up page where users can sign up for an external service and perform initial configuration of the action provided by that service."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.third_party_configuration_url
}
output "category" {
  description = "(Required) The category of the custom action. Valid values: Source, Build, Deploy, Test, Invoke, Approval"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.category
}
output "description" {
  description = "(Optional) The description of the action configuration property."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.description
}
output "arn" {
  description = "The action ARN."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.arn
}
output "id" {
  description = "Composed of category, provider and version. For example, Build:terraform:1"
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.id
}
output "owner" {
  description = "The creator of the action being called."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.owner
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codepipeline_custom_action_type.aws_codepipeline_custom_action_type.tags_all
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
      "kind/name"                   = "aws_codepipeline_custom_action_type"
      "kind/version"                = "v0.1.0"
    }
  }
}
