resource "aws_sagemaker_workforce" "aws_sagemaker_workforce" {
  issuer                 = var.issuer
  subnets                = var.subnets
  vpc_id                 = var.vpc_id
  workforce_name         = var.workforce_name
  cidrs                  = var.cidrs
  client_secret          = var.client_secret
  cognito_config         = var.cognito_config
  oidc_config            = var.oidc_config
  security_group_ids     = var.security_group_ids
  subdomain              = var.subdomain
  token_endpoint         = var.token_endpoint
  user_info_endpoint     = var.user_info_endpoint
  authorization_endpoint = var.authorization_endpoint
  jwks_uri               = var.jwks_uri
  source_ip_config       = var.source_ip_config
  logout_endpoint        = var.logout_endpoint
  user_pool              = var.user_pool
  workforce_vpc_config   = var.workforce_vpc_config
  arn                    = var.arn
  client_id              = var.client_id
  id                     = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "jwks_uri" {
  description = "(Required) The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce."
  type        = string
}
variable "source_ip_config" {
  description = "(Optional) A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below."
  type        = string
}
variable "subdomain" {
  description = "The subdomain for your OIDC Identity Provider."
  type        = string
}
variable "token_endpoint" {
  description = "(Required) The OIDC IdP token endpoint used to configure your private workforce."
  type        = string
}
variable "user_info_endpoint" {
  description = "(Required) The OIDC IdP user information endpoint used to configure your private workforce.Source Ip Config"
  type        = string
}
variable "authorization_endpoint" {
  description = "(Required) The OIDC IdP authorization endpoint used to configure your private workforce."
  type        = string
}
variable "client_id" {
  description = "(Required) The OIDC IdP client ID used to configure your private workforce."
  type        = string
}
variable "id" {
  description = "The name of the Workforce."
  type        = string
}
variable "logout_endpoint" {
  description = "(Required) The OIDC IdP logout endpoint used to configure your private workforce."
  type        = string
}
variable "user_pool" {
  description = "(Required) ID for your Amazon Cognito user pool.Oidc Config"
  type        = string
}
variable "workforce_vpc_config" {
  description = "(Optional) configure a workforce using VPC. see Workforce VPC Config details below.Cognito Config"
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Workforce."
  type        = string
}
variable "client_secret" {
  description = "(Required) The OIDC IdP client secret used to configure your private workforce."
  type        = string
}
variable "cognito_config" {
  description = "(Optional) Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with oidc_config. see Cognito Config details below."
  type        = string
}
variable "issuer" {
  description = "(Required) The OIDC IdP issuer used to configure your private workforce."
  type        = string
}
variable "subnets" {
  description = "(Optional) The ID of the subnets in the VPC that you want to connect."
  type        = string
}
variable "vpc_id" {
  description = "(Optional) The ID of the VPC that the workforce uses for communication.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "workforce_name" {
  description = "(Required) The name of the Workforce (must be unique)."
  type        = string
}
variable "cidrs" {
  description = "(Required) A list of up to 10 CIDR values.Workforce VPC Config"
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet."
  type        = string
}
variable "oidc_config" {
  description = "(Optional) Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with cognito_config. see OIDC Config details below."
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
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_id" {
  description = "(Required) The OIDC IdP client ID used to configure your private workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.client_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the Workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logout_endpoint" {
  description = "(Required) The OIDC IdP logout endpoint used to configure your private workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.logout_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_pool" {
  description = "(Required) ID for your Amazon Cognito user pool.Oidc Config"
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.user_pool
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workforce_vpc_config" {
  description = "(Optional) configure a workforce using VPC. see Workforce VPC Config details below.Cognito Config"
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.workforce_vpc_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workforce_name" {
  description = "(Required) The name of the Workforce (must be unique)."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.workforce_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidrs" {
  description = "(Required) A list of up to 10 CIDR values.Workforce VPC Config"
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.cidrs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_secret" {
  description = "(Required) The OIDC IdP client secret used to configure your private workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.client_secret
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cognito_config" {
  description = "(Optional) Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with oidc_config. see Cognito Config details below."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.cognito_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "issuer" {
  description = "(Required) The OIDC IdP issuer used to configure your private workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.issuer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnets" {
  description = "(Optional) The ID of the subnets in the VPC that you want to connect."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.subnets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Optional) The ID of the VPC that the workforce uses for communication.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "oidc_config" {
  description = "(Optional) Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with cognito_config. see OIDC Config details below."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.oidc_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authorization_endpoint" {
  description = "(Required) The OIDC IdP authorization endpoint used to configure your private workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.authorization_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "jwks_uri" {
  description = "(Required) The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.jwks_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_ip_config" {
  description = "(Optional) A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.source_ip_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subdomain" {
  description = "The subdomain for your OIDC Identity Provider."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.subdomain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "token_endpoint" {
  description = "(Required) The OIDC IdP token endpoint used to configure your private workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.token_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_info_endpoint" {
  description = "(Required) The OIDC IdP user information endpoint used to configure your private workforce.Source Ip Config"
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.user_info_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the Workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subdomain" {
  description = "The subdomain for your OIDC Identity Provider."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.subdomain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workforce_vpc_config.0.vpc_endpoint_id" {
  description = "The IDs for the VPC service endpoints of your VPC workforce."
  value       = aws_sagemaker_workforce.aws_sagemaker_workforce.workforce_vpc_config.0.vpc_endpoint_id
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
      "kind/name"                   = "aws_sagemaker_workforce"
      "kind/version"                = "v0.1.0"
    }
  }
}
