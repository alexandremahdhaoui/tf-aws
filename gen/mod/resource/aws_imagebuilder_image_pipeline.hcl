resource "aws_imagebuilder_image_pipeline" "aws_imagebuilder_image_pipeline" {
  platform                           = var.platform
  status                             = var.status
  tags_all                           = var.tags_all
  date_updated                       = var.date_updated
  enhanced_image_metadata_enabled    = var.enhanced_image_metadata_enabled
  image_tests_configuration          = var.image_tests_configuration
  pipeline_execution_start_condition = var.pipeline_execution_start_condition
  schedule                           = var.schedule
  arn                                = var.arn
  container_recipe_arn               = var.container_recipe_arn
  date_created                       = var.date_created
  image_recipe_arn                   = var.image_recipe_arn
  tags                               = var.tags
  date_last_run                      = var.date_last_run
  image_tests_enabled                = var.image_tests_enabled
  infrastructure_configuration_arn   = var.infrastructure_configuration_arn
  schedule_expression                = var.schedule_expression
  timeout_minutes                    = var.timeout_minutes
  timezone                           = var.timezone
  date_next_run                      = var.date_next_run
  description                        = var.description
  distribution_configuration_arn     = var.distribution_configuration_arn
  name                               = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "infrastructure_configuration_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration."
  type        = string
}
variable "schedule_expression" {
  description = "(Required) Cron expression of how often the pipeline start condition is evaluated. For example, cron(0 0 * * ? *) is evaluated every day at midnight UTC. Configurations using the five field syntax that was previously accepted by the API, such as cron(0 0 * * *), must be updated to the six field syntax. For more information, see the Image Builder User Guide."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the image pipeline. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.image_tests_configuration"
  type        = string
}
variable "date_last_run" {
  description = "Date the image pipeline was last run."
  type        = string
}
variable "image_tests_enabled" {
  description = "(Optional) Whether image tests are enabled. Defaults to true."
  type        = string
}
variable "distribution_configuration_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the Image Builder Distribution Configuration."
  type        = string
}
variable "name" {
  description = "(Required) Name of the image pipeline."
  type        = string
}
variable "timeout_minutes" {
  description = "(Optional) Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.schedule"
  type        = string
}
variable "timezone" {
  description = "(Optional) The timezone that applies to the scheduling expression. For example, \"Etc/UTC\", \"America/Los_Angeles\" in the IANA timezone format. If not specified this defaults to UTC.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "date_next_run" {
  description = "Date the image pipeline will run next."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the image pipeline."
  type        = string
}
variable "image_tests_configuration" {
  description = "(Optional) Configuration block with image tests configuration. Detailed below."
  type        = string
}
variable "pipeline_execution_start_condition" {
  description = "(Optional) Condition when the pipeline should trigger a new image build. Valid values are EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE and EXPRESSION_MATCH_ONLY. Defaults to EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE."
  type        = string
}
variable "platform" {
  description = "Platform of the image pipeline."
  type        = string
}
variable "status" {
  description = "(Optional) Status of the image pipeline. Valid values are DISABLED and ENABLED. Defaults to ENABLED."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "date_updated" {
  description = "Date the image pipeline was updated."
  type        = string
}
variable "enhanced_image_metadata_enabled" {
  description = "(Optional) Whether additional information about the image being created is collected. Defaults to true."
  type        = string
}
variable "date_created" {
  description = "Date the image pipeline was created."
  type        = string
}
variable "image_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the image recipe."
  type        = string
}
variable "schedule" {
  description = "(Optional) Configuration block with schedule settings. Detailed below."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the image pipeline."
  type        = string
}
variable "container_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the container recipe."
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
output "image_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the image recipe."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.image_recipe_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schedule" {
  description = "(Optional) Configuration block with schedule settings. Detailed below."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the container recipe."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.container_recipe_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the image pipeline was created."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schedule_expression" {
  description = "(Required) Cron expression of how often the pipeline start condition is evaluated. For example, cron(0 0 * * ? *) is evaluated every day at midnight UTC. Configurations using the five field syntax that was previously accepted by the API, such as cron(0 0 * * *), must be updated to the six field syntax. For more information, see the Image Builder User Guide."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.schedule_expression
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the image pipeline. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.image_tests_configuration"
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_last_run" {
  description = "Date the image pipeline was last run."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_last_run
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tests_enabled" {
  description = "(Optional) Whether image tests are enabled. Defaults to true."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.image_tests_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "infrastructure_configuration_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.infrastructure_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout_minutes" {
  description = "(Optional) Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.schedule"
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.timeout_minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timezone" {
  description = "(Optional) The timezone that applies to the scheduling expression. For example, \"Etc/UTC\", \"America/Los_Angeles\" in the IANA timezone format. If not specified this defaults to UTC.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.timezone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_next_run" {
  description = "Date the image pipeline will run next."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_next_run
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "distribution_configuration_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the Image Builder Distribution Configuration."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.distribution_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pipeline_execution_start_condition" {
  description = "(Optional) Condition when the pipeline should trigger a new image build. Valid values are EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE and EXPRESSION_MATCH_ONLY. Defaults to EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.pipeline_execution_start_condition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "(Optional) Status of the image pipeline. Valid values are DISABLED and ENABLED. Defaults to ENABLED."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_updated" {
  description = "Date the image pipeline was updated."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_updated
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enhanced_image_metadata_enabled" {
  description = "(Optional) Whether additional information about the image being created is collected. Defaults to true."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.enhanced_image_metadata_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tests_configuration" {
  description = "(Optional) Configuration block with image tests configuration. Detailed below."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.image_tests_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the image pipeline was created."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_last_run" {
  description = "Date the image pipeline was last run."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_last_run
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_next_run" {
  description = "Date the image pipeline will run next."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_next_run
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_updated" {
  description = "Date the image pipeline was updated."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_updated
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.tags_all
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
      "kind/name"                   = "aws_imagebuilder_image_pipeline"
      "kind/version"                = "v0.1.0"
    }
  }
}