resource "aws_emr_studio" "aws_emr_studio" {
  url                            = var.url
  engine_security_group_id       = var.engine_security_group_id
  service_role                   = var.service_role
  subnet_ids                     = var.subnet_ids
  user_role                      = var.user_role
  vpc_id                         = var.vpc_id
  arn                            = var.arn
  auth_mode                      = var.auth_mode
  default_s3_location            = var.default_s3_location
  idp_auth_url                   = var.idp_auth_url
  name                           = var.name
  workspace_security_group_id    = var.workspace_security_group_id
  description                    = var.description
  idp_relay_state_parameter_name = var.idp_relay_state_parameter_name
  tags                           = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "(Optional) A detailed description of the Amazon EMR Studio."
  type        = string
}
variable "idp_relay_state_parameter_name" {
  description = "(Optional) The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP."
  type        = string
}
variable "tags" {
  description = "(Optional) list of tags to apply to the EMR Cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "url" {
  description = "The unique access URL of the Amazon EMR Studio."
  type        = string
}
variable "engine_security_group_id" {
  description = "(Required) The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by vpc_id."
  type        = string
}
variable "service_role" {
  description = "(Required) The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by vpc_id. Studio users can create a Workspace in any of the specified subnets."
  type        = string
}
variable "user_role" {
  description = "(Optional) - The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpc_id" {
  description = "(Required) The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio."
  type        = string
}
variable "arn" {
  description = "- ARN of the studio."
  type        = string
}
variable "auth_mode" {
  description = "- (Required) Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are SSO or IAM."
  type        = string
}
variable "default_s3_location" {
  description = "(Required) The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files."
  type        = string
}
variable "idp_auth_url" {
  description = "(Optional) The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials."
  type        = string
}
variable "name" {
  description = "(Required) A descriptive name for the Amazon EMR Studio."
  type        = string
}
variable "workspace_security_group_id" {
  description = "(Required) The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by vpc_id."
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
  description = "(Optional) A detailed description of the Amazon EMR Studio."
  value       = aws_emr_studio.aws_emr_studio.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "idp_relay_state_parameter_name" {
  description = "(Optional) The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP."
  value       = aws_emr_studio.aws_emr_studio.idp_relay_state_parameter_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) list of tags to apply to the EMR Cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_emr_studio.aws_emr_studio.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "url" {
  description = "The unique access URL of the Amazon EMR Studio."
  value       = aws_emr_studio.aws_emr_studio.url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_security_group_id" {
  description = "(Required) The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by vpc_id."
  value       = aws_emr_studio.aws_emr_studio.engine_security_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_role" {
  description = "(Required) The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services."
  value       = aws_emr_studio.aws_emr_studio.service_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Required) A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by vpc_id. Studio users can create a Workspace in any of the specified subnets."
  value       = aws_emr_studio.aws_emr_studio.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_role" {
  description = "(Optional) - The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.In addition to all arguments above, the following attributes are exported:"
  value       = aws_emr_studio.aws_emr_studio.user_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Required) The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio."
  value       = aws_emr_studio.aws_emr_studio.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "- ARN of the studio."
  value       = aws_emr_studio.aws_emr_studio.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auth_mode" {
  description = "- (Required) Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are SSO or IAM."
  value       = aws_emr_studio.aws_emr_studio.auth_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_s3_location" {
  description = "(Required) The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files."
  value       = aws_emr_studio.aws_emr_studio.default_s3_location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "idp_auth_url" {
  description = "(Optional) The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials."
  value       = aws_emr_studio.aws_emr_studio.idp_auth_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) A descriptive name for the Amazon EMR Studio."
  value       = aws_emr_studio.aws_emr_studio.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workspace_security_group_id" {
  description = "(Required) The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by vpc_id."
  value       = aws_emr_studio.aws_emr_studio.workspace_security_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "- ARN of the studio."
  value       = aws_emr_studio.aws_emr_studio.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "url" {
  description = "The unique access URL of the Amazon EMR Studio."
  value       = aws_emr_studio.aws_emr_studio.url
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
      "kind/name"                   = "aws_emr_studio"
      "kind/version"                = "v0.1.0"
    }
  }
}
