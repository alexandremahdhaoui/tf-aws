datasource "aws_msk_broker_nodes" "aws_msk_broker_nodes" {
  cluster_arn           = var.cluster_arn
  endpoints             = var.endpoints
  node_info_list        = var.node_info_list
  attached_eni_id       = var.attached_eni_id
  broker_id             = var.broker_id
  client_subnet         = var.client_subnet
  client_vpc_ip_address = var.client_vpc_ip_address
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "client_vpc_ip_address" {
  description = "The client virtual private cloud (VPC) IP address"
  type        = string
}
variable "cluster_arn" {
  description = "(Required) ARN of the cluster the nodes belong to.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "endpoints" {
  description = "Set of endpoints for accessing the broker. This does not include ports"
  type        = string
}
variable "node_info_list" {
  description = "List of MSK Broker Nodes, sorted by broker ID in ascending order.Nodes"
  type        = string
}
variable "attached_eni_id" {
  description = "Attached elastic network interface of the broker"
  type        = string
}
variable "broker_id" {
  description = "ID of the broker"
  type        = string
}
variable "client_subnet" {
  description = "Client subnet to which this broker node belongs"
  type        = string
}
output "client_subnet" {
  description = "Client subnet to which this broker node belongs"
  value       = aws_msk_broker_nodes.aws_msk_broker_nodes.client_subnet
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_vpc_ip_address" {
  description = "The client virtual private cloud (VPC) IP address"
  value       = aws_msk_broker_nodes.aws_msk_broker_nodes.client_vpc_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_arn" {
  description = "(Required) ARN of the cluster the nodes belong to.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_msk_broker_nodes.aws_msk_broker_nodes.cluster_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoints" {
  description = "Set of endpoints for accessing the broker. This does not include ports"
  value       = aws_msk_broker_nodes.aws_msk_broker_nodes.endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_info_list" {
  description = "List of MSK Broker Nodes, sorted by broker ID in ascending order.Nodes"
  value       = aws_msk_broker_nodes.aws_msk_broker_nodes.node_info_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attached_eni_id" {
  description = "Attached elastic network interface of the broker"
  value       = aws_msk_broker_nodes.aws_msk_broker_nodes.attached_eni_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "broker_id" {
  description = "ID of the broker"
  value       = aws_msk_broker_nodes.aws_msk_broker_nodes.broker_id
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
}
