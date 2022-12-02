datasource "aws_ec2_network_insights_analysis" "aws_ec2_network_insights_analysis" {
  filter                   = var.filter
  filter_in_arns           = var.filter_in_arns
  status                   = var.status
  values                   = var.values
  arn                      = var.arn
  forward_path_components  = var.forward_path_components
  name                     = var.name
  network_insights_path_id = var.network_insights_path_id
  path_found               = var.path_found
  status_message           = var.status_message
  alternate_path_hints     = var.alternate_path_hints
  return_path_components   = var.return_path_components
  start_date               = var.start_date
  explanations             = var.explanations
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "explanations" {
  description = "Explanation codes for an unreachable path."
  type        = string
}
variable "return_path_components" {
  description = "The components in the path from destination to source."
  type        = string
}
variable "start_date" {
  description = "Date/time the analysis was started."
  type        = string
}
variable "arn" {
  description = "ARN of the selected Network Insights Analysis."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "filter_in_arns" {
  description = "ARNs of the AWS resources that the path must traverse."
  type        = string
}
variable "status" {
  description = "Status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "status_message" {
  description = "Message to provide more context when the status is failed."
  type        = string
}
variable "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path."
  type        = string
}
variable "forward_path_components" {
  description = "The components in the path from source to destination."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeNetworkInsightsAnalyses API Reference."
  type        = string
}
variable "network_insights_path_id" {
  description = "The ID of the path."
  type        = string
}
variable "path_found" {
  description = "Set to true if the destination was reachable."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.values
}
output "arn" {
  description = "ARN of the selected Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.arn
}
output "filter" {
  description = " configuration block:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.filter
}
output "filter_in_arns" {
  description = "ARNs of the AWS resources that the path must traverse."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.filter_in_arns
}
output "status" {
  description = "Status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status
}
output "path_found" {
  description = "Set to true if the destination was reachable."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.path_found
}
output "status_message" {
  description = "Message to provide more context when the status is failed."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status_message
}
output "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.alternate_path_hints
}
output "forward_path_components" {
  description = "The components in the path from source to destination."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.forward_path_components
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeNetworkInsightsAnalyses API Reference."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.name
}
output "network_insights_path_id" {
  description = "The ID of the path."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.network_insights_path_id
}
output "explanations" {
  description = "Explanation codes for an unreachable path."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.explanations
}
output "return_path_components" {
  description = "The components in the path from destination to source."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.return_path_components
}
output "start_date" {
  description = "Date/time the analysis was started."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.start_date
}
output "status" {
  description = "Status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status
}
output "status_message" {
  description = "Message to provide more context when the status is failed."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status_message
}
output "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.alternate_path_hints
}
output "arn" {
  description = "ARN of the selected Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.arn
}
output "explanations" {
  description = "Explanation codes for an unreachable path."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.explanations
}
output "start_date" {
  description = "Date/time the analysis was started."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.start_date
}
output "return_path_components" {
  description = "The components in the path from destination to source."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.return_path_components
}
output "filter_in_arns" {
  description = "ARNs of the AWS resources that the path must traverse."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.filter_in_arns
}
output "forward_path_components" {
  description = "The components in the path from source to destination."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.forward_path_components
}
output "network_insights_path_id" {
  description = "The ID of the path."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.network_insights_path_id
}
output "path_found" {
  description = "Set to true if the destination was reachable."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.path_found
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
