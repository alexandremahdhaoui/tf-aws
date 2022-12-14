resource "aws_media_convert_queue" "aws_media_convert_queue" {
  arn                       = var.arn
  renewal_type              = var.renewal_type
  reserved_slots            = var.reserved_slots
  tags                      = var.tags
  commitment                = var.commitment
  description               = var.description
  id                        = var.id
  name                      = var.name
  pricing_plan              = var.pricing_plan
  reservation_plan_settings = var.reservation_plan_settings
  status                    = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "(Optional) A description of the queue"
  type        = string
  default     = ""
}
variable "id" {
  description = "The same as name"
  type        = string
}
variable "name" {
  description = "(Required) A unique identifier describing the queue"
  type        = string
}
variable "pricing_plan" {
  description = "(Optional) Specifies whether the pricing plan for the queue is on-demand or reserved. Valid values are ON_DEMAND or RESERVED. Default to ON_DEMAND."
  type        = string
  default     = ""
}
variable "reservation_plan_settings" {
  description = "(Optional) A detail pricing plan of the  reserved queue. See below."
  type        = string
  default     = ""
}
variable "status" {
  description = "(Optional) A status of the queue. Valid values are ACTIVE or RESERVED. Default to PAUSED."
  type        = string
  default     = ""
}
variable "commitment" {
  description = "(Required) The length of the term of your reserved queue pricing plan commitment. Valid value is ONE_YEAR."
  type        = string
}
variable "renewal_type" {
  description = "(Required) Specifies whether the term of your reserved queue pricing plan. Valid values are AUTO_RENEW or EXPIRE."
  type        = string
}
variable "reserved_slots" {
  description = "(Required) Specifies the number of reserved transcode slots (RTS) for queue.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldsreservation_plan_settings"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Arn of the queue"
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
output "description" {
  description = "(Optional) A description of the queue"
  value       = aws_media_convert_queue.aws_media_convert_queue.description
}
output "id" {
  description = "The same as name"
  value       = aws_media_convert_queue.aws_media_convert_queue.id
}
output "name" {
  description = "(Required) A unique identifier describing the queue"
  value       = aws_media_convert_queue.aws_media_convert_queue.name
}
output "pricing_plan" {
  description = "(Optional) Specifies whether the pricing plan for the queue is on-demand or reserved. Valid values are ON_DEMAND or RESERVED. Default to ON_DEMAND."
  value       = aws_media_convert_queue.aws_media_convert_queue.pricing_plan
}
output "reservation_plan_settings" {
  description = "(Optional) A detail pricing plan of the  reserved queue. See below."
  value       = aws_media_convert_queue.aws_media_convert_queue.reservation_plan_settings
}
output "status" {
  description = "(Optional) A status of the queue. Valid values are ACTIVE or RESERVED. Default to PAUSED."
  value       = aws_media_convert_queue.aws_media_convert_queue.status
}
output "commitment" {
  description = "(Required) The length of the term of your reserved queue pricing plan commitment. Valid value is ONE_YEAR."
  value       = aws_media_convert_queue.aws_media_convert_queue.commitment
}
output "renewal_type" {
  description = "(Required) Specifies whether the term of your reserved queue pricing plan. Valid values are AUTO_RENEW or EXPIRE."
  value       = aws_media_convert_queue.aws_media_convert_queue.renewal_type
}
output "reserved_slots" {
  description = "(Required) Specifies the number of reserved transcode slots (RTS) for queue.In addition to all arguments above, the following attributes are exported:"
  value       = aws_media_convert_queue.aws_media_convert_queue.reserved_slots
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldsreservation_plan_settings"
  value       = aws_media_convert_queue.aws_media_convert_queue.tags
}
output "arn" {
  description = "The Arn of the queue"
  value       = aws_media_convert_queue.aws_media_convert_queue.arn
}
output "arn" {
  description = "The Arn of the queue"
  value       = aws_media_convert_queue.aws_media_convert_queue.arn
}
output "id" {
  description = "The same as name"
  value       = aws_media_convert_queue.aws_media_convert_queue.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_media_convert_queue.aws_media_convert_queue.tags_all
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
      "kind/name"                   = "aws_media_convert_queue"
      "kind/version"                = "v0.1.0"
    }
  }
}
