datasource "aws_batch_scheduling_policy" "aws_batch_scheduling_policy" {
  share_distribution  = var.share_distribution
  share_identifier    = var.share_identifier
  tags                = var.tags
  arn                 = var.arn
  compute_reservation = var.compute_reservation
  fairshare_policy    = var.fairshare_policy
  name                = var.name
  share_delay_seconds = var.share_delay_seconds
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "share_delay_seconds" {
  description = "Time period to use to calculate a fair share percentage for each fair share identifier in use, in seconds. For more information, see FairsharePolicy."
  type        = string
}
variable "share_distribution" {
  description = "One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see FairsharePolicy. The share_distribution block is documented below.A share_distribution block supports the following arguments:"
  type        = string
}
variable "share_identifier" {
  description = "Fair share identifier or fair share identifier prefix. For more information, see ShareAttributes."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tagsA fairshare_policy block supports the following arguments:"
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the scheduling policy.In addition to all the arguments above, the following attributes are exported:"
  type        = string
}
variable "compute_reservation" {
  description = "Value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see FairsharePolicy."
  type        = string
}
variable "fairshare_policy" {
  description = "Fairshare policy block specifies the compute_reservation, share_delay_seconds, and share_distribution of the scheduling policy. The fairshare_policy block is documented below."
  type        = string
}
variable "name" {
  description = "Name of the scheduling policy."
  type        = string
}
output "share_identifier" {
  description = "Fair share identifier or fair share identifier prefix. For more information, see ShareAttributes."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tagsA fairshare_policy block supports the following arguments:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) ARN of the scheduling policy.In addition to all the arguments above, the following attributes are exported:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_reservation" {
  description = "Value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see FairsharePolicy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.compute_reservation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fairshare_policy" {
  description = "Fairshare policy block specifies the compute_reservation, share_delay_seconds, and share_distribution of the scheduling policy. The fairshare_policy block is documented below."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.fairshare_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the scheduling policy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_delay_seconds" {
  description = "Time period to use to calculate a fair share percentage for each fair share identifier in use, in seconds. For more information, see FairsharePolicy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_delay_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_distribution" {
  description = "One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see FairsharePolicy. The share_distribution block is documented below.A share_distribution block supports the following arguments:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_distribution
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_delay_seconds" {
  description = "Time period to use to calculate a fair share percentage for each fair share identifier in use, in seconds. For more information, see FairsharePolicy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_delay_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_distribution" {
  description = "One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see FairsharePolicy. The share_distribution block is documented below.A share_distribution block supports the following arguments:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_distribution
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_identifier" {
  description = "Fair share identifier or fair share identifier prefix. For more information, see ShareAttributes."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tagsA fairshare_policy block supports the following arguments:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_reservation" {
  description = "Value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see FairsharePolicy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.compute_reservation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fairshare_policy" {
  description = "Fairshare policy block specifies the compute_reservation, share_delay_seconds, and share_distribution of the scheduling policy. The fairshare_policy block is documented below."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.fairshare_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the scheduling policy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.name
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
