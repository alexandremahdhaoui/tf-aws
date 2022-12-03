resource "aws_gamelift_game_session_queue" "aws_gamelift_game_session_queue" {
  name                                           = var.name
  notification_target                            = var.notification_target
  timeout_in_seconds                             = var.timeout_in_seconds
  arn                                            = var.arn
  maximum_individual_player_latency_milliseconds = var.maximum_individual_player_latency_milliseconds
  player_latency_policy                          = var.player_latency_policy
  policy_duration_seconds                        = var.policy_duration_seconds
  tags                                           = var.tags
  destinations                                   = var.destinations
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the session queue."
  type        = string
}
variable "notification_target" {
  description = "(Optional) An SNS topic ARN that is set up to receive game session placement notifications."
  type        = string
  default     = ""
}
variable "timeout_in_seconds" {
  description = "(Required) Maximum time a game session request can remain in the queue."
  type        = string
}
variable "arn" {
  description = "Game Session Queue ARN."
  type        = string
}
variable "maximum_individual_player_latency_milliseconds" {
  description = "(Required) Maximum latency value that is allowed for any player."
  type        = string
}
variable "player_latency_policy" {
  description = "(Optional) One or more policies used to choose fleet based on player latency. See below."
  type        = string
  default     = ""
}
variable "policy_duration_seconds" {
  description = "(Optional) Length of time that the policy is enforced while placing a new game session. Absence of value for this attribute means that the policy is enforced until the queue times out.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldsplayer_latency_policy"
  type        = string
  default     = ""
}
variable "destinations" {
  description = "(Optional) List of fleet/alias ARNs used by session queue for placing game sessions."
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
output "destinations" {
  description = "(Optional) List of fleet/alias ARNs used by session queue for placing game sessions."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.destinations
}
output "maximum_individual_player_latency_milliseconds" {
  description = "(Required) Maximum latency value that is allowed for any player."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.maximum_individual_player_latency_milliseconds
}
output "player_latency_policy" {
  description = "(Optional) One or more policies used to choose fleet based on player latency. See below."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.player_latency_policy
}
output "policy_duration_seconds" {
  description = "(Optional) Length of time that the policy is enforced while placing a new game session. Absence of value for this attribute means that the policy is enforced until the queue times out.In addition to all arguments above, the following attributes are exported:"
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.policy_duration_seconds
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldsplayer_latency_policy"
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.tags
}
output "arn" {
  description = "Game Session Queue ARN."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.arn
}
output "name" {
  description = "(Required) Name of the session queue."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.name
}
output "notification_target" {
  description = "(Optional) An SNS topic ARN that is set up to receive game session placement notifications."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.notification_target
}
output "timeout_in_seconds" {
  description = "(Required) Maximum time a game session request can remain in the queue."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.timeout_in_seconds
}
output "arn" {
  description = "Game Session Queue ARN."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_gamelift_game_session_queue.aws_gamelift_game_session_queue.tags_all
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
      "kind/name"                   = "aws_gamelift_game_session_queue"
      "kind/version"                = "v0.1.0"
    }
  }
}
