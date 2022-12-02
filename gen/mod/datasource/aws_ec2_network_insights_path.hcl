datasource "aws_ec2_network_insights_path" "aws_ec2_network_insights_path" {
  arn              = var.arn
  name             = var.name
  protocol         = var.protocol
  source           = var.source
  source_ip        = var.source_ip
  values           = var.values
  destination      = var.destination
  destination_ip   = var.destination_ip
  destination_port = var.destination_port
  filter           = var.filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "destination" {
  description = "AWS resource that is the destination of the path."
  type        = string
}
variable "destination_ip" {
  description = "IP address of the AWS resource that is the destination of the path."
  type        = string
}
variable "destination_port" {
  description = "Destination port."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "arn" {
  description = "ARN of the selected Network Insights Path."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeNetworkInsightsPaths API Reference."
  type        = string
}
variable "protocol" {
  description = "Protocol."
  type        = string
}
variable "source" {
  description = "AWS resource that is the source of the path."
  type        = string
}
variable "source_ip" {
  description = "IP address of the AWS resource that is the source of the path."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "destination_port" {
  description = "Destination port."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.destination_port
}
output "filter" {
  description = " configuration block:"
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.filter
}
output "destination" {
  description = "AWS resource that is the destination of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.destination
}
output "destination_ip" {
  description = "IP address of the AWS resource that is the destination of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.destination_ip
}
output "protocol" {
  description = "Protocol."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.protocol
}
output "source" {
  description = "AWS resource that is the source of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.source
}
output "source_ip" {
  description = "IP address of the AWS resource that is the source of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.source_ip
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.values
}
output "arn" {
  description = "ARN of the selected Network Insights Path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.arn
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeNetworkInsightsPaths API Reference."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.name
}
output "source" {
  description = "AWS resource that is the source of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.source
}
output "source_ip" {
  description = "IP address of the AWS resource that is the source of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.source_ip
}
output "arn" {
  description = "ARN of the selected Network Insights Path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.arn
}
output "destination" {
  description = "AWS resource that is the destination of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.destination
}
output "destination_ip" {
  description = "IP address of the AWS resource that is the destination of the path."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.destination_ip
}
output "destination_port" {
  description = "Destination port."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.destination_port
}
output "protocol" {
  description = "Protocol."
  value       = aws_ec2_network_insights_path.aws_ec2_network_insights_path.protocol
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
