resource "aws_dax_cluster" "aws_dax_cluster" {
  create                           = var.create
  description                      = var.description
  node_type                        = var.node_type
  nodes                            = var.nodes
  cluster_name                     = var.cluster_name
  parameter_group_name             = var.parameter_group_name
  security_group_ids               = var.security_group_ids
  tags_all                         = var.tags_all
  tags                             = var.tags
  update                           = var.update
  availability_zones               = var.availability_zones
  configuration_endpoint           = var.configuration_endpoint
  enabled                          = var.enabled
  iam_role_arn                     = var.iam_role_arn
  maintenance_window               = var.maintenance_window
  server_side_encryption           = var.server_side_encryption
  subnet_group_name                = var.subnet_group_name
  arn                              = var.arn
  cluster_address                  = var.cluster_address
  cluster_endpoint_encryption_type = var.cluster_endpoint_encryption_type
  notification_topic_arn           = var.notification_topic_arn
  port                             = var.port
  replication_factor               = var.replication_factor
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "update" {
  description = "(Default 45m)"
  type        = string
}
variable "availability_zones" {
  description = ""
  type        = string
}
variable "configuration_endpoint" {
  description = ""
  type        = string
}
variable "enabled" {
  description = "(Optional) Whether to enable encryption at rest. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "iam_role_arn" {
  description = ""
  type        = string
}
variable "maintenance_window" {
  description = "ddd:hh24:mi-ddd:hh24:misun:05:00-sun:09:00"
  type        = string
}
variable "server_side_encryption" {
  description = "(Optional) Encrypt at rest options"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The server_side_encryption object supports the following:"
  type        = string
}
variable "arn" {
  description = "The ARN of the DAX cluster"
  type        = string
}
variable "cluster_address" {
  description = "The DNS name of the DAX cluster without the port appended"
  type        = string
}
variable "cluster_endpoint_encryption_type" {
  description = "NONE and TLSNONE."
  type        = string
}
variable "notification_topic_arn" {
  description = "arn:aws:sns:us-east-1:012345678999:my_sns_topic"
  type        = string
}
variable "port" {
  description = "The port used by the configuration endpoint"
  type        = string
}
variable "replication_factor" {
  description = ""
  type        = string
}
variable "subnet_group_name" {
  description = ""
  type        = string
}
variable "create" {
  description = "(Default 45m)"
  type        = string
}
variable "description" {
  description = " – (Optional) Description for the cluster"
  type        = string
}
variable "node_type" {
  description = "Nodes for supported node types"
  type        = string
}
variable "nodes" {
  description = "List of node objects including id, address, portavailability_zone$${aws_dax_cluster.test.nodes.0.address}"
  type        = string
}
variable "cluster_name" {
  description = ""
  type        = string
}
variable "parameter_group_name" {
  description = ""
  type        = string
}
variable "security_group_ids" {
  description = ""
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
output "parameter_group_name" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dax_cluster.aws_dax_cluster.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_name" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.cluster_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_endpoint" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.configuration_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional) Whether to enable encryption at rest. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dax_cluster.aws_dax_cluster.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_role_arn" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.iam_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_window" {
  description = "ddd:hh24:mi-ddd:hh24:misun:05:00-sun:09:00"
  value       = aws_dax_cluster.aws_dax_cluster.maintenance_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "server_side_encryption" {
  description = "(Optional) Encrypt at rest options"
  value       = aws_dax_cluster.aws_dax_cluster.server_side_encryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The server_side_encryption object supports the following:"
  value       = aws_dax_cluster.aws_dax_cluster.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 45m)"
  value       = aws_dax_cluster.aws_dax_cluster.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zones" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_address" {
  description = "The DNS name of the DAX cluster without the port appended"
  value       = aws_dax_cluster.aws_dax_cluster.cluster_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_endpoint_encryption_type" {
  description = "NONE and TLSNONE."
  value       = aws_dax_cluster.aws_dax_cluster.cluster_endpoint_encryption_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_topic_arn" {
  description = "arn:aws:sns:us-east-1:012345678999:my_sns_topic"
  value       = aws_dax_cluster.aws_dax_cluster.notification_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "The port used by the configuration endpoint"
  value       = aws_dax_cluster.aws_dax_cluster.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replication_factor" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.replication_factor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_group_name" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.subnet_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the DAX cluster"
  value       = aws_dax_cluster.aws_dax_cluster.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = " – (Optional) Description for the cluster"
  value       = aws_dax_cluster.aws_dax_cluster.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_type" {
  description = "Nodes for supported node types"
  value       = aws_dax_cluster.aws_dax_cluster.node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nodes" {
  description = "List of node objects including id, address, portavailability_zone$${aws_dax_cluster.test.nodes.0.address}"
  value       = aws_dax_cluster.aws_dax_cluster.nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 45m)"
  value       = aws_dax_cluster.aws_dax_cluster.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the DAX cluster"
  value       = aws_dax_cluster.aws_dax_cluster.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 45m)"
  value       = aws_dax_cluster.aws_dax_cluster.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nodes" {
  description = "List of node objects including id, address, portavailability_zone$${aws_dax_cluster.test.nodes.0.address}"
  value       = aws_dax_cluster.aws_dax_cluster.nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "The port used by the configuration endpoint"
  value       = aws_dax_cluster.aws_dax_cluster.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 45m)"
  value       = aws_dax_cluster.aws_dax_cluster.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_address" {
  description = "The DNS name of the DAX cluster without the port appended"
  value       = aws_dax_cluster.aws_dax_cluster.cluster_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_endpoint" {
  description = ""
  value       = aws_dax_cluster.aws_dax_cluster.configuration_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_dax_cluster.aws_dax_cluster.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dax_cluster.aws_dax_cluster.tags_all
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
      "kind/name"                   = "aws_dax_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}