resource "aws_connect_routing_profile" "aws_connect_routing_profile" {
  delay                     = var.delay
  description               = var.description
  name                      = var.name
  channel                   = var.channel
  instance_id               = var.instance_id
  routing_profile_id        = var.routing_profile_id
  tags                      = var.tags
  arn                       = var.arn
  id                        = var.id
  media_concurrencies       = var.media_concurrencies
  priority                  = var.priority
  queue_configs             = var.queue_configs
  tags_all                  = var.tags_all
  concurrency               = var.concurrency
  default_outbound_queue_id = var.default_outbound_queue_id
  queue_arn                 = var.queue_arn
  queue_id                  = var.queue_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Routing Profile."
  type        = string
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Routing Profile separated by a colon (:)."
  type        = string
}
variable "media_concurrencies" {
  description = "(Required) One or more media_concurrencies blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The media_concurrencies block is documented below."
  type        = string
}
variable "priority" {
  description = "(Required) Specifies the order in which contacts are to be handled for the queue."
  type        = string
}
variable "queue_configs" {
  description = "In addition to the arguments used in the queue_configs argument block, there are additional attributes exported within the queue_configs block. These additional attributes are documented below."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A queue_configs block supports the following attributes in addition to the arguments defined earlier:"
  type        = string
}
variable "concurrency" {
  description = "(Required) Specifies the number of contacts an agent can have on a channel simultaneously. Valid Range for VOICE: Minimum value of 1. Maximum value of 1. Valid Range for CHAT: Minimum value of 1. Maximum value of 10. Valid Range for TASK: Minimum value of 1. Maximum value of 10.A queue_configs block supports the following arguments:"
  type        = string
}
variable "default_outbound_queue_id" {
  description = "(Required) Specifies the default outbound queue for the Routing Profile."
  type        = string
}
variable "queue_arn" {
  description = "ARN for the queue."
  type        = string
}
variable "queue_id" {
  description = "(Required) Specifies the identifier for the queue.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "delay" {
  description = "(Required) Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent"
  type        = string
}
variable "description" {
  description = "(Required) Specifies the description of the Routing Profile."
  type        = string
}
variable "name" {
  description = "(Required) Specifies the name of the Routing Profile."
  type        = string
}
variable "channel" {
  description = "(Required) Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK."
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "routing_profile_id" {
  description = "The identifier for the Routing Profile."
  type        = string
}
variable "tags" {
  description = "default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A media_concurrencies block supports the following arguments:"
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
output "channel" {
  description = "(Required) Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.channel
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.instance_id
}
output "routing_profile_id" {
  description = "The identifier for the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.routing_profile_id
}
output "tags" {
  description = "default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A media_concurrencies block supports the following arguments:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.tags
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.arn
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Routing Profile separated by a colon (:)."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.id
}
output "media_concurrencies" {
  description = "(Required) One or more media_concurrencies blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The media_concurrencies block is documented below."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.media_concurrencies
}
output "priority" {
  description = "(Required) Specifies the order in which contacts are to be handled for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.priority
}
output "queue_configs" {
  description = "In addition to the arguments used in the queue_configs argument block, there are additional attributes exported within the queue_configs block. These additional attributes are documented below."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_configs
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A queue_configs block supports the following attributes in addition to the arguments defined earlier:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.tags_all
}
output "concurrency" {
  description = "(Required) Specifies the number of contacts an agent can have on a channel simultaneously. Valid Range for VOICE: Minimum value of 1. Maximum value of 1. Valid Range for CHAT: Minimum value of 1. Maximum value of 10. Valid Range for TASK: Minimum value of 1. Maximum value of 10.A queue_configs block supports the following arguments:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.concurrency
}
output "default_outbound_queue_id" {
  description = "(Required) Specifies the default outbound queue for the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.default_outbound_queue_id
}
output "queue_arn" {
  description = "ARN for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_arn
}
output "queue_id" {
  description = "(Required) Specifies the identifier for the queue.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_id
}
output "delay" {
  description = "(Required) Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.delay
}
output "description" {
  description = "(Required) Specifies the description of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.description
}
output "name" {
  description = "(Required) Specifies the name of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.name
}
output "queue_configs" {
  description = "In addition to the arguments used in the queue_configs argument block, there are additional attributes exported within the queue_configs block. These additional attributes are documented below."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_configs
}
output "queue_name" {
  description = "Name for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_name
}
output "routing_profile_id" {
  description = "The identifier for the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.routing_profile_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A queue_configs block supports the following attributes in addition to the arguments defined earlier:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.arn
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Routing Profile separated by a colon (:)."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.id
}
output "queue_arn" {
  description = "ARN for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_arn
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
      "kind/name"                   = "aws_connect_routing_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
