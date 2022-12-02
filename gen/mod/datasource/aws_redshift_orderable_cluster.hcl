datasource "aws_redshift_orderable_cluster" "aws_redshift_orderable_cluster" {
  cluster_type         = var.cluster_type
  cluster_version      = var.cluster_version
  node_type            = var.node_type
  preferred_node_types = var.preferred_node_types
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_type" {
  description = "(Optional) Reshift Cluster typeE.g., multi-node or single-node"
  type        = string
  default     = ""
}
variable "cluster_version" {
  description = "(Optional) Redshift Cluster versionE.g., 1.0"
  type        = string
  default     = ""
}
variable "node_type" {
  description = "(Optional) Redshift Cluster node typeE.g., dc2.8xlarge"
  type        = string
  default     = ""
}
variable "preferred_node_types" {
  description = "(Optional) Ordered list of preferred Redshift Cluster node types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "cluster_type" {
  description = "(Optional) Reshift Cluster typeE.g., multi-node or single-node"
  value       = aws_redshift_orderable_cluster.aws_redshift_orderable_cluster.cluster_type
}
output "cluster_version" {
  description = "(Optional) Redshift Cluster versionE.g., 1.0"
  value       = aws_redshift_orderable_cluster.aws_redshift_orderable_cluster.cluster_version
}
output "node_type" {
  description = "(Optional) Redshift Cluster node typeE.g., dc2.8xlarge"
  value       = aws_redshift_orderable_cluster.aws_redshift_orderable_cluster.node_type
}
output "preferred_node_types" {
  description = "(Optional) Ordered list of preferred Redshift Cluster node types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_orderable_cluster.aws_redshift_orderable_cluster.preferred_node_types
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
}
