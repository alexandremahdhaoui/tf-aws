resource "aws_connect_phone_number" "aws_connect_phone_number" {
  arn          = var.arn
  message      = var.message
  phone_number = var.phone_number
  target_arn   = var.target_arn
  create       = var.create
  status       = var.status
  tags_all     = var.tags_all
  update       = var.update
  country_code = var.country_code
  description  = var.description
  id           = var.id
  type         = var.type
  prefix       = var.prefix
  tags         = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 2m)"
  type        = string
}
variable "status" {
  description = "The status of the phone number. Valid Values: CLAIMED | IN_PROGRESS | FAILED.TimeoutsConfiguration options:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.statusThe status configuration block supports the following attributes:"
  type        = string
}
variable "update" {
  description = "(Default 2m)"
  type        = string
}
variable "country_code" {
  description = "(Required, Forces new resource) The ISO country code. For a list of Valid values, refer to PhoneNumberCountryCode."
  type        = string
}
variable "description" {
  description = "(Optional, Forces new resource) The description of the phone number."
  type        = string
}
variable "id" {
  description = "The identifier of the phone number."
  type        = string
}
variable "type" {
  description = "(Required, Forces new resource) The type of phone number. Valid Values: TOLL_FREE | DID.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "prefix" {
  description = "(Optional, Forces new resource) The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain + as part of the country code. Do not specify this argument when importing the resource."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the Phone Number. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the phone number."
  type        = string
}
variable "message" {
  description = "The status message."
  type        = string
}
variable "phone_number" {
  description = "The phone number. Phone numbers are formatted [+] [country code] [subscriber number including area code]."
  type        = string
}
variable "target_arn" {
  description = "(Required) The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to."
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
output "prefix" {
  description = "(Optional, Forces new resource) The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain + as part of the country code. Do not specify this argument when importing the resource."
  value       = aws_connect_phone_number.aws_connect_phone_number.prefix
}
output "tags" {
  description = "(Optional) Tags to apply to the Phone Number. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_connect_phone_number.aws_connect_phone_number.tags
}
output "arn" {
  description = "The ARN of the phone number."
  value       = aws_connect_phone_number.aws_connect_phone_number.arn
}
output "message" {
  description = "The status message."
  value       = aws_connect_phone_number.aws_connect_phone_number.message
}
output "phone_number" {
  description = "The phone number. Phone numbers are formatted [+] [country code] [subscriber number including area code]."
  value       = aws_connect_phone_number.aws_connect_phone_number.phone_number
}
output "target_arn" {
  description = "(Required) The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to."
  value       = aws_connect_phone_number.aws_connect_phone_number.target_arn
}
output "create" {
  description = "(Default 2m)"
  value       = aws_connect_phone_number.aws_connect_phone_number.create
}
output "status" {
  description = "The status of the phone number. Valid Values: CLAIMED | IN_PROGRESS | FAILED.TimeoutsConfiguration options:"
  value       = aws_connect_phone_number.aws_connect_phone_number.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.statusThe status configuration block supports the following attributes:"
  value       = aws_connect_phone_number.aws_connect_phone_number.tags_all
}
output "update" {
  description = "(Default 2m)"
  value       = aws_connect_phone_number.aws_connect_phone_number.update
}
output "country_code" {
  description = "(Required, Forces new resource) The ISO country code. For a list of Valid values, refer to PhoneNumberCountryCode."
  value       = aws_connect_phone_number.aws_connect_phone_number.country_code
}
output "description" {
  description = "(Optional, Forces new resource) The description of the phone number."
  value       = aws_connect_phone_number.aws_connect_phone_number.description
}
output "id" {
  description = "The identifier of the phone number."
  value       = aws_connect_phone_number.aws_connect_phone_number.id
}
output "type" {
  description = "(Required, Forces new resource) The type of phone number. Valid Values: TOLL_FREE | DID.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_phone_number.aws_connect_phone_number.type
}
output "status" {
  description = "The status of the phone number. Valid Values: CLAIMED | IN_PROGRESS | FAILED.TimeoutsConfiguration options:"
  value       = aws_connect_phone_number.aws_connect_phone_number.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.statusThe status configuration block supports the following attributes:"
  value       = aws_connect_phone_number.aws_connect_phone_number.tags_all
}
output "create" {
  description = "(Default 2m)"
  value       = aws_connect_phone_number.aws_connect_phone_number.create
}
output "phone_number" {
  description = "The phone number. Phone numbers are formatted [+] [country code] [subscriber number including area code]."
  value       = aws_connect_phone_number.aws_connect_phone_number.phone_number
}
output "id" {
  description = "The identifier of the phone number."
  value       = aws_connect_phone_number.aws_connect_phone_number.id
}
output "message" {
  description = "The status message."
  value       = aws_connect_phone_number.aws_connect_phone_number.message
}
output "update" {
  description = "(Default 2m)"
  value       = aws_connect_phone_number.aws_connect_phone_number.update
}
output "arn" {
  description = "The ARN of the phone number."
  value       = aws_connect_phone_number.aws_connect_phone_number.arn
}
output "delete" {
  description = "(Default 2m)"
  value       = aws_connect_phone_number.aws_connect_phone_number.delete
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
      "kind/name"                   = "aws_connect_phone_number"
      "kind/version"                = "v0.1.0"
    }
  }
}
