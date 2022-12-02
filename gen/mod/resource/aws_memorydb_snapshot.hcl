resource "aws_memorydb_snapshot" "aws_memorydb_snapshot" {
  snapshot_window          = var.snapshot_window
  source                   = var.source
  arn                      = var.arn
  create                   = var.create
  description              = var.description
  engine_version           = var.engine_version
  parameter_group_name     = var.parameter_group_name
  snapshot_retention_limit = var.snapshot_retention_limit
  vpc_id                   = var.vpc_id
  name                     = var.name
  name_prefix              = var.name_prefix
  node_type                = var.node_type
  tags_all                 = var.tags_all
  id                       = var.id
  num_shards               = var.num_shards
  port                     = var.port
  subnet_group_name        = var.subnet_group_name
  tags                     = var.tags
  topic_arn                = var.topic_arn
  cluster_configuration    = var.cluster_configuration
  cluster_name             = var.cluster_name
  kms_key_arn              = var.kms_key_arn
  maintenance_window       = var.maintenance_window
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  type        = string
}
variable "id" {
  description = "The name of the snapshot."
  type        = string
}
variable "num_shards" {
  description = "Number of shards in the cluster."
  type        = string
}
variable "port" {
  description = "Port number on which the cluster accepts connections."
  type        = string
}
variable "subnet_group_name" {
  description = "Name of the subnet group used by the cluster."
  type        = string
}
variable "cluster_configuration" {
  description = "The configuration of the cluster from which the snapshot was taken.\n"
  type        = string
}
variable "cluster_name" {
  description = "(Required, Forces new resource) Name of the MemoryDB cluster to take a snapshot of."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional, Forces new resource) ARN of the KMS key used to encrypt the snapshot at rest."
  type        = string
}
variable "maintenance_window" {
  description = "The weekly time range during which maintenance on the cluster is performed."
  type        = string
}
variable "parameter_group_name" {
  description = "Name of the parameter group associated with the cluster."
  type        = string
}
variable "snapshot_retention_limit" {
  description = "Number of days for which MemoryDB retains automatic snapshots before deleting them."
  type        = string
}
variable "snapshot_window" {
  description = "The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard."
  type        = string
}
variable "source" {
  description = "Indicates whether the snapshot is from an automatic backup (automated) or was created manually (manual)."
  type        = string
}
variable "arn" {
  description = "The ARN of the snapshot."
  type        = string
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "description" {
  description = "Description for the cluster."
  type        = string
}
variable "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  type        = string
}
variable "vpc_id" {
  description = "The VPC in which the cluster exists."
  type        = string
}
variable "name" {
  description = "Name of the cluster."
  type        = string
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
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
output "cluster_configuration" {
  description = "The configuration of the cluster from which the snapshot was taken.\n"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.cluster_configuration
}
output "cluster_name" {
  description = "(Required, Forces new resource) Name of the MemoryDB cluster to take a snapshot of."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.cluster_name
}
output "kms_key_arn" {
  description = "(Optional, Forces new resource) ARN of the KMS key used to encrypt the snapshot at rest."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.kms_key_arn
}
output "maintenance_window" {
  description = "The weekly time range during which maintenance on the cluster is performed."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.maintenance_window
}
output "parameter_group_name" {
  description = "Name of the parameter group associated with the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.parameter_group_name
}
output "snapshot_retention_limit" {
  description = "Number of days for which MemoryDB retains automatic snapshots before deleting them."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_retention_limit
}
output "snapshot_window" {
  description = "The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_window
}
output "source" {
  description = "Indicates whether the snapshot is from an automatic backup (automated) or was created manually (manual)."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.source
}
output "arn" {
  description = "The ARN of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.arn
}
output "create" {
  description = "(Default 120m)"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.create
}
output "description" {
  description = "Description for the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.description
}
output "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.engine_version
}
output "vpc_id" {
  description = "The VPC in which the cluster exists."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.vpc_id
}
output "name" {
  description = "Name of the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.name
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.name_prefix
}
output "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.node_type
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.tags_all
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.tags
}
output "topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.topic_arn
}
output "id" {
  description = "The name of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.id
}
output "num_shards" {
  description = "Number of shards in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.num_shards
}
output "port" {
  description = "Port number on which the cluster accepts connections."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.port
}
output "subnet_group_name" {
  description = "Name of the subnet group used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.subnet_group_name
}
output "id" {
  description = "The name of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.id
}
output "maintenance_window" {
  description = "The weekly time range during which maintenance on the cluster is performed."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.maintenance_window
}
output "snapshot_window" {
  description = "The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_window
}
output "subnet_group_name" {
  description = "Name of the subnet group used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.subnet_group_name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.tags_all
}
output "vpc_id" {
  description = "The VPC in which the cluster exists."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.vpc_id
}
output "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.engine_version
}
output "create" {
  description = "(Default 120m)"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.create
}
output "num_shards" {
  description = "Number of shards in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.num_shards
}
output "parameter_group_name" {
  description = "Name of the parameter group associated with the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.parameter_group_name
}
output "snapshot_retention_limit" {
  description = "Number of days for which MemoryDB retains automatic snapshots before deleting them."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_retention_limit
}
output "source" {
  description = "Indicates whether the snapshot is from an automatic backup (automated) or was created manually (manual)."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.source
}
output "topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.topic_arn
}
output "arn" {
  description = "The ARN of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.arn
}
output "description" {
  description = "Description for the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.description
}
output "name" {
  description = "Name of the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.name
}
output "port" {
  description = "Port number on which the cluster accepts connections."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.port
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.delete
}
output "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.node_type
}
output "cluster_configuration" {
  description = "The configuration of the cluster from which the snapshot was taken.\n"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.cluster_configuration
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
      "kind/name"                   = "aws_memorydb_snapshot"
      "kind/version"                = "v0.1.0"
    }
  }
}
