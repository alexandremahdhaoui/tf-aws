resource "aws_directory_service_radius_settings" "aws_directory_service_radius_settings" {
  radius_servers          = var.radius_servers
  shared_secret           = var.shared_secret
  use_same_username       = var.use_same_username
  authentication_protocol = var.authentication_protocol
  directory_id            = var.directory_id
  display_label           = var.display_label
  radius_retries          = var.radius_retries
  create                  = var.create
  id                      = var.id
  radius_port             = var.radius_port
  radius_timeout          = var.radius_timeout
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The directory identifier.Timeoutsaws_directory_service_radius_settings provides the following Timeouts configuration options:"
  type        = string
}
variable "radius_port" {
  description = "(Required) The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers."
  type        = string
}
variable "radius_timeout" {
  description = "(Required) The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of 1. Maximum value of 50."
  type        = string
}
variable "create" {
  description = "(Default 30 minutes) Used for RADIUS settings creation"
  type        = string
}
variable "directory_id" {
  description = "(Required) The identifier of the directory for which you want to manager RADIUS settings."
  type        = string
}
variable "display_label" {
  description = "(Required) Display label."
  type        = string
}
variable "radius_retries" {
  description = "(Required) The maximum number of times that communication with the RADIUS server is attempted. Minimum value of 0. Maximum value of 10."
  type        = string
}
variable "radius_servers" {
  description = "(Required) An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer."
  type        = string
}
variable "shared_secret" {
  description = "(Required) Required for enabling RADIUS on the directory."
  type        = string
}
variable "use_same_username" {
  description = "(Optional) Not currently used.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "authentication_protocol" {
  description = "(Optional) The protocol specified for your RADIUS endpoints. Valid values: PAP, CHAP, MS-CHAPv1, MS-CHAPv2."
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
output "directory_id" {
  description = "(Required) The identifier of the directory for which you want to manager RADIUS settings."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.directory_id
}
output "display_label" {
  description = "(Required) Display label."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.display_label
}
output "radius_retries" {
  description = "(Required) The maximum number of times that communication with the RADIUS server is attempted. Minimum value of 0. Maximum value of 10."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.radius_retries
}
output "radius_servers" {
  description = "(Required) An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.radius_servers
}
output "shared_secret" {
  description = "(Required) Required for enabling RADIUS on the directory."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.shared_secret
}
output "use_same_username" {
  description = "(Optional) Not currently used.In addition to all arguments above, the following attributes are exported:"
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.use_same_username
}
output "authentication_protocol" {
  description = "(Optional) The protocol specified for your RADIUS endpoints. Valid values: PAP, CHAP, MS-CHAPv1, MS-CHAPv2."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.authentication_protocol
}
output "id" {
  description = "The directory identifier.Timeoutsaws_directory_service_radius_settings provides the following Timeouts configuration options:"
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.id
}
output "radius_port" {
  description = "(Required) The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.radius_port
}
output "radius_timeout" {
  description = "(Required) The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of 1. Maximum value of 50."
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.radius_timeout
}
output "create" {
  description = "(Default 30 minutes) Used for RADIUS settings creation"
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.create
}
output "create" {
  description = "(Default 30 minutes) Used for RADIUS settings creation"
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.create
}
output "id" {
  description = "The directory identifier.Timeoutsaws_directory_service_radius_settings provides the following Timeouts configuration options:"
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.id
}
output "update" {
  description = "(Default 30 minutes) Used for RADIUS settings update"
  value       = aws_directory_service_radius_settings.aws_directory_service_radius_settings.update
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
      "kind/name"                   = "aws_directory_service_radius_settings"
      "kind/version"                = "v0.1.0"
    }
  }
}
