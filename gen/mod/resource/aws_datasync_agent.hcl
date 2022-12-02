resource "aws_datasync_agent" "aws_datasync_agent" {
  activation_key        = var.activation_key
  subnet_arns           = var.subnet_arns
  vpc_endpoint_id       = var.vpc_endpoint_id
  tags_all              = var.tags_all
  arn                   = var.arn
  id                    = var.id
  ip_address            = var.ip_address
  name                  = var.name
  private_link_endpoint = var.private_link_endpoint
  security_group_arns   = var.security_group_arns
  tags                  = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Agent."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Agent."
  type        = string
}
variable "ip_address" {
  description = "(Optional) DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with activation_key. DataSync Agent must be accessible on port 80 from where Terraform is running."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the DataSync Agent."
  type        = string
}
variable "private_link_endpoint" {
  description = "(Optional) The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with activation_key."
  type        = string
  default     = ""
}
variable "security_group_arns" {
  description = "(Optional) The ARNs of the security groups used to protect your data transfer task subnets."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "activation_key" {
  description = "(Optional) DataSync Agent activation key during resource creation. Conflicts with ip_address. If an ip_address is provided instead, Terraform will retrieve the activation_key as part of the resource creation."
  type        = string
  default     = ""
}
variable "subnet_arns" {
  description = "(Optional) The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task."
  type        = string
  default     = ""
}
variable "vpc_endpoint_id" {
  description = "(Optional) The ID of the VPC (virtual private cloud) endpoint that the agent has access to.In addition to all arguments above, the following attributes are exported:"
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
output "vpc_endpoint_id" {
  description = "(Optional) The ID of the VPC (virtual private cloud) endpoint that the agent has access to.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datasync_agent.aws_datasync_agent.vpc_endpoint_id
}
output "activation_key" {
  description = "(Optional) DataSync Agent activation key during resource creation. Conflicts with ip_address. If an ip_address is provided instead, Terraform will retrieve the activation_key as part of the resource creation."
  value       = aws_datasync_agent.aws_datasync_agent.activation_key
}
output "subnet_arns" {
  description = "(Optional) The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task."
  value       = aws_datasync_agent.aws_datasync_agent.subnet_arns
}
output "ip_address" {
  description = "(Optional) DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with activation_key. DataSync Agent must be accessible on port 80 from where Terraform is running."
  value       = aws_datasync_agent.aws_datasync_agent.ip_address
}
output "name" {
  description = "(Required) Name of the DataSync Agent."
  value       = aws_datasync_agent.aws_datasync_agent.name
}
output "private_link_endpoint" {
  description = "(Optional) The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with activation_key."
  value       = aws_datasync_agent.aws_datasync_agent.private_link_endpoint
}
output "security_group_arns" {
  description = "(Optional) The ARNs of the security groups used to protect your data transfer task subnets."
  value       = aws_datasync_agent.aws_datasync_agent.security_group_arns
}
output "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_datasync_agent.aws_datasync_agent.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_datasync_agent.aws_datasync_agent.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Agent."
  value       = aws_datasync_agent.aws_datasync_agent.arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Agent."
  value       = aws_datasync_agent.aws_datasync_agent.id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_datasync_agent.aws_datasync_agent.create
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Agent."
  value       = aws_datasync_agent.aws_datasync_agent.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_datasync_agent.aws_datasync_agent.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Agent."
  value       = aws_datasync_agent.aws_datasync_agent.arn
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
      "kind/name"                   = "aws_datasync_agent"
      "kind/version"                = "v0.1.0"
    }
  }
}
