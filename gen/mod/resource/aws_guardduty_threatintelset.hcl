resource "aws_guardduty_threatintelset" "aws_guardduty_threatintelset" {
  activate    = var.activate
  arn         = var.arn
  detector_id = var.detector_id
  format      = var.format
  id          = var.id
  location    = var.location
  name        = var.name
  tags        = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "activate" {
  description = "(Required) Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the GuardDuty ThreatIntelSet."
  type        = string
}
variable "detector_id" {
  description = "(Required) The detector ID of the GuardDuty."
  type        = string
}
variable "format" {
  description = "(Required) The format of the file that contains the ThreatIntelSet. Valid values: TXT | STIX | OTX_CSV | ALIEN_VAULT | PROOF_POINT | FIRE_EYE"
  type        = string
}
variable "id" {
  description = "The ID of the GuardDuty ThreatIntelSet and the detector ID. Format: <DetectorID>:<ThreatIntelSetID>"
  type        = string
}
variable "location" {
  description = "(Required) The URI of the file that contains the ThreatIntelSet."
  type        = string
}
variable "name" {
  description = "(Required) The friendly name to identify the ThreatIntelSet."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "activate" {
  description = "(Required) Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet."
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.activate
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the GuardDuty ThreatIntelSet."
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.arn
}
output "detector_id" {
  description = "(Required) The detector ID of the GuardDuty."
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.detector_id
}
output "format" {
  description = "(Required) The format of the file that contains the ThreatIntelSet. Valid values: TXT | STIX | OTX_CSV | ALIEN_VAULT | PROOF_POINT | FIRE_EYE"
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.format
}
output "id" {
  description = "The ID of the GuardDuty ThreatIntelSet and the detector ID. Format: <DetectorID>:<ThreatIntelSetID>"
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.id
}
output "location" {
  description = "(Required) The URI of the file that contains the ThreatIntelSet."
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.location
}
output "name" {
  description = "(Required) The friendly name to identify the ThreatIntelSet."
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.name
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the GuardDuty ThreatIntelSet."
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.arn
}
output "id" {
  description = "The ID of the GuardDuty ThreatIntelSet and the detector ID. Format: <DetectorID>:<ThreatIntelSetID>"
  value       = aws_guardduty_threatintelset.aws_guardduty_threatintelset.id
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
      "kind/name"                   = "aws_guardduty_threatintelset"
      "kind/version"                = "v0.1.0"
    }
  }
}
