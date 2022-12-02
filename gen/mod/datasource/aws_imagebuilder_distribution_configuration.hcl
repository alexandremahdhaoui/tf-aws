datasource "aws_imagebuilder_distribution_configuration" "aws_imagebuilder_distribution_configuration" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the distribution configuration was created."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.date_created
}
output "distribution" {
  description = "Set of distributions.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.distribution
}
output "enabled" {
  description = "A Boolean that represents the current state of faster launching for the Windows AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.enabled
}
output "launch_template_name" {
  description = "The name of the launch template to use for faster launching for a Windows AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_name
}
output "max_parallel_launches" {
  description = "The maximum number of parallel instances that are launched for creating resources."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.max_parallel_launches
}
output "region" {
  description = "AWS Region of distribution."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.region
}
output "date_updated" {
  description = "Date the distribution configuration was updated."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.date_updated
}
output "launch_permission" {
  description = "Nested list of EC2 launch permissions.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_permission
}
output "launch_template_version" {
  description = "The version of the launch template to use for faster launching for a Windows AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_version
}
output "organizational_unit_arns" {
  description = "Set of AWS Organizational Unit ARNs."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.organizational_unit_arns
}
output "ami_distribution_configuration" {
  description = "Nested list of AMI distribution configuration.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.ami_distribution_configuration
}
output "launch_template_configuration" {
  description = "Nested list of launch template configurations.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_configuration
}
output "launch_template_id" {
  description = "ID of the Amazon EC2 launch template."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_id
}
output "name" {
  description = "Name of the distribution configuration."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.name
}
output "repository_name" {
  description = "Name of the container repository where the output container image is stored."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.repository_name
}
output "target_account_ids" {
  description = "Set of target AWS Account identifiers."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.target_account_ids
}
output "target_repository" {
  description = "Set of destination repositories for the container distribution configuration.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.target_repository
}
output "container_tags" {
  description = "Set of tags that are attached to the container distribution configuration."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.container_tags
}
output "default" {
  description = "Whether the specified Amazon EC2 launch template is set as the default launch template."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.default
}
output "description" {
  description = "Description of the container distribution configuration."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.description
}
output "kms_key_id" {
  description = "ARN of Key Management Service (KMS) Key to encrypt AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.kms_key_id
}
output "organization_arns" {
  description = "Set of AWS Organization ARNs."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.organization_arns
}
output "target_resource_count" {
  description = "The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.target_resource_count
}
output "user_groups" {
  description = "Set of EC2 launch permission user groups."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.user_groups
}
output "account_id" {
  description = "The account ID that this configuration applies to."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.account_id
}
output "fast_launch_configuration" {
  description = "Nested list of Windows faster-launching configurations to use for AMI distribution.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.fast_launch_configuration
}
output "license_configuration_arns" {
  description = "Set of Amazon Resource Names (ARNs) of License Manager License Configurations."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.license_configuration_arns
}
output "user_ids" {
  description = "Set of AWS Account identifiers."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.user_ids
}
output "ami_tags" {
  description = "Key-value map of tags to apply to distributed AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.ami_tags
}
output "container_distribution_configuration" {
  description = "Nested list of container distribution configurations.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.container_distribution_configuration
}
output "launch_template" {
  description = "Nested list of launch templates that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template
}
output "service" {
  description = "Service in which the image is registered."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.service
}
output "snapshot_configuration" {
  description = "Nested list of configurations for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled.\n"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.snapshot_configuration
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
