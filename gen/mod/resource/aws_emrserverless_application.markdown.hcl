resource "aws_emrserverless_application.markdown" "aws_emrserverless_application.markdown" {
  auto_stop_configuration  = var.auto_stop_configuration
  memory                   = var.memory
  security_group_ids       = var.security_group_ids
  worker_count             = var.worker_count
  name                     = var.name
  disk                     = var.disk
  enabled                  = var.enabled
  id                       = var.id
  idle_timeout_minutes     = var.idle_timeout_minutes
  initial_capacity         = var.initial_capacity
  type                     = var.type
  initial_capacity_type    = var.initial_capacity_type
  maximum_capacity         = var.maximum_capacity
  network_configuration    = var.network_configuration
  release_label            = var.release_label
  arn                      = var.arn
  auto_start_configuration = var.auto_start_configuration
  cpu                      = var.cpu
  initial_capacity_config  = var.initial_capacity_config
  subnet_ids               = var.subnet_ids
  tags                     = var.tags
  worker_configuration     = var.worker_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "auto_stop_configuration" {
  description = " – (Optional) The configuration for an application to automatically stop after a certain amount of time being idle."
  type        = string
  default     = ""
}
variable "memory" {
  description = "(Required) The memory requirements for every worker instance of the worker type.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) The array of security group Ids for customer VPC connectivity."
  type        = string
  default     = ""
}
variable "worker_count" {
  description = "(Required) The number of workers in the initial capacity configuration.worker_configuration Arguments"
  type        = string
}
variable "disk" {
  description = "(Optional) The disk requirements for every worker instance of the worker type."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Enables the application to automatically stop after a certain amount of time being idle. Defaults to true."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the cluster."
  type        = string
}
variable "idle_timeout_minutes" {
  description = "(Optional) The amount of idle time in minutes after which your application will automatically stop. Defaults to 15 minutes.initial_capacity Arguments"
  type        = string
  default     = ""
}
variable "name" {
  description = " – (Required) The name of the application."
  type        = string
}
variable "initial_capacity" {
  description = " – (Optional) The capacity to initialize when the application is created."
  type        = string
  default     = ""
}
variable "type" {
  description = " – (Required) The type of application you want to start, such as spark or hive."
  type        = string
}
variable "network_configuration" {
  description = " – (Optional) The network configuration for customer VPC connectivity."
  type        = string
  default     = ""
}
variable "release_label" {
  description = " – (Required) The EMR release version associated with the application."
  type        = string
}
variable "arn" {
  description = "ARN of the cluster."
  type        = string
}
variable "auto_start_configuration" {
  description = " – (Optional) The configuration for an application to automatically start on job submission."
  type        = string
  default     = ""
}
variable "cpu" {
  description = "(Required) The CPU requirements for every worker instance of the worker type."
  type        = string
}
variable "initial_capacity_config" {
  description = "(Optional) The initial capacity configuration per worker."
  type        = string
  default     = ""
}
variable "initial_capacity_type" {
  description = "(Required) The worker type for an analytics framework. For Spark applications, the key can either be set to Driver or Executor. For Hive applications, it can be set to HiveDriver or TezTask.maximum_capacity Arguments"
  type        = string
}
variable "maximum_capacity" {
  description = " – (Optional) The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Optional) The array of subnet Ids for customer VPC connectivity.initial_capacity_config Arguments"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.auto_start_configuration Arguments"
  type        = string
  default     = ""
}
variable "worker_configuration" {
  description = "(Optional) The resource configuration of the initial capacity configuration."
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
output "release_label" {
  description = " – (Required) The EMR release version associated with the application."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.release_label
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.arn
}
output "auto_start_configuration" {
  description = " – (Optional) The configuration for an application to automatically start on job submission."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.auto_start_configuration
}
output "cpu" {
  description = "(Required) The CPU requirements for every worker instance of the worker type."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.cpu
}
output "initial_capacity_config" {
  description = "(Optional) The initial capacity configuration per worker."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.initial_capacity_config
}
output "initial_capacity_type" {
  description = "(Required) The worker type for an analytics framework. For Spark applications, the key can either be set to Driver or Executor. For Hive applications, it can be set to HiveDriver or TezTask.maximum_capacity Arguments"
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.initial_capacity_type
}
output "maximum_capacity" {
  description = " – (Optional) The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.maximum_capacity
}
output "network_configuration" {
  description = " – (Optional) The network configuration for customer VPC connectivity."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.network_configuration
}
output "subnet_ids" {
  description = "(Optional) The array of subnet Ids for customer VPC connectivity.initial_capacity_config Arguments"
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.subnet_ids
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.auto_start_configuration Arguments"
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.tags
}
output "worker_configuration" {
  description = "(Optional) The resource configuration of the initial capacity configuration."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.worker_configuration
}
output "auto_stop_configuration" {
  description = " – (Optional) The configuration for an application to automatically stop after a certain amount of time being idle."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.auto_stop_configuration
}
output "memory" {
  description = "(Required) The memory requirements for every worker instance of the worker type.In addition to all arguments above, the following attributes are exported:"
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.memory
}
output "security_group_ids" {
  description = "(Optional) The array of security group Ids for customer VPC connectivity."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.security_group_ids
}
output "worker_count" {
  description = "(Required) The number of workers in the initial capacity configuration.worker_configuration Arguments"
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.worker_count
}
output "disk" {
  description = "(Optional) The disk requirements for every worker instance of the worker type."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.disk
}
output "enabled" {
  description = "(Optional) Enables the application to automatically stop after a certain amount of time being idle. Defaults to true."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.enabled
}
output "id" {
  description = "The ID of the cluster."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.id
}
output "idle_timeout_minutes" {
  description = "(Optional) The amount of idle time in minutes after which your application will automatically stop. Defaults to 15 minutes.initial_capacity Arguments"
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.idle_timeout_minutes
}
output "name" {
  description = " – (Required) The name of the application."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.name
}
output "initial_capacity" {
  description = " – (Optional) The capacity to initialize when the application is created."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.initial_capacity
}
output "type" {
  description = " – (Required) The type of application you want to start, such as spark or hive."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.type
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.arn
}
output "id" {
  description = "The ID of the cluster."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_emrserverless_application.markdown.aws_emrserverless_application.markdown.tags_all
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
      "kind/name"                   = "aws_emrserverless_application.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
