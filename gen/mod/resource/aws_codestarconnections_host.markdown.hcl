resource "aws_codestarconnections_host.markdown" "aws_codestarconnections_host.markdown" {
  security_group_ids = var.security_group_ids
  vpc_id             = var.vpc_id
  id                 = var.id
  provider_type      = var.provider_type
  provider_endpoint  = var.provider_endpoint
  subnet_ids         = var.subnet_ids
  tls_certificate    = var.tls_certificate
  vpc_configuration  = var.vpc_configuration
  arn                = var.arn
  name               = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) The name of the host to be created. The name must be unique in the calling AWS account."
  type        = string
}
variable "provider_endpoint" {
  description = "(Required) The endpoint of the infrastructure to be represented by the host after it is created."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) The ID of the subnet or subnets associated with the Amazon VPC connected to the infrastructure where your provider type is installed."
  type        = string
}
variable "tls_certificate" {
  description = "(Optional) The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed."
  type        = string
  default     = ""
}
variable "vpc_configuration" {
  description = "(Optional) The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.A vpc_configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The CodeStar Host ARN."
  type        = string
}
variable "provider_type" {
  description = "(Required) The name of the external provider where your third-party code repository is configured."
  type        = string
}
variable "security_group_ids" {
  description = "(Required) he ID of the security group or security groups associated with the Amazon VPC connected to the infrastructure where your provider type is installed."
  type        = string
}
variable "vpc_id" {
  description = "(Required) The ID of the Amazon VPC connected to the infrastructure where your provider type is installed.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "The CodeStar Host ARN."
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
  description = "The CodeStar Host ARN."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.arn
}
output "name" {
  description = "(Required) The name of the host to be created. The name must be unique in the calling AWS account."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.name
}
output "provider_endpoint" {
  description = "(Required) The endpoint of the infrastructure to be represented by the host after it is created."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.provider_endpoint
}
output "subnet_ids" {
  description = "(Required) The ID of the subnet or subnets associated with the Amazon VPC connected to the infrastructure where your provider type is installed."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.subnet_ids
}
output "tls_certificate" {
  description = "(Optional) The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.tls_certificate
}
output "vpc_configuration" {
  description = "(Optional) The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.A vpc_configuration block supports the following arguments:"
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.vpc_configuration
}
output "id" {
  description = "The CodeStar Host ARN."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.id
}
output "provider_type" {
  description = "(Required) The name of the external provider where your third-party code repository is configured."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.provider_type
}
output "security_group_ids" {
  description = "(Required) he ID of the security group or security groups associated with the Amazon VPC connected to the infrastructure where your provider type is installed."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.security_group_ids
}
output "vpc_id" {
  description = "(Required) The ID of the Amazon VPC connected to the infrastructure where your provider type is installed.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.vpc_id
}
output "arn" {
  description = "The CodeStar Host ARN."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.arn
}
output "id" {
  description = "The CodeStar Host ARN."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.id
}
output "status" {
  description = "The CodeStar Host status. Possible values are PENDING, AVAILABLE, VPC_CONFIG_DELETING, VPC_CONFIG_INITIALIZING, and VPC_CONFIG_FAILED_INITIALIZATION."
  value       = aws_codestarconnections_host.markdown.aws_codestarconnections_host.markdown.status
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
      "kind/name"                   = "aws_codestarconnections_host.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
