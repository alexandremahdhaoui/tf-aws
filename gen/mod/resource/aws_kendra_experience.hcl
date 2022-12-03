resource "aws_kendra_experience" "aws_kendra_experience" {
  endpoint                     = var.endpoint
  endpoint_type                = var.endpoint_type
  name                         = var.name
  update                       = var.update
  user_identity_configuration  = var.user_identity_configuration
  content_source_configuration = var.content_source_configuration
  data_source_ids              = var.data_source_ids
  direct_put_content           = var.direct_put_content
  identity_attribute_name      = var.identity_attribute_name
  status                       = var.status
  configuration                = var.configuration
  delete                       = var.delete
  description                  = var.description
  endpoints                    = var.endpoints
  id                           = var.id
  index_id                     = var.index_id
  arn                          = var.arn
  experience_id                = var.experience_id
  faq_ids                      = var.faq_ids
  role_arn                     = var.role_arn
  create                       = var.create
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "endpoint" {
  description = "The endpoint of your Amazon Kendra experience."
  type        = string
  default     = ""
}
variable "endpoint_type" {
  description = "The type of endpoint for your Amazon Kendra experience."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) A name for your Amazon Kendra experience."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "user_identity_configuration" {
  description = "(Optional, Required if content_source_configuration not provided) The AWS SSO field name that contains the identifiers of your users, such as their emails. Detailed below.content_source_configurationThe content_source_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "content_source_configuration" {
  description = "(Optional, Required if user_identity_configuration not provided) The identifiers of your data sources and FAQs. Or, you can specify that you want to use documents indexed via the BatchPutDocument API. Terraform will only perform drift detection of its value when present in a configuration. Detailed below."
  type        = string
  default     = ""
}
variable "data_source_ids" {
  description = "(Optional) The identifiers of the data sources you want to use for your Amazon Kendra experience. Maximum number of 100 items."
  type        = string
  default     = ""
}
variable "direct_put_content" {
  description = "(Optional) Whether to use documents you indexed directly using the BatchPutDocument API. Defaults to false."
  type        = string
  default     = ""
}
variable "identity_attribute_name" {
  description = "(Required) The AWS SSO field name that contains the identifiers of your users, such as their emails.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "status" {
  description = "The current processing status of your Amazon Kendra experience.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "configuration" {
  description = "(Optional) Configuration information for your Amazon Kendra experience. Terraform will only perform drift detection of its value when present in a configuration. Detailed below.configuration~> strongNOTE: By default of the AWS Kendra API, the content_source_configuration.direct_put_content parameter will be set to false if not provided.The configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional, Forces new resource if removed) A description for your Amazon Kendra experience."
  type        = string
  default     = ""
}
variable "endpoints" {
  description = ""
  type        = string
  default     = ""
}
variable "id" {
  description = "The unique identifiers of the experience and index separated by a slash (/)."
  type        = string
  default     = ""
}
variable "index_id" {
  description = "(Required, Forces new resource) The identifier of the index for your Amazon Kendra experience."
  type        = string
}
variable "arn" {
  description = "ARN of the Experience."
  type        = string
  default     = ""
}
variable "experience_id" {
  description = "The unique identifier of the experience."
  type        = string
  default     = ""
}
variable "faq_ids" {
  description = "(Optional) The identifier of the FAQs that you want to use for your Amazon Kendra experience. Maximum number of 100 items.user_identity_configurationThe user_identity_configuration configuration block supports the following argument:"
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of a role with permission to access Query API, QuerySuggestions API, SubmitFeedback API, and AWS SSO that stores your user and group information. For more information, see IAM roles for Amazon Kendra."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
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
output "endpoint" {
  description = "The endpoint of your Amazon Kendra experience."
  value       = aws_kendra_experience.aws_kendra_experience.endpoint
}
output "endpoint_type" {
  description = "The type of endpoint for your Amazon Kendra experience."
  value       = aws_kendra_experience.aws_kendra_experience.endpoint_type
}
output "name" {
  description = "(Required) A name for your Amazon Kendra experience."
  value       = aws_kendra_experience.aws_kendra_experience.name
}
output "update" {
  description = "(Default 30m)"
  value       = aws_kendra_experience.aws_kendra_experience.update
}
output "user_identity_configuration" {
  description = "(Optional, Required if content_source_configuration not provided) The AWS SSO field name that contains the identifiers of your users, such as their emails. Detailed below.content_source_configurationThe content_source_configuration configuration block supports the following arguments:"
  value       = aws_kendra_experience.aws_kendra_experience.user_identity_configuration
}
output "content_source_configuration" {
  description = "(Optional, Required if user_identity_configuration not provided) The identifiers of your data sources and FAQs. Or, you can specify that you want to use documents indexed via the BatchPutDocument API. Terraform will only perform drift detection of its value when present in a configuration. Detailed below."
  value       = aws_kendra_experience.aws_kendra_experience.content_source_configuration
}
output "data_source_ids" {
  description = "(Optional) The identifiers of the data sources you want to use for your Amazon Kendra experience. Maximum number of 100 items."
  value       = aws_kendra_experience.aws_kendra_experience.data_source_ids
}
output "direct_put_content" {
  description = "(Optional) Whether to use documents you indexed directly using the BatchPutDocument API. Defaults to false."
  value       = aws_kendra_experience.aws_kendra_experience.direct_put_content
}
output "identity_attribute_name" {
  description = "(Required) The AWS SSO field name that contains the identifiers of your users, such as their emails.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kendra_experience.aws_kendra_experience.identity_attribute_name
}
output "status" {
  description = "The current processing status of your Amazon Kendra experience.TimeoutsConfiguration options:"
  value       = aws_kendra_experience.aws_kendra_experience.status
}
output "configuration" {
  description = "(Optional) Configuration information for your Amazon Kendra experience. Terraform will only perform drift detection of its value when present in a configuration. Detailed below.configuration~> strongNOTE: By default of the AWS Kendra API, the content_source_configuration.direct_put_content parameter will be set to false if not provided.The configuration configuration block supports the following arguments:"
  value       = aws_kendra_experience.aws_kendra_experience.configuration
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_experience.aws_kendra_experience.delete
}
output "description" {
  description = "(Optional, Forces new resource if removed) A description for your Amazon Kendra experience."
  value       = aws_kendra_experience.aws_kendra_experience.description
}
output "endpoints" {
  description = ""
  value       = aws_kendra_experience.aws_kendra_experience.endpoints
}
output "id" {
  description = "The unique identifiers of the experience and index separated by a slash (/)."
  value       = aws_kendra_experience.aws_kendra_experience.id
}
output "index_id" {
  description = "(Required, Forces new resource) The identifier of the index for your Amazon Kendra experience."
  value       = aws_kendra_experience.aws_kendra_experience.index_id
}
output "arn" {
  description = "ARN of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.arn
}
output "experience_id" {
  description = "The unique identifier of the experience."
  value       = aws_kendra_experience.aws_kendra_experience.experience_id
}
output "faq_ids" {
  description = "(Optional) The identifier of the FAQs that you want to use for your Amazon Kendra experience. Maximum number of 100 items.user_identity_configurationThe user_identity_configuration configuration block supports the following argument:"
  value       = aws_kendra_experience.aws_kendra_experience.faq_ids
}
output "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of a role with permission to access Query API, QuerySuggestions API, SubmitFeedback API, and AWS SSO that stores your user and group information. For more information, see IAM roles for Amazon Kendra."
  value       = aws_kendra_experience.aws_kendra_experience.role_arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_kendra_experience.aws_kendra_experience.create
}
output "create" {
  description = "(Default 30m)"
  value       = aws_kendra_experience.aws_kendra_experience.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_experience.aws_kendra_experience.delete
}
output "endpoint" {
  description = "The endpoint of your Amazon Kendra experience."
  value       = aws_kendra_experience.aws_kendra_experience.endpoint
}
output "update" {
  description = "(Default 30m)"
  value       = aws_kendra_experience.aws_kendra_experience.update
}
output "arn" {
  description = "ARN of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.arn
}
output "endpoint_type" {
  description = "The type of endpoint for your Amazon Kendra experience."
  value       = aws_kendra_experience.aws_kendra_experience.endpoint_type
}
output "endpoints" {
  description = ""
  value       = aws_kendra_experience.aws_kendra_experience.endpoints
}
output "experience_id" {
  description = "The unique identifier of the experience."
  value       = aws_kendra_experience.aws_kendra_experience.experience_id
}
output "id" {
  description = "The unique identifiers of the experience and index separated by a slash (/)."
  value       = aws_kendra_experience.aws_kendra_experience.id
}
output "status" {
  description = "The current processing status of your Amazon Kendra experience.TimeoutsConfiguration options:"
  value       = aws_kendra_experience.aws_kendra_experience.status
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
      "kind/name"                   = "aws_kendra_experience"
      "kind/version"                = "v0.1.0"
    }
  }
}
