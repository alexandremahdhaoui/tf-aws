resource "aws_elastic_beanstalk_application" "aws_elastic_beanstalk_application" {
  arn                   = var.arn
  delete_source_from_s3 = var.delete_source_from_s3
  description           = var.description
  max_age_in_days       = var.max_age_in_days
  max_count             = var.max_count
  name                  = var.name
  service_role          = var.service_role
  tags                  = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN assigned by AWS for this Elastic Beanstalk Application."
  type        = string
}
variable "delete_source_from_s3" {
  description = "(Optional) Set to true to delete a version's source bundle from S3 when the application version is deleted.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Short description of the application"
  type        = string
  default     = ""
}
variable "max_age_in_days" {
  description = "(Optional) The number of days to retain an application version ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.)."
  type        = string
  default     = ""
}
variable "max_count" {
  description = "(Optional) The maximum number of application versions to retain ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.)."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the application, must be unique within your account"
  type        = string
}
variable "service_role" {
  description = "(Required) The ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Application version lifecycle (appversion_lifecycle) supports the following settings.  Only one of either max_count or max_age_in_days can be provided:"
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
output "max_age_in_days" {
  description = "(Optional) The number of days to retain an application version ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.)."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.max_age_in_days
}
output "max_count" {
  description = "(Optional) The maximum number of application versions to retain ('max_age_in_days' and 'max_count' cannot be enabled simultaneously.)."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.max_count
}
output "name" {
  description = "(Required) The name of the application, must be unique within your account"
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.name
}
output "service_role" {
  description = "(Required) The ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.service_role
}
output "tags" {
  description = "(Optional) Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Application version lifecycle (appversion_lifecycle) supports the following settings.  Only one of either max_count or max_age_in_days can be provided:"
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.tags
}
output "arn" {
  description = "The ARN assigned by AWS for this Elastic Beanstalk Application."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.arn
}
output "delete_source_from_s3" {
  description = "(Optional) Set to true to delete a version's source bundle from S3 when the application version is deleted.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.delete_source_from_s3
}
output "description" {
  description = "(Optional) Short description of the application"
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.description
}
output "arn" {
  description = "The ARN assigned by AWS for this Elastic Beanstalk Application."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.tags_all
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
      "kind/name"                   = "aws_elastic_beanstalk_application"
      "kind/version"                = "v0.1.0"
    }
  }
}
