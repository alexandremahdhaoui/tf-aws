datasource "aws_connect_routing_profile" "aws_connect_routing_profile" {
  arn                       = var.arn
  channel                   = var.channel
  queue_configs             = var.queue_configs
  description               = var.description
  id                        = var.id
  queue_arn                 = var.queue_arn
  routing_profile_id        = var.routing_profile_id
  tags                      = var.tags
  concurrency               = var.concurrency
  default_outbound_queue_id = var.default_outbound_queue_id
  delay                     = var.delay
  priority                  = var.priority
  queue_id                  = var.queue_id
  instance_id               = var.instance_id
  media_concurrencies       = var.media_concurrencies
  name                      = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the Routing Profile."
  type        = string
}
variable "channel" {
  description = "Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK."
  type        = string
}
variable "queue_configs" {
  description = "One or more queue_configs blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The queue_configs block is documented below."
  type        = string
}
variable "description" {
  description = "Description of the Routing Profile."
  type        = string
}
variable "id" {
  description = "Identifier of the hosting Amazon Connect Instance and identifier of the Routing Profile separated by a colon (:)."
  type        = string
}
variable "routing_profile_id" {
  description = "(Optional) Returns information on a specific Routing Profile by Routing Profile idIn addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "Map of tags to assign to the Routing Profile.A media_concurrencies block supports the following attributes:"
  type        = string
}
variable "concurrency" {
  description = "Number of contacts an agent can have on a channel simultaneously. Valid Range for VOICE: Minimum value of 1. Maximum value of 1. Valid Range for CHAT: Minimum value of 1. Maximum value of 10. Valid Range for TASK: Minimum value of 1. Maximum value of 10.A queue_configs block supports the following attributes:"
  type        = string
}
variable "default_outbound_queue_id" {
  description = "Specifies the default outbound queue for the Routing Profile."
  type        = string
}
variable "delay" {
  description = "Delay, in seconds, that a contact should be in the queue before they are routed to an available agent"
  type        = string
}
variable "queue_arn" {
  description = "ARN for the queue."
  type        = string
}
variable "queue_id" {
  description = "Identifier for the queue."
  type        = string
}
variable "instance_id" {
  description = "Reference to the hosting Amazon Connect Instance"
  type        = string
}
variable "media_concurrencies" {
  description = "One or more media_concurrencies blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The media_concurrencies block is documented below."
  type        = string
}
variable "name" {
  description = "(Optional) Returns information on a specific Routing Profile by name"
  type        = string
}
variable "priority" {
  description = "Order in which contacts are to be handled for the queue."
  type        = string
}
output "concurrency" {
  description = "Number of contacts an agent can have on a channel simultaneously. Valid Range for VOICE: Minimum value of 1. Maximum value of 1. Valid Range for CHAT: Minimum value of 1. Maximum value of 10. Valid Range for TASK: Minimum value of 1. Maximum value of 10.A queue_configs block supports the following attributes:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.concurrency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_outbound_queue_id" {
  description = "Specifies the default outbound queue for the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.default_outbound_queue_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delay" {
  description = "Delay, in seconds, that a contact should be in the queue before they are routed to an available agent"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.delay
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_arn" {
  description = "ARN for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "routing_profile_id" {
  description = "(Optional) Returns information on a specific Routing Profile by Routing Profile idIn addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.routing_profile_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the Routing Profile.A media_concurrencies block supports the following attributes:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "media_concurrencies" {
  description = "One or more media_concurrencies blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The media_concurrencies block is documented below."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.media_concurrencies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Returns information on a specific Routing Profile by name"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "Order in which contacts are to be handled for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_id" {
  description = "Identifier for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "channel" {
  description = "Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.channel
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_configs" {
  description = "One or more queue_configs blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The queue_configs block is documented below."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_configs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the hosting Amazon Connect Instance and identifier of the Routing Profile separated by a colon (:)."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_configs" {
  description = "One or more queue_configs blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The queue_configs block is documented below."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_configs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_id" {
  description = "Identifier for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delay" {
  description = "Delay, in seconds, that a contact should be in the queue before they are routed to an available agent"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.delay
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the hosting Amazon Connect Instance and identifier of the Routing Profile separated by a colon (:)."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "Order in which contacts are to be handled for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_arn" {
  description = "ARN for the queue."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.queue_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "media_concurrencies" {
  description = "One or more media_concurrencies blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The media_concurrencies block is documented below."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.media_concurrencies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the Routing Profile.A media_concurrencies block supports the following attributes:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "channel" {
  description = "Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are VOICE, CHAT, TASK."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.channel
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "concurrency" {
  description = "Number of contacts an agent can have on a channel simultaneously. Valid Range for VOICE: Minimum value of 1. Maximum value of 1. Valid Range for CHAT: Minimum value of 1. Maximum value of 10. Valid Range for TASK: Minimum value of 1. Maximum value of 10.A queue_configs block supports the following attributes:"
  value       = aws_connect_routing_profile.aws_connect_routing_profile.concurrency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_outbound_queue_id" {
  description = "Specifies the default outbound queue for the Routing Profile."
  value       = aws_connect_routing_profile.aws_connect_routing_profile.default_outbound_queue_id
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
}
