resource "aws_batch_scheduling_policy" "aws_batch_scheduling_policy" {
  compute_reservation = var.compute_reservation
  name                = var.name
  share_distribution  = var.share_distribution
  share_identifier    = var.share_identifier
  arn                 = var.arn
  fairshare_policy    = var.fairshare_policy
  share_delay_seconds = var.share_delay_seconds
  tags                = var.tags
  weight_factor       = var.weight_factor
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "compute_reservation" {
  description = "(Optional) A value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see FairsharePolicy."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Specifies the name of the scheduling policy."
  type        = string
}
variable "share_distribution" {
  description = "(Optional) One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see FairsharePolicy. The share_distribution block is documented below.A share_distribution block supports the following arguments:"
  type        = string
  default     = ""
}
variable "share_identifier" {
  description = "(Required) A fair share identifier or fair share identifier prefix. For more information, see ShareAttributes."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name of the scheduling policy."
  type        = string
}
variable "fairshare_policy" {
  description = "(Optional) A fairshare policy block specifies the compute_reservation, share_delay_seconds, and share_distribution of the scheduling policy. The fairshare_policy block is documented below."
  type        = string
  default     = ""
}
variable "share_delay_seconds" {
  description = "(Optional) The time period to use to calculate a fair share percentage for each fair share identifier in use, in seconds. For more information, see FairsharePolicy."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A fairshare_policy block supports the following arguments:"
  type        = string
  default     = ""
}
variable "weight_factor" {
  description = "(Optional) The weight factor for the fair share identifier. For more information, see ShareAttributes.In addition to all arguments above, the following attributes are exported:"
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
output "share_delay_seconds" {
  description = "(Optional) The time period to use to calculate a fair share percentage for each fair share identifier in use, in seconds. For more information, see FairsharePolicy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_delay_seconds
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A fairshare_policy block supports the following arguments:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.tags
}
output "weight_factor" {
  description = "(Optional) The weight factor for the fair share identifier. For more information, see ShareAttributes.In addition to all arguments above, the following attributes are exported:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.weight_factor
}
output "arn" {
  description = "The Amazon Resource Name of the scheduling policy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.arn
}
output "fairshare_policy" {
  description = "(Optional) A fairshare policy block specifies the compute_reservation, share_delay_seconds, and share_distribution of the scheduling policy. The fairshare_policy block is documented below."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.fairshare_policy
}
output "share_distribution" {
  description = "(Optional) One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see FairsharePolicy. The share_distribution block is documented below.A share_distribution block supports the following arguments:"
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_distribution
}
output "share_identifier" {
  description = "(Required) A fair share identifier or fair share identifier prefix. For more information, see ShareAttributes."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.share_identifier
}
output "compute_reservation" {
  description = "(Optional) A value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see FairsharePolicy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.compute_reservation
}
output "name" {
  description = "(Required) Specifies the name of the scheduling policy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.name
}
output "arn" {
  description = "The Amazon Resource Name of the scheduling policy."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_batch_scheduling_policy.aws_batch_scheduling_policy.tags_all
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
      "kind/name"                   = "aws_batch_scheduling_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
