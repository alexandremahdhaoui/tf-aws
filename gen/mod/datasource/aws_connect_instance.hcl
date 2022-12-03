datasource "aws_connect_instance" "aws_connect_instance" {
  outbound_calls_enabled    = var.outbound_calls_enabled
  use_custom_tts_voices     = var.use_custom_tts_voices
  auto_resolve_best_voices  = var.auto_resolve_best_voices
  contact_flow_logs_enabled = var.contact_flow_logs_enabled
  identity_management_type  = var.identity_management_type
  instance_id               = var.instance_id
  inbound_calls_enabled     = var.inbound_calls_enabled
  instance_alias            = var.instance_alias
  status                    = var.status
  arn                       = var.arn
  contact_lens_enabled      = var.contact_lens_enabled
  created_time              = var.created_time
  early_media_enabled       = var.early_media_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "auto_resolve_best_voices" {
  description = "Whether auto resolve best voices is enabled."
  type        = string
}
variable "contact_flow_logs_enabled" {
  description = "Whether contact flow logs are enabled."
  type        = string
}
variable "identity_management_type" {
  description = "Specifies The identity management type attached to the instance."
  type        = string
}
variable "instance_id" {
  description = "(Optional) Returns information on a specific connect instance by id"
  type        = string
  default     = ""
}
variable "outbound_calls_enabled" {
  description = "Whether outbound calls are enabled."
  type        = string
}
variable "use_custom_tts_voices" {
  description = "Whether use custom tts voices is enabled."
  type        = string
}
variable "status" {
  description = "State of the instance."
  type        = string
}
variable "arn" {
  description = "ARN of the instance."
  type        = string
}
variable "contact_lens_enabled" {
  description = "Whether contact lens is enabled."
  type        = string
}
variable "created_time" {
  description = "When the instance was created."
  type        = string
}
variable "early_media_enabled" {
  description = "Whether early media for outbound calls is enabled ."
  type        = string
}
variable "inbound_calls_enabled" {
  description = "Whether inbound calls are enabled."
  type        = string
}
variable "instance_alias" {
  description = "(Optional) Returns information on a specific connect instance by aliasIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "instance_id" {
  description = "(Optional) Returns information on a specific connect instance by id"
  value       = aws_connect_instance.aws_connect_instance.instance_id
}
output "outbound_calls_enabled" {
  description = "Whether outbound calls are enabled."
  value       = aws_connect_instance.aws_connect_instance.outbound_calls_enabled
}
output "use_custom_tts_voices" {
  description = "Whether use custom tts voices is enabled."
  value       = aws_connect_instance.aws_connect_instance.use_custom_tts_voices
}
output "auto_resolve_best_voices" {
  description = "Whether auto resolve best voices is enabled."
  value       = aws_connect_instance.aws_connect_instance.auto_resolve_best_voices
}
output "contact_flow_logs_enabled" {
  description = "Whether contact flow logs are enabled."
  value       = aws_connect_instance.aws_connect_instance.contact_flow_logs_enabled
}
output "identity_management_type" {
  description = "Specifies The identity management type attached to the instance."
  value       = aws_connect_instance.aws_connect_instance.identity_management_type
}
output "early_media_enabled" {
  description = "Whether early media for outbound calls is enabled ."
  value       = aws_connect_instance.aws_connect_instance.early_media_enabled
}
output "inbound_calls_enabled" {
  description = "Whether inbound calls are enabled."
  value       = aws_connect_instance.aws_connect_instance.inbound_calls_enabled
}
output "instance_alias" {
  description = "(Optional) Returns information on a specific connect instance by aliasIn addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_instance.aws_connect_instance.instance_alias
}
output "status" {
  description = "State of the instance."
  value       = aws_connect_instance.aws_connect_instance.status
}
output "arn" {
  description = "ARN of the instance."
  value       = aws_connect_instance.aws_connect_instance.arn
}
output "contact_lens_enabled" {
  description = "Whether contact lens is enabled."
  value       = aws_connect_instance.aws_connect_instance.contact_lens_enabled
}
output "created_time" {
  description = "When the instance was created."
  value       = aws_connect_instance.aws_connect_instance.created_time
}
output "outbound_calls_enabled" {
  description = "Whether outbound calls are enabled."
  value       = aws_connect_instance.aws_connect_instance.outbound_calls_enabled
}
output "status" {
  description = "State of the instance."
  value       = aws_connect_instance.aws_connect_instance.status
}
output "arn" {
  description = "ARN of the instance."
  value       = aws_connect_instance.aws_connect_instance.arn
}
output "contact_flow_logs_enabled" {
  description = "Whether contact flow logs are enabled."
  value       = aws_connect_instance.aws_connect_instance.contact_flow_logs_enabled
}
output "contact_lens_enabled" {
  description = "Whether contact lens is enabled."
  value       = aws_connect_instance.aws_connect_instance.contact_lens_enabled
}
output "created_time" {
  description = "When the instance was created."
  value       = aws_connect_instance.aws_connect_instance.created_time
}
output "identity_management_type" {
  description = "Specifies The identity management type attached to the instance."
  value       = aws_connect_instance.aws_connect_instance.identity_management_type
}
output "auto_resolve_best_voices" {
  description = "Whether auto resolve best voices is enabled."
  value       = aws_connect_instance.aws_connect_instance.auto_resolve_best_voices
}
output "early_media_enabled" {
  description = "Whether early media for outbound calls is enabled ."
  value       = aws_connect_instance.aws_connect_instance.early_media_enabled
}
output "inbound_calls_enabled" {
  description = "Whether inbound calls are enabled."
  value       = aws_connect_instance.aws_connect_instance.inbound_calls_enabled
}
output "use_custom_tts_voices" {
  description = "Whether use custom tts voices is enabled."
  value       = aws_connect_instance.aws_connect_instance.use_custom_tts_voices
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
}
