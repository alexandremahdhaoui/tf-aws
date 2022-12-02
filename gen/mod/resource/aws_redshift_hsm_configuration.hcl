resource "aws_redshift_hsm_configuration" "aws_redshift_hsm_configuration" {
  arn                           = var.arn
  hsm_server_public_certificate = var.hsm_server_public_certificate
  hsm_configuration_public_key  = var.hsm_configuration_public_key
  hsm_ip_address                = var.hsm_ip_address
  hsm_partition_name            = var.hsm_partition_name
  hsm_partition_password        = var.hsm_partition_password
  tags                          = var.tags
  description                   = var.description
  hsm_configuration_identifier  = var.hsm_configuration_identifier
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Hsm Client Certificate."
  type        = string
}
variable "hsm_server_public_certificate" {
  description = "(Required, Forces new resource) The HSMs public certificate file. When using Cloud HSM, the file name is server.pem."
  type        = string
}
variable "hsm_partition_name" {
  description = "(Required, Forces new resource) The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys."
  type        = string
}
variable "hsm_partition_password" {
  description = "(Required, Forces new resource) The password required to access the HSM partition."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Required, Forces new resource) A text description of the HSM configuration to be created."
  type        = string
}
variable "hsm_configuration_identifier" {
  description = "(Required, Forces new resource) The identifier to be assigned to the new Amazon Redshift HSM configuration."
  type        = string
}
variable "hsm_configuration_public_key" {
  description = "The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM."
  type        = string
}
variable "hsm_ip_address" {
  description = "(Required, Forces new resource) The IP address that the Amazon Redshift cluster must use to access the HSM."
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
output "description" {
  description = "(Required, Forces new resource) A text description of the HSM configuration to be created."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.description
}
output "hsm_configuration_identifier" {
  description = "(Required, Forces new resource) The identifier to be assigned to the new Amazon Redshift HSM configuration."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.hsm_configuration_identifier
}
output "hsm_configuration_public_key" {
  description = "The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.hsm_configuration_public_key
}
output "hsm_ip_address" {
  description = "(Required, Forces new resource) The IP address that the Amazon Redshift cluster must use to access the HSM."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.hsm_ip_address
}
output "hsm_partition_name" {
  description = "(Required, Forces new resource) The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.hsm_partition_name
}
output "hsm_partition_password" {
  description = "(Required, Forces new resource) The password required to access the HSM partition."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.hsm_partition_password
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Hsm Client Certificate."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.arn
}
output "hsm_server_public_certificate" {
  description = "(Required, Forces new resource) The HSMs public certificate file. When using Cloud HSM, the file name is server.pem."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.hsm_server_public_certificate
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Hsm Client Certificate."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.arn
}
output "hsm_configuration_public_key" {
  description = "The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.hsm_configuration_public_key
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_redshift_hsm_configuration.aws_redshift_hsm_configuration.tags_all
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
      "kind/name"                   = "aws_redshift_hsm_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
