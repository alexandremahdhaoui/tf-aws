resource "aws_medialive_multiplex_program" "aws_medialive_multiplex_program" {
  constant_bitrate           = var.constant_bitrate
  preferred_channel_pipeline = var.preferred_channel_pipeline
  priority                   = var.priority
  program_name               = var.program_name
  example_attribute          = var.example_attribute
  multiplex_id               = var.multiplex_id
  multiplex_program_settings = var.multiplex_program_settings
  maximum_bitrate            = var.maximum_bitrate
  minimum_bitrate            = var.minimum_bitrate
  program_number             = var.program_number
  provider_name              = var.provider_name
  statemux_settings          = var.statemux_settings
  video_settings             = var.video_settings
  id                         = var.id
  service_descriptor         = var.service_descriptor
  service_name               = var.service_name
  statmux_settings           = var.statmux_settings
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "minimum_bitrate" {
  description = "(Optional) Minimum bitrate."
  type        = string
}
variable "program_number" {
  description = "(Required) Unique program number."
  type        = string
}
variable "provider_name" {
  description = "(Required) Unique provider name."
  type        = string
}
variable "statemux_settings" {
  description = "(Optional, strongDeprecated) Statemux settings. See Statmux Settings for more details. Settings from this attribute will apply to statmux_settings. Conflicts with statmux_settings."
  type        = string
}
variable "video_settings" {
  description = "(Optional) Video settings. See Video Settings for more details.Service Descriptor"
  type        = string
}
variable "maximum_bitrate" {
  description = "(Optional) Maximum bitrate."
  type        = string
}
variable "service_descriptor" {
  description = "(Optional) Service Descriptor. See Service Descriptor for more details."
  type        = string
}
variable "service_name" {
  description = "(Required) Unique service name.Video Settings"
  type        = string
}
variable "statmux_settings" {
  description = "(Optional) Statmux settings. See Statmux Settings for more details Conflicts with statemux_settings.Statmux Settings"
  type        = string
}
variable "id" {
  description = "ID of the MultiplexProgram."
  type        = string
}
variable "preferred_channel_pipeline" {
  description = "(Required) Enum for preferred channel pipeline. Options are CURRENTLY_ACTIVE, PIPELINE_0, or PIPELINE_1."
  type        = string
}
variable "priority" {
  description = "(Optional) Priority value.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "program_name" {
  description = "(Required) Unique program name."
  type        = string
}
variable "constant_bitrate" {
  description = "(Optional) Constant bitrate value."
  type        = string
}
variable "multiplex_id" {
  description = "(Required) Multiplex ID."
  type        = string
}
variable "multiplex_program_settings" {
  description = "(Required) MultiplexProgram settings. See Multiplex Program Settings for more details.Multiple Program Settings"
  type        = string
}
variable "example_attribute" {
  description = "Concise description."
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
output "constant_bitrate" {
  description = "(Optional) Constant bitrate value."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.constant_bitrate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preferred_channel_pipeline" {
  description = "(Required) Enum for preferred channel pipeline. Options are CURRENTLY_ACTIVE, PIPELINE_0, or PIPELINE_1."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.preferred_channel_pipeline
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "(Optional) Priority value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "program_name" {
  description = "(Required) Unique program name."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.program_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "example_attribute" {
  description = "Concise description."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.example_attribute
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multiplex_id" {
  description = "(Required) Multiplex ID."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.multiplex_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multiplex_program_settings" {
  description = "(Required) MultiplexProgram settings. See Multiplex Program Settings for more details.Multiple Program Settings"
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.multiplex_program_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maximum_bitrate" {
  description = "(Optional) Maximum bitrate."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.maximum_bitrate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_bitrate" {
  description = "(Optional) Minimum bitrate."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.minimum_bitrate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "program_number" {
  description = "(Required) Unique program number."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.program_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provider_name" {
  description = "(Required) Unique provider name."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.provider_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "statemux_settings" {
  description = "(Optional, strongDeprecated) Statemux settings. See Statmux Settings for more details. Settings from this attribute will apply to statmux_settings. Conflicts with statmux_settings."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.statemux_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "video_settings" {
  description = "(Optional) Video settings. See Video Settings for more details.Service Descriptor"
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.video_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the MultiplexProgram."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_descriptor" {
  description = "(Optional) Service Descriptor. See Service Descriptor for more details."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.service_descriptor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "(Required) Unique service name.Video Settings"
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.service_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "statmux_settings" {
  description = "(Optional) Statmux settings. See Statmux Settings for more details Conflicts with statemux_settings.Statmux Settings"
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.statmux_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "example_attribute" {
  description = "Concise description."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.example_attribute
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the MultiplexProgram."
  value       = aws_medialive_multiplex_program.aws_medialive_multiplex_program.id
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
      "kind/name"                   = "aws_medialive_multiplex_program"
      "kind/version"                = "v0.1.0"
    }
  }
}
