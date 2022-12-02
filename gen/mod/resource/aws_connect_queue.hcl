resource "aws_connect_queue" "aws_connect_queue" {
  outbound_caller_id_number_id = var.outbound_caller_id_number_id
  outbound_flow_id             = var.outbound_flow_id
  queue_id                     = var.queue_id
  tags                         = var.tags
  description                  = var.description
  hours_of_operation_id        = var.hours_of_operation_id
  max_contacts                 = var.max_contacts
  outbound_caller_config       = var.outbound_caller_config
  arn                          = var.arn
  id                           = var.id
  instance_id                  = var.instance_id
  quick_connect_ids            = var.quick_connect_ids
  status                       = var.status
  name                         = var.name
  outbound_caller_id_name      = var.outbound_caller_id_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Queue."
  type        = string
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Queue separated by a colon (:)."
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "outbound_caller_config" {
  description = "(Required) A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below."
  type        = string
}
variable "quick_connect_ids" {
  description = "(Optional) Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue."
  type        = string
  default     = ""
}
variable "status" {
  description = "(Optional) Specifies the description of the Queue. Valid values are ENABLED, DISABLED."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Specifies the name of the Queue."
  type        = string
}
variable "outbound_caller_id_name" {
  description = "(Optional) Specifies the caller ID name."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Specifies the description of the Queue."
  type        = string
  default     = ""
}
variable "hours_of_operation_id" {
  description = "(Required) Specifies the identifier of the Hours of Operation."
  type        = string
}
variable "max_contacts" {
  description = "(Optional) Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0."
  type        = string
  default     = ""
}
variable "outbound_caller_id_number_id" {
  description = "(Optional) Specifies the caller ID number."
  type        = string
  default     = ""
}
variable "outbound_flow_id" {
  description = "(Optional) Specifies outbound whisper flow to be used during an outbound call.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "queue_id" {
  description = "The identifier for the Queue."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the Queue. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A outbound_caller_config block supports the following arguments:"
  type        = string
  default     = ""
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
output "name" {
  description = "(Required) Specifies the name of the Queue."
  value       = aws_connect_queue.aws_connect_queue.name
}
output "outbound_caller_id_name" {
  description = "(Optional) Specifies the caller ID name."
  value       = aws_connect_queue.aws_connect_queue.outbound_caller_id_name
}
output "description" {
  description = "(Optional) Specifies the description of the Queue."
  value       = aws_connect_queue.aws_connect_queue.description
}
output "hours_of_operation_id" {
  description = "(Required) Specifies the identifier of the Hours of Operation."
  value       = aws_connect_queue.aws_connect_queue.hours_of_operation_id
}
output "max_contacts" {
  description = "(Optional) Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0."
  value       = aws_connect_queue.aws_connect_queue.max_contacts
}
output "outbound_caller_id_number_id" {
  description = "(Optional) Specifies the caller ID number."
  value       = aws_connect_queue.aws_connect_queue.outbound_caller_id_number_id
}
output "outbound_flow_id" {
  description = "(Optional) Specifies outbound whisper flow to be used during an outbound call.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_queue.aws_connect_queue.outbound_flow_id
}
output "queue_id" {
  description = "The identifier for the Queue."
  value       = aws_connect_queue.aws_connect_queue.queue_id
}
output "tags" {
  description = "(Optional) Tags to apply to the Queue. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A outbound_caller_config block supports the following arguments:"
  value       = aws_connect_queue.aws_connect_queue.tags
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Queue."
  value       = aws_connect_queue.aws_connect_queue.arn
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Queue separated by a colon (:)."
  value       = aws_connect_queue.aws_connect_queue.id
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_queue.aws_connect_queue.instance_id
}
output "outbound_caller_config" {
  description = "(Required) A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below."
  value       = aws_connect_queue.aws_connect_queue.outbound_caller_config
}
output "quick_connect_ids" {
  description = "(Optional) Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue."
  value       = aws_connect_queue.aws_connect_queue.quick_connect_ids
}
output "status" {
  description = "(Optional) Specifies the description of the Queue. Valid values are ENABLED, DISABLED."
  value       = aws_connect_queue.aws_connect_queue.status
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Queue."
  value       = aws_connect_queue.aws_connect_queue.arn
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Queue separated by a colon (:)."
  value       = aws_connect_queue.aws_connect_queue.id
}
output "queue_id" {
  description = "The identifier for the Queue."
  value       = aws_connect_queue.aws_connect_queue.queue_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_queue.aws_connect_queue.tags_all
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
      "kind/name"                   = "aws_connect_queue"
      "kind/version"                = "v0.1.0"
    }
  }
}
