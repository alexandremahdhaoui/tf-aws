resource "aws_mq_configuration" "aws_mq_configuration" {
  engine_version          = var.engine_version
  tags                    = var.tags
  engine_type             = var.engine_type
  id                      = var.id
  latest_revision         = var.latest_revision
  name                    = var.name
  arn                     = var.arn
  authentication_strategy = var.authentication_strategy
  data                    = var.data
  description             = var.description
  tags_all                = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "authentication_strategy" {
  description = "(Optional) Authentication strategy associated with the configuration. Valid values are simple and ldap. ldap is not supported for engine_type RabbitMQ."
  type        = string
  default     = ""
}
variable "data" {
  description = "(Required) Broker configuration in XML format. See official docs for supported parameters and format of the XML."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the configuration."
  type        = string
  default     = ""
}
variable "engine_type" {
  description = "(Required) Type of broker engine. Valid values are ActiveMQ and RabbitMQ."
  type        = string
}
variable "id" {
  description = "Unique ID that Amazon MQ generates for the configuration."
  type        = string
  default     = ""
}
variable "latest_revision" {
  description = "Latest revision of the configuration."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the configuration."
  type        = string
}
variable "arn" {
  description = "ARN of the configuration."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "engine_version" {
  description = "(Required) Version of the broker engine."
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
output "engine_version" {
  description = "(Required) Version of the broker engine."
  value       = aws_mq_configuration.aws_mq_configuration.engine_version
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_mq_configuration.aws_mq_configuration.tags
}
output "data" {
  description = "(Required) Broker configuration in XML format. See official docs for supported parameters and format of the XML."
  value       = aws_mq_configuration.aws_mq_configuration.data
}
output "description" {
  description = "(Optional) Description of the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.description
}
output "engine_type" {
  description = "(Required) Type of broker engine. Valid values are ActiveMQ and RabbitMQ."
  value       = aws_mq_configuration.aws_mq_configuration.engine_type
}
output "id" {
  description = "Unique ID that Amazon MQ generates for the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.id
}
output "latest_revision" {
  description = "Latest revision of the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.latest_revision
}
output "name" {
  description = "(Required) Name of the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.name
}
output "arn" {
  description = "ARN of the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.arn
}
output "authentication_strategy" {
  description = "(Optional) Authentication strategy associated with the configuration. Valid values are simple and ldap. ldap is not supported for engine_type RabbitMQ."
  value       = aws_mq_configuration.aws_mq_configuration.authentication_strategy
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_mq_configuration.aws_mq_configuration.tags_all
}
output "arn" {
  description = "ARN of the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.arn
}
output "id" {
  description = "Unique ID that Amazon MQ generates for the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.id
}
output "latest_revision" {
  description = "Latest revision of the configuration."
  value       = aws_mq_configuration.aws_mq_configuration.latest_revision
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_mq_configuration.aws_mq_configuration.tags_all
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
      "kind/name"                   = "aws_mq_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
