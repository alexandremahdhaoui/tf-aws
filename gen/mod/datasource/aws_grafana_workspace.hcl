datasource "aws_grafana_workspace" "aws_grafana_workspace" {
  organizational_units      = var.organizational_units
  status                    = var.status
  created_date              = var.created_date
  notification_destinations = var.notification_destinations
  organization_role_name    = var.organization_role_name
  account_access_type       = var.account_access_type
  description               = var.description
  name                      = var.name
  stack_set_name            = var.stack_set_name
  data_sources              = var.data_sources
  last_updated_date         = var.last_updated_date
  role_arn                  = var.role_arn
  grafana_version           = var.grafana_version
  permission_type           = var.permission_type
  workspace_id              = var.workspace_id
  arn                       = var.arn
  authentication_providers  = var.authentication_providers
  endpoint                  = var.endpoint
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "created_date" {
  description = "Creation date of the Grafana workspace."
  type        = string
}
variable "notification_destinations" {
  description = "The notification destinations."
  type        = string
}
variable "organization_role_name" {
  description = "The role name that the workspace uses to access resources through Amazon Organizations."
  type        = string
}
variable "organizational_units" {
  description = "The Amazon Organizations organizational units that the workspace is authorized to use data sources from."
  type        = string
}
variable "status" {
  description = "Status of the Grafana workspace."
  type        = string
}
variable "account_access_type" {
  description = "(Required) Type of account access for the workspace. Valid values are CURRENT_ACCOUNT and ORGANIZATION. If ORGANIZATION is specified, then organizational_units must also be present."
  type        = string
}
variable "description" {
  description = "Workspace description."
  type        = string
}
variable "name" {
  description = "Grafana workspace name."
  type        = string
}
variable "data_sources" {
  description = "Data sources for the workspace."
  type        = string
}
variable "last_updated_date" {
  description = "Last updated date of the Grafana workspace."
  type        = string
}
variable "role_arn" {
  description = "IAM role ARN that the workspace assumes."
  type        = string
}
variable "stack_set_name" {
  description = "AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace."
  type        = string
}
variable "arn" {
  description = "ARN of the Grafana workspace."
  type        = string
}
variable "authentication_providers" {
  description = "(Required) Authentication providers for the workspace. Valid values are AWS_SSO, SAML, or both."
  type        = string
}
variable "endpoint" {
  description = "Endpoint of the Grafana workspace."
  type        = string
}
variable "grafana_version" {
  description = "Version of Grafana running on the workspace."
  type        = string
}
variable "permission_type" {
  description = "Permission type of the workspace."
  type        = string
}
variable "workspace_id" {
  description = "(Required) Grafana workspace ID.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "last_updated_date" {
  description = "Last updated date of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.last_updated_date
}
output "role_arn" {
  description = "IAM role ARN that the workspace assumes."
  value       = aws_grafana_workspace.aws_grafana_workspace.role_arn
}
output "stack_set_name" {
  description = "AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.stack_set_name
}
output "data_sources" {
  description = "Data sources for the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.data_sources
}
output "authentication_providers" {
  description = "(Required) Authentication providers for the workspace. Valid values are AWS_SSO, SAML, or both."
  value       = aws_grafana_workspace.aws_grafana_workspace.authentication_providers
}
output "endpoint" {
  description = "Endpoint of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.endpoint
}
output "grafana_version" {
  description = "Version of Grafana running on the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.grafana_version
}
output "permission_type" {
  description = "Permission type of the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.permission_type
}
output "workspace_id" {
  description = "(Required) Grafana workspace ID.In addition to all arguments above, the following attributes are exported:"
  value       = aws_grafana_workspace.aws_grafana_workspace.workspace_id
}
output "arn" {
  description = "ARN of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.arn
}
output "notification_destinations" {
  description = "The notification destinations."
  value       = aws_grafana_workspace.aws_grafana_workspace.notification_destinations
}
output "organization_role_name" {
  description = "The role name that the workspace uses to access resources through Amazon Organizations."
  value       = aws_grafana_workspace.aws_grafana_workspace.organization_role_name
}
output "organizational_units" {
  description = "The Amazon Organizations organizational units that the workspace is authorized to use data sources from."
  value       = aws_grafana_workspace.aws_grafana_workspace.organizational_units
}
output "status" {
  description = "Status of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.status
}
output "created_date" {
  description = "Creation date of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.created_date
}
output "description" {
  description = "Workspace description."
  value       = aws_grafana_workspace.aws_grafana_workspace.description
}
output "name" {
  description = "Grafana workspace name."
  value       = aws_grafana_workspace.aws_grafana_workspace.name
}
output "account_access_type" {
  description = "(Required) Type of account access for the workspace. Valid values are CURRENT_ACCOUNT and ORGANIZATION. If ORGANIZATION is specified, then organizational_units must also be present."
  value       = aws_grafana_workspace.aws_grafana_workspace.account_access_type
}
output "account_access_type" {
  description = "(Required) Type of account access for the workspace. Valid values are CURRENT_ACCOUNT and ORGANIZATION. If ORGANIZATION is specified, then organizational_units must also be present."
  value       = aws_grafana_workspace.aws_grafana_workspace.account_access_type
}
output "arn" {
  description = "ARN of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.arn
}
output "name" {
  description = "Grafana workspace name."
  value       = aws_grafana_workspace.aws_grafana_workspace.name
}
output "stack_set_name" {
  description = "AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.stack_set_name
}
output "status" {
  description = "Status of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.status
}
output "endpoint" {
  description = "Endpoint of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.endpoint
}
output "grafana_version" {
  description = "Version of Grafana running on the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.grafana_version
}
output "notification_destinations" {
  description = "The notification destinations."
  value       = aws_grafana_workspace.aws_grafana_workspace.notification_destinations
}
output "organization_role_name" {
  description = "The role name that the workspace uses to access resources through Amazon Organizations."
  value       = aws_grafana_workspace.aws_grafana_workspace.organization_role_name
}
output "role_arn" {
  description = "IAM role ARN that the workspace assumes."
  value       = aws_grafana_workspace.aws_grafana_workspace.role_arn
}
output "authentication_providers" {
  description = "(Required) Authentication providers for the workspace. Valid values are AWS_SSO, SAML, or both."
  value       = aws_grafana_workspace.aws_grafana_workspace.authentication_providers
}
output "created_date" {
  description = "Creation date of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.created_date
}
output "data_sources" {
  description = "Data sources for the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.data_sources
}
output "description" {
  description = "Workspace description."
  value       = aws_grafana_workspace.aws_grafana_workspace.description
}
output "last_updated_date" {
  description = "Last updated date of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.last_updated_date
}
output "organizational_units" {
  description = "The Amazon Organizations organizational units that the workspace is authorized to use data sources from."
  value       = aws_grafana_workspace.aws_grafana_workspace.organizational_units
}
output "permission_type" {
  description = "Permission type of the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.permission_type
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
}
