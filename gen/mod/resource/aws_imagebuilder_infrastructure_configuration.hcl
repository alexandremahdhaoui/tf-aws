resource "aws_imagebuilder_infrastructure_configuration" "aws_imagebuilder_infrastructure_configuration" {
  date_created                  = var.date_created
  date_updated                  = var.date_updated
  instance_types                = var.instance_types
  key_pair                      = var.key_pair
  resource_tags                 = var.resource_tags
  description                   = var.description
  instance_profile_name         = var.instance_profile_name
  s3_key_prefix                 = var.s3_key_prefix
  s3_logs                       = var.s3_logs
  tags_all                      = var.tags_all
  id                            = var.id
  name                          = var.name
  s3_bucket_name                = var.s3_bucket_name
  tags                          = var.tags
  terminate_instance_on_failure = var.terminate_instance_on_failure
  security_group_ids            = var.security_group_ids
  sns_topic_arn                 = var.sns_topic_arn
  subnet_id                     = var.subnet_id
  arn                           = var.arn
  http_put_response_hop_limit   = var.http_put_response_hop_limit
  http_tokens                   = var.http_tokens
  instance_metadata_options     = var.instance_metadata_options
  logging                       = var.logging
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "date_updated" {
  description = "Date when the configuration was updated."
  type        = string
  default     = ""
}
variable "instance_types" {
  description = "(Optional) Set of EC2 Instance Types."
  type        = string
  default     = ""
}
variable "key_pair" {
  description = "(Optional) Name of EC2 Key Pair."
  type        = string
  default     = ""
}
variable "resource_tags" {
  description = "(Optional) Key-value map of resource tags to assign to infrastructure created by the configuration."
  type        = string
  default     = ""
}
variable "date_created" {
  description = "Date when the configuration was created."
  type        = string
  default     = ""
}
variable "instance_profile_name" {
  description = "(Required) Name of IAM Instance Profile."
  type        = string
}
variable "s3_key_prefix" {
  description = "(Optional) Prefix to use for S3 logs. Defaults to /.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "s3_logs" {
  description = "(Required) Configuration block with S3 logging settings. Detailed below.s3_logs"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description for the configuration."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name for the configuration."
  type        = string
}
variable "s3_bucket_name" {
  description = "(Required) Name of the S3 Bucket."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags to assign to the configuration. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "terminate_instance_on_failure" {
  description = "(Optional) Enable if the instance should be terminated when the pipeline fails. Defaults to false.instance_metadata_options"
  type        = string
  default     = ""
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the configuration."
  type        = string
  default     = ""
}
variable "http_put_response_hop_limit" {
  description = "The number of hops that an instance can traverse to reach its destonation."
  type        = string
  default     = ""
}
variable "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests. Valid values: required, optional.logging"
  type        = string
  default     = ""
}
variable "instance_metadata_options" {
  description = "(Optional) Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below."
  type        = string
  default     = ""
}
variable "logging" {
  description = "(Optional) Configuration block with logging settings. Detailed below."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Optional) Set of EC2 Security Group identifiers."
  type        = string
  default     = ""
}
variable "sns_topic_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of SNS Topic."
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Optional) EC2 Subnet identifier. Also requires security_group_ids argument."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the configuration."
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
output "instance_metadata_options" {
  description = "(Optional) Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_metadata_options
}
output "logging" {
  description = "(Optional) Configuration block with logging settings. Detailed below."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.logging
}
output "security_group_ids" {
  description = "(Optional) Set of EC2 Security Group identifiers."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.security_group_ids
}
output "sns_topic_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of SNS Topic."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.sns_topic_arn
}
output "subnet_id" {
  description = "(Optional) EC2 Subnet identifier. Also requires security_group_ids argument."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.subnet_id
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.arn
}
output "http_put_response_hop_limit" {
  description = "The number of hops that an instance can traverse to reach its destonation."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_put_response_hop_limit
}
output "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests. Valid values: required, optional.logging"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_tokens
}
output "key_pair" {
  description = "(Optional) Name of EC2 Key Pair."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.key_pair
}
output "resource_tags" {
  description = "(Optional) Key-value map of resource tags to assign to infrastructure created by the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.resource_tags
}
output "date_created" {
  description = "Date when the configuration was created."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_created
}
output "date_updated" {
  description = "Date when the configuration was updated."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_updated
}
output "instance_types" {
  description = "(Optional) Set of EC2 Instance Types."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_types
}
output "s3_logs" {
  description = "(Required) Configuration block with S3 logging settings. Detailed below.s3_logs"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_logs
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.tags_all
}
output "description" {
  description = "(Optional) Description for the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.description
}
output "instance_profile_name" {
  description = "(Required) Name of IAM Instance Profile."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_profile_name
}
output "s3_key_prefix" {
  description = "(Optional) Prefix to use for S3 logs. Defaults to /.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_key_prefix
}
output "tags" {
  description = "(Optional) Key-value map of resource tags to assign to the configuration. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.tags
}
output "terminate_instance_on_failure" {
  description = "(Optional) Enable if the instance should be terminated when the pipeline fails. Defaults to false.instance_metadata_options"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.terminate_instance_on_failure
}
output "id" {
  description = "Amazon Resource Name (ARN) of the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.id
}
output "name" {
  description = "(Required) Name for the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.name
}
output "s3_bucket_name" {
  description = "(Required) Name of the S3 Bucket."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_bucket_name
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.arn
}
output "date_created" {
  description = "Date when the configuration was created."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_created
}
output "date_updated" {
  description = "Date when the configuration was updated."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_updated
}
output "id" {
  description = "Amazon Resource Name (ARN) of the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.tags_all
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
      "kind/name"                   = "aws_imagebuilder_infrastructure_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
