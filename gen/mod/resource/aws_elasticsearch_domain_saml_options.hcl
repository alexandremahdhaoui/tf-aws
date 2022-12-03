resource "aws_elasticsearch_domain_saml_options" "aws_elasticsearch_domain_saml_options" {
  session_timeout_minutes = var.session_timeout_minutes
  subject_key             = var.subject_key
  entity_id               = var.entity_id
  id                      = var.id
  idp                     = var.idp
  master_user_name        = var.master_user_name
  roles_key               = var.roles_key
  saml_options            = var.saml_options
  domain_name             = var.domain_name
  enabled                 = var.enabled
  master_backend_role     = var.master_backend_role
  metadata_content        = var.metadata_content
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enabled" {
  description = "(Required) Whether SAML authentication is enabled."
  type        = string
}
variable "master_backend_role" {
  description = "(Optional) This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user."
  type        = string
  default     = ""
}
variable "metadata_content" {
  description = "(Required) The Metadata of the SAML application in xml format.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "roles_key" {
  description = "(Optional) Element of the SAML assertion to use for backend roles. Default is roles."
  type        = string
  default     = ""
}
variable "saml_options" {
  description = "(Optional) The SAML authentication options for an AWS Elasticsearch Domain.saml_options"
  type        = string
  default     = ""
}
variable "domain_name" {
  description = "(Required) Name of the domain."
  type        = string
}
variable "id" {
  description = "The name of the domain the SAML options are associated with."
  type        = string
  default     = ""
}
variable "idp" {
  description = "(Optional) Information from your identity provider."
  type        = string
  default     = ""
}
variable "master_user_name" {
  description = "(Optional) This username from the SAML IdP receives full permissions to the cluster, equivalent to a new master user."
  type        = string
  default     = ""
}
variable "session_timeout_minutes" {
  description = "(Optional) Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440."
  type        = string
  default     = ""
}
variable "subject_key" {
  description = "(Optional) Custom SAML attribute to use for user names. Default is an empty string - \"\". This will cause Elasticsearch to use the NameID element of the Subject, which is the default location for name identifiers in the SAML specification.idp"
  type        = string
  default     = ""
}
variable "entity_id" {
  description = "(Required) The unique Entity ID of the application in SAML Identity Provider."
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
output "saml_options" {
  description = "(Optional) The SAML authentication options for an AWS Elasticsearch Domain.saml_options"
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.saml_options
}
output "domain_name" {
  description = "(Required) Name of the domain."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.domain_name
}
output "enabled" {
  description = "(Required) Whether SAML authentication is enabled."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.enabled
}
output "master_backend_role" {
  description = "(Optional) This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.master_backend_role
}
output "metadata_content" {
  description = "(Required) The Metadata of the SAML application in xml format.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.metadata_content
}
output "roles_key" {
  description = "(Optional) Element of the SAML assertion to use for backend roles. Default is roles."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.roles_key
}
output "subject_key" {
  description = "(Optional) Custom SAML attribute to use for user names. Default is an empty string - \"\". This will cause Elasticsearch to use the NameID element of the Subject, which is the default location for name identifiers in the SAML specification.idp"
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.subject_key
}
output "entity_id" {
  description = "(Required) The unique Entity ID of the application in SAML Identity Provider."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.entity_id
}
output "id" {
  description = "The name of the domain the SAML options are associated with."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.id
}
output "idp" {
  description = "(Optional) Information from your identity provider."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.idp
}
output "master_user_name" {
  description = "(Optional) This username from the SAML IdP receives full permissions to the cluster, equivalent to a new master user."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.master_user_name
}
output "session_timeout_minutes" {
  description = "(Optional) Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.session_timeout_minutes
}
output "id" {
  description = "The name of the domain the SAML options are associated with."
  value       = aws_elasticsearch_domain_saml_options.aws_elasticsearch_domain_saml_options.id
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
      "kind/name"                   = "aws_elasticsearch_domain_saml_options"
      "kind/version"                = "v0.1.0"
    }
  }
}
