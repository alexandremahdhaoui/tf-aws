resource "aws_msk_serverless_cluster" "aws_msk_serverless_cluster" {
  tags                  = var.tags
  tags_all              = var.tags_all
  client_authentication = var.client_authentication
  security_group_ids    = var.security_group_ids
  subnet_ids            = var.subnet_ids
  enabled               = var.enabled
  iam                   = var.iam
  sasl                  = var.sasl
  vpc_config            = var.vpc_config
  arn                   = var.arn
  cluster_name          = var.cluster_name
  create                = var.create
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_name" {
  description = "(Required) The name of the serverless cluster."
  type        = string
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "enabled" {
  description = "(Required) Whether SASL/IAM authentication is enabled or not.vpc_config Argument Reference"
  type        = string
}
variable "iam" {
  description = "(Required) Details for client authentication using IAM. See below.iam Argument Reference"
  type        = string
}
variable "sasl" {
  description = "(Required) Details for client authentication using SASL. See below.sasl Argument Reference"
  type        = string
}
variable "vpc_config" {
  description = "(Required) VPC configuration information. See below.client_authentication Argument Reference"
  type        = string
}
variable "arn" {
  description = "The ARN of the serverless cluster."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) Specifies up to five security groups that control inbound and outbound traffic for the serverless cluster."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Required) A list of subnets in at least two different Availability Zones that host your client applications.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "client_authentication" {
  description = "(Required) Specifies client authentication information for the serverless cluster. See below."
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
output "vpc_config" {
  description = "(Required) VPC configuration information. See below.client_authentication Argument Reference"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.vpc_config
}
output "arn" {
  description = "The ARN of the serverless cluster."
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.arn
}
output "cluster_name" {
  description = "(Required) The name of the serverless cluster."
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.cluster_name
}
output "create" {
  description = "(Default 120m)"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.create
}
output "enabled" {
  description = "(Required) Whether SASL/IAM authentication is enabled or not.vpc_config Argument Reference"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.enabled
}
output "iam" {
  description = "(Required) Details for client authentication using IAM. See below.iam Argument Reference"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.iam
}
output "sasl" {
  description = "(Required) Details for client authentication using SASL. See below.sasl Argument Reference"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.sasl
}
output "client_authentication" {
  description = "(Required) Specifies client authentication information for the serverless cluster. See below."
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.client_authentication
}
output "security_group_ids" {
  description = "(Optional) Specifies up to five security groups that control inbound and outbound traffic for the serverless cluster."
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.security_group_ids
}
output "subnet_ids" {
  description = "(Required) A list of subnets in at least two different Availability Zones that host your client applications.In addition to all arguments above, the following attributes are exported:"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.subnet_ids
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.tags_all
}
output "arn" {
  description = "The ARN of the serverless cluster."
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.arn
}
output "create" {
  description = "(Default 120m)"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.create
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.delete
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_msk_serverless_cluster.aws_msk_serverless_cluster.tags_all
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
      "kind/name"                   = "aws_msk_serverless_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
