resource "aws_sagemaker_workteam" "aws_sagemaker_workteam" {
  cognito_member_definition  = var.cognito_member_definition
  member_definition          = var.member_definition
  client_id                  = var.client_id
  groups                     = var.groups
  notification_configuration = var.notification_configuration
  notification_topic_arn     = var.notification_topic_arn
  description                = var.description
  user_pool                  = var.user_pool
  workforce_name             = var.workforce_name
  subdomain                  = var.subdomain
  id                         = var.id
  oidc_member_definition     = var.oidc_member_definition
  tags                       = var.tags
  user_group                 = var.user_group
  workteam_name              = var.workteam_name
  arn                        = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Workteam."
  type        = string
}
variable "id" {
  description = "The name of the Workteam."
  type        = string
}
variable "oidc_member_definition" {
  description = "(Optional) A list user groups that exist in your OIDC Identity Provider (IdP). One to ten groups can be used to create a single private work team. See Cognito Member Definition details below.Cognito Member Definition"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Member Definition"
  type        = string
  default     = ""
}
variable "user_group" {
  description = "(Required) An identifier for a user group.Oidc Member Definition"
  type        = string
}
variable "workteam_name" {
  description = "(Required) The name of the workforce."
  type        = string
}
variable "client_id" {
  description = "(Required) An identifier for an application client. You must create the app client ID using Amazon Cognito."
  type        = string
}
variable "cognito_member_definition" {
  description = "(Optional) The Amazon Cognito user group that is part of the work team. See Cognito Member Definition details below."
  type        = string
  default     = ""
}
variable "member_definition" {
  description = "(Required) A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use cognito_member_definition. For workforces created using your own OIDC identity provider (IdP) use oidc_member_definition. Do not provide input for both of these parameters in a single request. see Member Definition details below."
  type        = string
}
variable "description" {
  description = "(Required) A description of the work team."
  type        = string
}
variable "groups" {
  description = "(Required) A list of comma separated strings that identifies user groups in your OIDC IdP. Each user group is made up of a group of private workers.Notification Configuration"
  type        = string
}
variable "notification_configuration" {
  description = "(Optional) Configures notification of workers regarding available or expiring work items. see Notification Configuration details below."
  type        = string
  default     = ""
}
variable "notification_topic_arn" {
  description = "(Required) The ARN for the SNS topic to which notifications should be published.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "subdomain" {
  description = "The subdomain for your OIDC Identity Provider."
  type        = string
}
variable "user_pool" {
  description = "(Required) An identifier for a user pool. The user pool must be in the same region as the service that you are calling."
  type        = string
}
variable "workforce_name" {
  description = "(Required) The name of the Workteam (must be unique)."
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
output "client_id" {
  description = "(Required) An identifier for an application client. You must create the app client ID using Amazon Cognito."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.client_id
}
output "cognito_member_definition" {
  description = "(Optional) The Amazon Cognito user group that is part of the work team. See Cognito Member Definition details below."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.cognito_member_definition
}
output "member_definition" {
  description = "(Required) A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use cognito_member_definition. For workforces created using your own OIDC identity provider (IdP) use oidc_member_definition. Do not provide input for both of these parameters in a single request. see Member Definition details below."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.member_definition
}
output "description" {
  description = "(Required) A description of the work team."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.description
}
output "groups" {
  description = "(Required) A list of comma separated strings that identifies user groups in your OIDC IdP. Each user group is made up of a group of private workers.Notification Configuration"
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.groups
}
output "notification_configuration" {
  description = "(Optional) Configures notification of workers regarding available or expiring work items. see Notification Configuration details below."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.notification_configuration
}
output "notification_topic_arn" {
  description = "(Required) The ARN for the SNS topic to which notifications should be published.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.notification_topic_arn
}
output "subdomain" {
  description = "The subdomain for your OIDC Identity Provider."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.subdomain
}
output "user_pool" {
  description = "(Required) An identifier for a user pool. The user pool must be in the same region as the service that you are calling."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.user_pool
}
output "workforce_name" {
  description = "(Required) The name of the Workteam (must be unique)."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.workforce_name
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Workteam."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.arn
}
output "id" {
  description = "The name of the Workteam."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.id
}
output "oidc_member_definition" {
  description = "(Optional) A list user groups that exist in your OIDC Identity Provider (IdP). One to ten groups can be used to create a single private work team. See Cognito Member Definition details below.Cognito Member Definition"
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.oidc_member_definition
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Member Definition"
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.tags
}
output "user_group" {
  description = "(Required) An identifier for a user group.Oidc Member Definition"
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.user_group
}
output "workteam_name" {
  description = "(Required) The name of the workforce."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.workteam_name
}
output "subdomain" {
  description = "The subdomain for your OIDC Identity Provider."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.subdomain
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Workteam."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.arn
}
output "id" {
  description = "The name of the Workteam."
  value       = aws_sagemaker_workteam.aws_sagemaker_workteam.id
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
      "kind/name"                   = "aws_sagemaker_workteam"
      "kind/version"                = "v0.1.0"
    }
  }
}
