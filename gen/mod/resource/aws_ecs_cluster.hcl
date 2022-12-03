resource "aws_ecs_cluster" "aws_ecs_cluster" {
  s3_bucket_name                     = var.s3_bucket_name
  arn                                = var.arn
  base                               = var.base
  kms_key_id                         = var.kms_key_id
  logging                            = var.logging
  name                               = var.name
  capacity_provider                  = var.capacity_provider
  cloud_watch_log_group_name         = var.cloud_watch_log_group_name
  configuration                      = var.configuration
  id                                 = var.id
  s3_key_prefix                      = var.s3_key_prefix
  value                              = var.value
  weight                             = var.weight
  capacity_providers                 = var.capacity_providers
  default_capacity_provider_strategy = var.default_capacity_provider_strategy
  s3_bucket_encryption_enabled       = var.s3_bucket_encryption_enabled
  setting                            = var.setting
  tags                               = var.tags
  cloud_watch_encryption_enabled     = var.cloud_watch_encryption_enabled
  execute_command_configuration      = var.execute_command_configuration
  log_configuration                  = var.log_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "s3_bucket_encryption_enabled" {
  description = "(Optional) Whether or not to enable encryption on the logs sent to S3. If not specified, encryption will be disabled."
  type        = string
  default     = ""
}
variable "setting" {
  description = "(Optional) Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. Detailed below."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configuration"
  type        = string
  default     = ""
}
variable "value" {
  description = " (Required) The value to assign to the setting. Valid values are enabled and disabled.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "weight" {
  description = "(Optional) The relative percentage of the total number of launched tasks that should use the specified capacity provider."
  type        = string
  default     = ""
}
variable "capacity_providers" {
  description = "(Optional, strongDeprecated use the aws_ecs_cluster_capacity_providers resource instead) List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  type        = string
}
variable "default_capacity_provider_strategy" {
  description = "(Optional, strongDeprecated use the aws_ecs_cluster_capacity_providers resource instead) Configuration block for capacity provider strategy to use by default for the cluster. Can be one or more. Detailed below."
  type        = string
}
variable "log_configuration" {
  description = "(Optional) The log configuration for the results of the execute command actions Required when logging is OVERRIDE. Detailed below."
  type        = string
  default     = ""
}
variable "cloud_watch_encryption_enabled" {
  description = "(Optional) Whether or not to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled."
  type        = string
  default     = ""
}
variable "execute_command_configuration" {
  description = "(Optional) The details of the execute command configuration. Detailed below.execute_command_configuration"
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) The AWS Key Management Service key ID to encrypt the data between the local client and the container."
  type        = string
  default     = ""
}
variable "logging" {
  description = "(Optional) The log setting to use for redirecting logs for your execute command results. Valid values are NONE, DEFAULT, and OVERRIDE.log_configuration"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the setting to manage. Valid values: containerInsights."
  type        = string
}
variable "s3_bucket_name" {
  description = "(Optional) The name of the S3 bucket to send logs to."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN that identifies the cluster."
  type        = string
}
variable "base" {
  description = "(Optional) The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.setting"
  type        = string
  default     = ""
}
variable "configuration" {
  description = "(Optional) The execute command configuration for the cluster. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "ARN that identifies the cluster."
  type        = string
}
variable "s3_key_prefix" {
  description = "(Optional) An optional folder in the S3 bucket to place logs in.default_capacity_provider_strategy"
  type        = string
  default     = ""
}
variable "capacity_provider" {
  description = "(Required) The short name of the capacity provider."
  type        = string
}
variable "cloud_watch_log_group_name" {
  description = "(Optional) The name of the CloudWatch log group to send logs to."
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
output "cloud_watch_encryption_enabled" {
  description = "(Optional) Whether or not to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled."
  value       = aws_ecs_cluster.aws_ecs_cluster.cloud_watch_encryption_enabled
}
output "execute_command_configuration" {
  description = "(Optional) The details of the execute command configuration. Detailed below.execute_command_configuration"
  value       = aws_ecs_cluster.aws_ecs_cluster.execute_command_configuration
}
output "log_configuration" {
  description = "(Optional) The log configuration for the results of the execute command actions Required when logging is OVERRIDE. Detailed below."
  value       = aws_ecs_cluster.aws_ecs_cluster.log_configuration
}
output "arn" {
  description = "ARN that identifies the cluster."
  value       = aws_ecs_cluster.aws_ecs_cluster.arn
}
output "base" {
  description = "(Optional) The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.setting"
  value       = aws_ecs_cluster.aws_ecs_cluster.base
}
output "kms_key_id" {
  description = "(Optional) The AWS Key Management Service key ID to encrypt the data between the local client and the container."
  value       = aws_ecs_cluster.aws_ecs_cluster.kms_key_id
}
output "logging" {
  description = "(Optional) The log setting to use for redirecting logs for your execute command results. Valid values are NONE, DEFAULT, and OVERRIDE.log_configuration"
  value       = aws_ecs_cluster.aws_ecs_cluster.logging
}
output "name" {
  description = "(Required) Name of the setting to manage. Valid values: containerInsights."
  value       = aws_ecs_cluster.aws_ecs_cluster.name
}
output "s3_bucket_name" {
  description = "(Optional) The name of the S3 bucket to send logs to."
  value       = aws_ecs_cluster.aws_ecs_cluster.s3_bucket_name
}
output "capacity_provider" {
  description = "(Required) The short name of the capacity provider."
  value       = aws_ecs_cluster.aws_ecs_cluster.capacity_provider
}
output "cloud_watch_log_group_name" {
  description = "(Optional) The name of the CloudWatch log group to send logs to."
  value       = aws_ecs_cluster.aws_ecs_cluster.cloud_watch_log_group_name
}
output "configuration" {
  description = "(Optional) The execute command configuration for the cluster. Detailed below."
  value       = aws_ecs_cluster.aws_ecs_cluster.configuration
}
output "id" {
  description = "ARN that identifies the cluster."
  value       = aws_ecs_cluster.aws_ecs_cluster.id
}
output "s3_key_prefix" {
  description = "(Optional) An optional folder in the S3 bucket to place logs in.default_capacity_provider_strategy"
  value       = aws_ecs_cluster.aws_ecs_cluster.s3_key_prefix
}
output "capacity_providers" {
  description = "(Optional, strongDeprecated use the aws_ecs_cluster_capacity_providers resource instead) List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  value       = aws_ecs_cluster.aws_ecs_cluster.capacity_providers
}
output "default_capacity_provider_strategy" {
  description = "(Optional, strongDeprecated use the aws_ecs_cluster_capacity_providers resource instead) Configuration block for capacity provider strategy to use by default for the cluster. Can be one or more. Detailed below."
  value       = aws_ecs_cluster.aws_ecs_cluster.default_capacity_provider_strategy
}
output "s3_bucket_encryption_enabled" {
  description = "(Optional) Whether or not to enable encryption on the logs sent to S3. If not specified, encryption will be disabled."
  value       = aws_ecs_cluster.aws_ecs_cluster.s3_bucket_encryption_enabled
}
output "setting" {
  description = "(Optional) Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. Detailed below."
  value       = aws_ecs_cluster.aws_ecs_cluster.setting
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configuration"
  value       = aws_ecs_cluster.aws_ecs_cluster.tags
}
output "value" {
  description = " (Required) The value to assign to the setting. Valid values are enabled and disabled.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_cluster.aws_ecs_cluster.value
}
output "weight" {
  description = "(Optional) The relative percentage of the total number of launched tasks that should use the specified capacity provider."
  value       = aws_ecs_cluster.aws_ecs_cluster.weight
}
output "arn" {
  description = "ARN that identifies the cluster."
  value       = aws_ecs_cluster.aws_ecs_cluster.arn
}
output "id" {
  description = "ARN that identifies the cluster."
  value       = aws_ecs_cluster.aws_ecs_cluster.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ecs_cluster.aws_ecs_cluster.tags_all
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
      "kind/name"                   = "aws_ecs_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
