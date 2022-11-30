resource "aws_cloudtrail_event_data_store" "aws_cloudtrail_event_data_store" {
  equals                         = var.equals
  multi_region_enabled           = var.multi_region_enabled
  not_ends_with                  = var.not_ends_with
  arn                            = var.arn
  retention_period               = var.retention_period
  starts_with                    = var.starts_with
  field                          = var.field
  organization_enabled           = var.organization_enabled
  tags                           = var.tags
  name                           = var.name
  ends_with                      = var.ends_with
  field_selector                 = var.field_selector
  id                             = var.id
  not_equals                     = var.not_equals
  not_starts_with                = var.not_starts_with
  termination_protection_enabled = var.termination_protection_enabled
  advanced_event_selector        = var.advanced_event_selector
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "advanced_event_selector" {
  description = "(Optional) The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see Log events by using advanced event selectors in the CloudTrail User Guide."
  type        = string
}
variable "ends_with" {
  description = " (Optional) - A list of values that includes events that match the last few characters of the event record field specified as the value of field."
  type        = string
}
variable "field_selector" {
  description = " (Required) - Specifies the selector statements in an advanced event selector. Fields documented below.Field Selector ArgumentsFor strongfield_selector the following attributes are supported."
  type        = string
}
variable "id" {
  description = "Name of the event data store."
  type        = string
}
variable "not_equals" {
  description = " (Optional) - A list of values that excludes events that match the exact value of the event record field specified as the value of field."
  type        = string
}
variable "not_starts_with" {
  description = " (Optional) - A list of values that excludes events that match the first few characters of the event record field specified as the value of field."
  type        = string
}
variable "termination_protection_enabled" {
  description = "(Optional) Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: true.Advanced Event Selector ArgumentsFor strongadvanced_event_selector the following attributes are supported."
  type        = string
}
variable "arn" {
  description = "ARN of the event data store."
  type        = string
}
variable "equals" {
  description = " (Optional) - A list of values that includes events that match the exact value of the event record field specified as the value of field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields."
  type        = string
}
variable "multi_region_enabled" {
  description = "(Optional) Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: true."
  type        = string
}
variable "not_ends_with" {
  description = " (Optional) - A list of values that excludes events that match the last few characters of the event record field specified as the value of field.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "field" {
  description = " (Required) - Specifies a field in an event record on which to filter events to be logged. You can specify only the following values: readOnly, eventSource, eventName, eventCategory, resources.type, resources.ARN."
  type        = string
}
variable "retention_period" {
  description = "(Optional) The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: 2555."
  type        = string
}
variable "starts_with" {
  description = " (Optional) - A list of values that includes events that match the first few characters of the event record field specified as the value of field."
  type        = string
}
variable "name" {
  description = " (Optional) - Specifies the name of the advanced event selector."
  type        = string
}
variable "organization_enabled" {
  description = "(Optional) Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: false."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "field" {
  description = " (Required) - Specifies a field in an event record on which to filter events to be logged. You can specify only the following values: readOnly, eventSource, eventName, eventCategory, resources.type, resources.ARN."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.field
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retention_period" {
  description = "(Optional) The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: 2555."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.retention_period
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "starts_with" {
  description = " (Optional) - A list of values that includes events that match the first few characters of the event record field specified as the value of field."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.starts_with
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = " (Optional) - Specifies the name of the advanced event selector."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organization_enabled" {
  description = "(Optional) Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: false."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.organization_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the event data store."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_equals" {
  description = " (Optional) - A list of values that excludes events that match the exact value of the event record field specified as the value of field."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.not_equals
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_starts_with" {
  description = " (Optional) - A list of values that excludes events that match the first few characters of the event record field specified as the value of field."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.not_starts_with
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "termination_protection_enabled" {
  description = "(Optional) Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: true.Advanced Event Selector ArgumentsFor strongadvanced_event_selector the following attributes are supported."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.termination_protection_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_event_selector" {
  description = "(Optional) The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see Log events by using advanced event selectors in the CloudTrail User Guide."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.advanced_event_selector
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ends_with" {
  description = " (Optional) - A list of values that includes events that match the last few characters of the event record field specified as the value of field."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.ends_with
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "field_selector" {
  description = " (Required) - Specifies the selector statements in an advanced event selector. Fields documented below.Field Selector ArgumentsFor strongfield_selector the following attributes are supported."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.field_selector
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_ends_with" {
  description = " (Optional) - A list of values that excludes events that match the last few characters of the event record field specified as the value of field.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.not_ends_with
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the event data store."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "equals" {
  description = " (Optional) - A list of values that includes events that match the exact value of the event record field specified as the value of field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.equals
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multi_region_enabled" {
  description = "(Optional) Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: true."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.multi_region_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the event data store."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the event data store."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudtrail_event_data_store.aws_cloudtrail_event_data_store.tags_all
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
      "kind/name"                   = "aws_cloudtrail_event_data_store"
      "kind/version"                = "v0.1.0"
    }
  }
}
