resource "aws_elasticache_global_replication_group" "aws_elasticache_global_replication_group" {
  global_node_group_id                 = var.global_node_group_id
  primary_replication_group_id         = var.primary_replication_group_id
  slots                                = var.slots
  cache_node_type                      = var.cache_node_type
  auth_token_enabled                   = var.auth_token_enabled
  create                               = var.create
  engine_version                       = var.engine_version
  global_replication_group_id          = var.global_replication_group_id
  global_replication_group_id_suffix   = var.global_replication_group_id_suffix
  num_node_groups                      = var.num_node_groups
  parameter_group_name                 = var.parameter_group_name
  at_rest_encryption_enabled           = var.at_rest_encryption_enabled
  transit_encryption_enabled           = var.transit_encryption_enabled
  engine                               = var.engine
  engine_version_actual                = var.engine_version_actual
  global_replication_group_description = var.global_replication_group_description
  id                                   = var.id
  update                               = var.update
  cluster_enabled                      = var.cluster_enabled
  automatic_failover_enabled           = var.automatic_failover_enabled
  global_node_groups                   = var.global_node_groups
  arn                                  = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the ElastiCache Global Replication Group."
  type        = string
}
variable "automatic_failover_enabled" {
  description = "(Optional) Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.\nWhen creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group."
  type        = string
}
variable "global_node_groups" {
  description = ""
  type        = string
}
variable "cache_node_type" {
  description = "(Optional) The instance class used.\nSee AWS documentation for information on supported node typesguidance on selecting node types"
  type        = string
}
variable "global_node_group_id" {
  description = "The ID of the global node group."
  type        = string
}
variable "primary_replication_group_id" {
  description = " – (Required) The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If primary_replication_group_id is changed, creates a new resource."
  type        = string
}
variable "slots" {
  description = "The keyspace for this node group."
  type        = string
}
variable "num_node_groups" {
  description = "(Optional) The number of node groups (shards) on the global replication group."
  type        = string
}
variable "parameter_group_name" {
  description = "In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "at_rest_encryption_enabled" {
  description = "A flag that indicate whether the encryption at rest is enabled."
  type        = string
}
variable "auth_token_enabled" {
  description = "A flag that indicate whether AuthToken (password) is enabled."
  type        = string
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "engine_version" {
  description = "6.26.xengine_version_actual, see  below."
  type        = string
}
variable "global_replication_group_id" {
  description = "The full ID of the global replication group."
  type        = string
}
variable "global_replication_group_id_suffix" {
  description = " – (Required) The suffix name of a Global Datastore. If global_replication_group_id_suffix is changed, creates a new resource."
  type        = string
}
variable "transit_encryption_enabled" {
  description = "A flag that indicates whether the encryption in transit is enabled.TimeoutsConfiguration options:"
  type        = string
}
variable "cluster_enabled" {
  description = "Indicates whether the Global Datastore is cluster enabled."
  type        = string
}
variable "engine" {
  description = "The name of the cache engine to be used for the clusters in this global replication group."
  type        = string
}
variable "engine_version_actual" {
  description = "The full version number of the cache engine running on the members of this global replication group."
  type        = string
}
variable "global_replication_group_description" {
  description = " – (Optional) A user-created description for the global replication group."
  type        = string
}
variable "id" {
  description = "The ID of the ElastiCache Global Replication Group."
  type        = string
}
variable "update" {
  description = "(Default 60m)"
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
output "cache_node_type" {
  description = "(Optional) The instance class used.\nSee AWS documentation for information on supported node typesguidance on selecting node types"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.cache_node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_node_group_id" {
  description = "The ID of the global node group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_node_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary_replication_group_id" {
  description = " – (Required) The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If primary_replication_group_id is changed, creates a new resource."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.primary_replication_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "slots" {
  description = "The keyspace for this node group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.slots
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_group_name" {
  description = "In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "at_rest_encryption_enabled" {
  description = "A flag that indicate whether the encryption at rest is enabled."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.at_rest_encryption_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auth_token_enabled" {
  description = "A flag that indicate whether AuthToken (password) is enabled."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.auth_token_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "6.26.xengine_version_actual, see  below."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_replication_group_id" {
  description = "The full ID of the global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_replication_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_replication_group_id_suffix" {
  description = " – (Required) The suffix name of a Global Datastore. If global_replication_group_id_suffix is changed, creates a new resource."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_replication_group_id_suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_node_groups" {
  description = "(Optional) The number of node groups (shards) on the global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.num_node_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_encryption_enabled" {
  description = "A flag that indicates whether the encryption in transit is enabled.TimeoutsConfiguration options:"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.transit_encryption_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_enabled" {
  description = "Indicates whether the Global Datastore is cluster enabled."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.cluster_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine" {
  description = "The name of the cache engine to be used for the clusters in this global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.engine
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version_actual" {
  description = "The full version number of the cache engine running on the members of this global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.engine_version_actual
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_replication_group_description" {
  description = " – (Optional) A user-created description for the global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_replication_group_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the ElastiCache Global Replication Group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 60m)"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the ElastiCache Global Replication Group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "automatic_failover_enabled" {
  description = "(Optional) Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.\nWhen creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.automatic_failover_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_node_groups" {
  description = ""
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_node_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "at_rest_encryption_enabled" {
  description = "A flag that indicate whether the encryption at rest is enabled."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.at_rest_encryption_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_replication_group_description" {
  description = " – (Optional) A user-created description for the global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_replication_group_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the ElastiCache Global Replication Group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "slots" {
  description = "The keyspace for this node group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.slots
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_encryption_enabled" {
  description = "A flag that indicates whether the encryption in transit is enabled.TimeoutsConfiguration options:"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.transit_encryption_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the ElastiCache Global Replication Group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_enabled" {
  description = "Indicates whether the Global Datastore is cluster enabled."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.cluster_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine" {
  description = "The name of the cache engine to be used for the clusters in this global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.engine
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_group_name" {
  description = "In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 60m)"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auth_token_enabled" {
  description = "A flag that indicate whether AuthToken (password) is enabled."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.auth_token_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version_actual" {
  description = "The full version number of the cache engine running on the members of this global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.engine_version_actual
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_node_group_id" {
  description = "The ID of the global node group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_node_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_node_groups" {
  description = "(Optional) The number of node groups (shards) on the global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.num_node_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary_replication_group_id" {
  description = " – (Required) The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If primary_replication_group_id is changed, creates a new resource."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.primary_replication_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_node_groups" {
  description = ""
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_node_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_replication_group_id" {
  description = "The full ID of the global replication group."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_replication_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_replication_group_id_suffix" {
  description = " – (Required) The suffix name of a Global Datastore. If global_replication_group_id_suffix is changed, creates a new resource."
  value       = aws_elasticache_global_replication_group.aws_elasticache_global_replication_group.global_replication_group_id_suffix
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
      "kind/name"                   = "aws_elasticache_global_replication_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
