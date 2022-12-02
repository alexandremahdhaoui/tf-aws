resource "aws_ami_copy" "aws_ami_copy" {
  id                      = var.id
  kms_key_id              = var.kms_key_id
  source_ami_id           = var.source_ami_id
  source_ami_region       = var.source_ami_region
  update                  = var.update
  encrypted               = var.encrypted
  create                  = var.create
  destination_outpost_arn = var.destination_outpost_arn
  name                    = var.name
  tags                    = var.tags
  arn                     = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "destination_outpost_arn" {
  description = "(Optional) ARN of the Outpost to which to copy the AMI.\nOnly specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Region-unique name for the AMI."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.This resource also exposes the full set of arguments from the aws_ami resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the AMI."
  type        = string
}
variable "create" {
  description = "(Default 40m)"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used"
  type        = string
  default     = ""
}
variable "source_ami_id" {
  description = "(Required) Id of the AMI to copy. This id must be valid in the region\ngiven by source_ami_region."
  type        = string
}
variable "source_ami_region" {
  description = "(Required) Region from which the AMI will be copied. This may be the\nsame as the AWS provider region in order to create a copy within the same region."
  type        = string
}
variable "update" {
  description = "(Default 40m)"
  type        = string
}
variable "encrypted" {
  description = "(Optional) Whether the destination snapshots of the copied image should be encrypted. Defaults to false"
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the created AMI.aws_amiTimeoutsConfiguration options:"
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
output "arn" {
  description = "ARN of the AMI."
  value       = aws_ami_copy.aws_ami_copy.arn
}
output "create" {
  description = "(Default 40m)"
  value       = aws_ami_copy.aws_ami_copy.create
}
output "destination_outpost_arn" {
  description = "(Optional) ARN of the Outpost to which to copy the AMI.\nOnly specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost."
  value       = aws_ami_copy.aws_ami_copy.destination_outpost_arn
}
output "name" {
  description = "(Required) Region-unique name for the AMI."
  value       = aws_ami_copy.aws_ami_copy.name
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.This resource also exposes the full set of arguments from the aws_ami resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ami_copy.aws_ami_copy.tags
}
output "encrypted" {
  description = "(Optional) Whether the destination snapshots of the copied image should be encrypted. Defaults to false"
  value       = aws_ami_copy.aws_ami_copy.encrypted
}
output "id" {
  description = "ID of the created AMI.aws_amiTimeoutsConfiguration options:"
  value       = aws_ami_copy.aws_ami_copy.id
}
output "kms_key_id" {
  description = "(Optional) Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used"
  value       = aws_ami_copy.aws_ami_copy.kms_key_id
}
output "source_ami_id" {
  description = "(Required) Id of the AMI to copy. This id must be valid in the region\ngiven by source_ami_region."
  value       = aws_ami_copy.aws_ami_copy.source_ami_id
}
output "source_ami_region" {
  description = "(Required) Region from which the AMI will be copied. This may be the\nsame as the AWS provider region in order to create a copy within the same region."
  value       = aws_ami_copy.aws_ami_copy.source_ami_region
}
output "update" {
  description = "(Default 40m)"
  value       = aws_ami_copy.aws_ami_copy.update
}
output "arn" {
  description = "ARN of the AMI."
  value       = aws_ami_copy.aws_ami_copy.arn
}
output "create" {
  description = "(Default 40m)"
  value       = aws_ami_copy.aws_ami_copy.create
}
output "id" {
  description = "ID of the created AMI.aws_amiTimeoutsConfiguration options:"
  value       = aws_ami_copy.aws_ami_copy.id
}
output "update" {
  description = "(Default 40m)"
  value       = aws_ami_copy.aws_ami_copy.update
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
      "kind/name"                   = "aws_ami_copy"
      "kind/version"                = "v0.1.0"
    }
  }
}
