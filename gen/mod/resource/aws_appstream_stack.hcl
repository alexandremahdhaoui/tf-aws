resource "aws_appstream_stack" "aws_appstream_stack" {
  access_endpoints     = var.access_endpoints
  id                   = var.id
  name                 = var.name
  redirect_url         = var.redirect_url
  application_settings = var.application_settings
  arn                  = var.arn
  created_time         = var.created_time
  domains              = var.domains
  endpoint_type        = var.endpoint_type
  permission           = var.permission
  settings_group       = var.settings_group
  action               = var.action
  connector_type       = var.connector_type
  display_name         = var.display_name
  enabled              = var.enabled
  storage_connectors   = var.storage_connectors
  vpce_id              = var.vpce_id
  description          = var.description
  embed_host_domains   = var.embed_host_domains
  feedback_url         = var.feedback_url
  resource_identifier  = var.resource_identifier
  user_settings        = var.user_settings
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enabled" {
  description = "(Required) Whether application settings should be persisted."
  type        = string
}
variable "storage_connectors" {
  description = "(Optional) Configuration block for the storage connectors to enable.\nSee storage_connectors below."
  type        = string
  default     = ""
}
variable "vpce_id" {
  description = "(Optional) ID of the VPC in which the interface endpoint is used.application_settings"
  type        = string
  default     = ""
}
variable "action" {
  description = "(Required) Action that is enabled or disabled.\nValid values are CLIPBOARD_COPY_FROM_LOCAL_DEVICE,  CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE, DOMAIN_PASSWORD_SIGNIN, or DOMAIN_SMART_CARD_SIGNIN."
  type        = string
}
variable "connector_type" {
  description = "(Required) Type of storage connector.\nValid values are HOMEFOLDERS, GOOGLE_DRIVE, or ONE_DRIVE."
  type        = string
}
variable "display_name" {
  description = "(Optional) Stack name to display."
  type        = string
  default     = ""
}
variable "resource_identifier" {
  description = "(Optional) ARN of the storage connector.user_settings"
  type        = string
  default     = ""
}
variable "user_settings" {
  description = "user_settings below.access_endpoints"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description for the AppStream stack."
  type        = string
  default     = ""
}
variable "embed_host_domains" {
  description = "(Optional) Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions."
  type        = string
  default     = ""
}
variable "feedback_url" {
  description = "(Optional) URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. ."
  type        = string
  default     = ""
}
variable "redirect_url" {
  description = "(Optional) URL that users are redirected to after their streaming session ends."
  type        = string
  default     = ""
}
variable "access_endpoints" {
  description = "(Optional) Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.\nSee access_endpoints below."
  type        = string
  default     = ""
}
variable "id" {
  description = "Unique ID of the appstream stack."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Unique name for the AppStream stack."
  type        = string
}
variable "domains" {
  description = "(Optional) Names of the domains for the account."
  type        = string
  default     = ""
}
variable "endpoint_type" {
  description = "AccessEndpoint AWS API documentation for valid values."
  type        = string
  default     = ""
}
variable "permission" {
  description = "ENABLED or DISABLED.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "settings_group" {
  description = "(Optional) Name of the settings group.\nRequired when enabled is truestorage_connectors"
  type        = string
  default     = ""
}
variable "application_settings" {
  description = "(Optional) Settings for application settings persistence.\nSee application_settings below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the appstream stack."
  type        = string
  default     = ""
}
variable "created_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when the stack was created."
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
output "permission" {
  description = "ENABLED or DISABLED.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appstream_stack.aws_appstream_stack.permission
}
output "settings_group" {
  description = "(Optional) Name of the settings group.\nRequired when enabled is truestorage_connectors"
  value       = aws_appstream_stack.aws_appstream_stack.settings_group
}
output "application_settings" {
  description = "(Optional) Settings for application settings persistence.\nSee application_settings below."
  value       = aws_appstream_stack.aws_appstream_stack.application_settings
}
output "arn" {
  description = "ARN of the appstream stack."
  value       = aws_appstream_stack.aws_appstream_stack.arn
}
output "created_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when the stack was created."
  value       = aws_appstream_stack.aws_appstream_stack.created_time
}
output "domains" {
  description = "(Optional) Names of the domains for the account."
  value       = aws_appstream_stack.aws_appstream_stack.domains
}
output "endpoint_type" {
  description = "AccessEndpoint AWS API documentation for valid values."
  value       = aws_appstream_stack.aws_appstream_stack.endpoint_type
}
output "vpce_id" {
  description = "(Optional) ID of the VPC in which the interface endpoint is used.application_settings"
  value       = aws_appstream_stack.aws_appstream_stack.vpce_id
}
output "action" {
  description = "(Required) Action that is enabled or disabled.\nValid values are CLIPBOARD_COPY_FROM_LOCAL_DEVICE,  CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE, DOMAIN_PASSWORD_SIGNIN, or DOMAIN_SMART_CARD_SIGNIN."
  value       = aws_appstream_stack.aws_appstream_stack.action
}
output "connector_type" {
  description = "(Required) Type of storage connector.\nValid values are HOMEFOLDERS, GOOGLE_DRIVE, or ONE_DRIVE."
  value       = aws_appstream_stack.aws_appstream_stack.connector_type
}
output "display_name" {
  description = "(Optional) Stack name to display."
  value       = aws_appstream_stack.aws_appstream_stack.display_name
}
output "enabled" {
  description = "(Required) Whether application settings should be persisted."
  value       = aws_appstream_stack.aws_appstream_stack.enabled
}
output "storage_connectors" {
  description = "(Optional) Configuration block for the storage connectors to enable.\nSee storage_connectors below."
  value       = aws_appstream_stack.aws_appstream_stack.storage_connectors
}
output "description" {
  description = "(Optional) Description for the AppStream stack."
  value       = aws_appstream_stack.aws_appstream_stack.description
}
output "embed_host_domains" {
  description = "(Optional) Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions."
  value       = aws_appstream_stack.aws_appstream_stack.embed_host_domains
}
output "feedback_url" {
  description = "(Optional) URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. ."
  value       = aws_appstream_stack.aws_appstream_stack.feedback_url
}
output "resource_identifier" {
  description = "(Optional) ARN of the storage connector.user_settings"
  value       = aws_appstream_stack.aws_appstream_stack.resource_identifier
}
output "user_settings" {
  description = "user_settings below.access_endpoints"
  value       = aws_appstream_stack.aws_appstream_stack.user_settings
}
output "access_endpoints" {
  description = "(Optional) Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.\nSee access_endpoints below."
  value       = aws_appstream_stack.aws_appstream_stack.access_endpoints
}
output "id" {
  description = "Unique ID of the appstream stack."
  value       = aws_appstream_stack.aws_appstream_stack.id
}
output "name" {
  description = "(Required) Unique name for the AppStream stack."
  value       = aws_appstream_stack.aws_appstream_stack.name
}
output "redirect_url" {
  description = "(Optional) URL that users are redirected to after their streaming session ends."
  value       = aws_appstream_stack.aws_appstream_stack.redirect_url
}
output "arn" {
  description = "ARN of the appstream stack."
  value       = aws_appstream_stack.aws_appstream_stack.arn
}
output "created_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when the stack was created."
  value       = aws_appstream_stack.aws_appstream_stack.created_time
}
output "id" {
  description = "Unique ID of the appstream stack."
  value       = aws_appstream_stack.aws_appstream_stack.id
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
      "kind/name"                   = "aws_appstream_stack"
      "kind/version"                = "v0.1.0"
    }
  }
}
