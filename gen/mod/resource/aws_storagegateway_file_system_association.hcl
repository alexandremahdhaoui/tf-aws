resource "aws_storagegateway_file_system_association" "aws_storagegateway_file_system_association" {
  cache_stale_timeout_in_seconds = var.cache_stale_timeout_in_seconds
  location_arn                   = var.location_arn
  tags                           = var.tags
  username                       = var.username
  cache_attributes               = var.cache_attributes
  audit_destination_arn          = var.audit_destination_arn
  gateway_arn                    = var.gateway_arn
  id                             = var.id
  password                       = var.password
  arn                            = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "audit_destination_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the storage used for the audit logs."
  type        = string
  default     = ""
}
variable "gateway_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the gateway."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the FSx file system association"
  type        = string
}
variable "password" {
  description = "(Required, sensitive) The password of the user credential."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the newly created file system association."
  type        = string
}
variable "cache_stale_timeout_in_seconds" {
  description = "(Optional) Refreshes a file share's cache by using Time To Live (TTL).\nTTL is the length of time since the last refresh after which access to the directory would cause the file gateway\nto first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 0 or 300 to 2592000 seconds (5 minutes to 30 days). Defaults to 0In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "location_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.cache_attributes"
  type        = string
  default     = ""
}
variable "username" {
  description = "(Required) The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group."
  type        = string
}
variable "cache_attributes" {
  description = "(Optional) Refresh cache information. see Cache Attributes for more details."
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
output "arn" {
  description = "Amazon Resource Name (ARN) of the newly created file system association."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.arn
}
output "audit_destination_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the storage used for the audit logs."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.audit_destination_arn
}
output "gateway_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the gateway."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.gateway_arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the FSx file system association"
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.id
}
output "password" {
  description = "(Required, sensitive) The password of the user credential."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.password
}
output "cache_attributes" {
  description = "(Optional) Refresh cache information. see Cache Attributes for more details."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.cache_attributes
}
output "cache_stale_timeout_in_seconds" {
  description = "(Optional) Refreshes a file share's cache by using Time To Live (TTL).\nTTL is the length of time since the last refresh after which access to the directory would cause the file gateway\nto first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 0 or 300 to 2592000 seconds (5 minutes to 30 days). Defaults to 0In addition to all arguments above, the following attributes are exported:"
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.cache_stale_timeout_in_seconds
}
output "location_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.location_arn
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.cache_attributes"
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.tags
}
output "username" {
  description = "(Required) The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.username
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the newly created file system association."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the FSx file system association"
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_storagegateway_file_system_association.aws_storagegateway_file_system_association.tags_all
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
      "kind/name"                   = "aws_storagegateway_file_system_association"
      "kind/version"                = "v0.1.0"
    }
  }
}
