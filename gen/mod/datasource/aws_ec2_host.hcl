datasource "aws_ec2_host" "aws_ec2_host" {
  auto_placement    = var.auto_placement
  availability_zone = var.availability_zone
  id                = var.id
  owner_id          = var.owner_id
  values            = var.values
  cores             = var.cores
  instance_family   = var.instance_family
  instance_type     = var.instance_type
  name              = var.name
  outpost_arn       = var.outpost_arn
  total_vcpus       = var.total_vcpus
  arn               = var.arn
  host_recovery     = var.host_recovery
  sockets           = var.sockets
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "instance_family" {
  description = "Instance family supported by the Dedicated Host. For example, \"m5\"."
  type        = string
}
variable "instance_type" {
  description = "Instance type supported by the Dedicated Host. For example, \"m5.large\". If the host supports multiple instance types, no instanceType is returned."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "outpost_arn" {
  description = "ARN of the AWS Outpost on which the Dedicated Host is allocated."
  type        = string
}
variable "total_vcpus" {
  description = "Total number of vCPUs on the Dedicated Host.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = "ARN of the Dedicated Host."
  type        = string
}
variable "host_recovery" {
  description = "Whether host recovery is enabled or disabled for the Dedicated Host."
  type        = string
}
variable "sockets" {
  description = "Number of sockets on the Dedicated Host."
  type        = string
}
variable "auto_placement" {
  description = "Whether auto-placement is on or off."
  type        = string
}
variable "availability_zone" {
  description = "Availability Zone of the Dedicated Host."
  type        = string
}
variable "id" {
  description = "ID of the Dedicated Host."
  type        = string
}
variable "owner_id" {
  description = "ID of the AWS account that owns the Dedicated Host."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field. A host will be selected if any one of the given values matches.In addition to the attributes above, the following attributes are exported:"
  type        = string
}
variable "cores" {
  description = "Number of cores on the Dedicated Host."
  type        = string
}
output "cores" {
  description = "Number of cores on the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.cores
}
output "instance_family" {
  description = "Instance family supported by the Dedicated Host. For example, \"m5\"."
  value       = aws_ec2_host.aws_ec2_host.instance_family
}
output "instance_type" {
  description = "Instance type supported by the Dedicated Host. For example, \"m5.large\". If the host supports multiple instance types, no instanceType is returned."
  value       = aws_ec2_host.aws_ec2_host.instance_type
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_ec2_host.aws_ec2_host.name
}
output "outpost_arn" {
  description = "ARN of the AWS Outpost on which the Dedicated Host is allocated."
  value       = aws_ec2_host.aws_ec2_host.outpost_arn
}
output "total_vcpus" {
  description = "Total number of vCPUs on the Dedicated Host.TimeoutsConfiguration options:"
  value       = aws_ec2_host.aws_ec2_host.total_vcpus
}
output "arn" {
  description = "ARN of the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.arn
}
output "host_recovery" {
  description = "Whether host recovery is enabled or disabled for the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.host_recovery
}
output "sockets" {
  description = "Number of sockets on the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.sockets
}
output "auto_placement" {
  description = "Whether auto-placement is on or off."
  value       = aws_ec2_host.aws_ec2_host.auto_placement
}
output "availability_zone" {
  description = "Availability Zone of the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.availability_zone
}
output "id" {
  description = "ID of the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.id
}
output "owner_id" {
  description = "ID of the AWS account that owns the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.owner_id
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field. A host will be selected if any one of the given values matches.In addition to the attributes above, the following attributes are exported:"
  value       = aws_ec2_host.aws_ec2_host.values
}
output "cores" {
  description = "Number of cores on the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.cores
}
output "host_recovery" {
  description = "Whether host recovery is enabled or disabled for the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.host_recovery
}
output "id" {
  description = "ID of the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.id
}
output "instance_type" {
  description = "Instance type supported by the Dedicated Host. For example, \"m5.large\". If the host supports multiple instance types, no instanceType is returned."
  value       = aws_ec2_host.aws_ec2_host.instance_type
}
output "owner_id" {
  description = "ID of the AWS account that owns the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.owner_id
}
output "sockets" {
  description = "Number of sockets on the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.sockets
}
output "total_vcpus" {
  description = "Total number of vCPUs on the Dedicated Host.TimeoutsConfiguration options:"
  value       = aws_ec2_host.aws_ec2_host.total_vcpus
}
output "arn" {
  description = "ARN of the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.arn
}
output "auto_placement" {
  description = "Whether auto-placement is on or off."
  value       = aws_ec2_host.aws_ec2_host.auto_placement
}
output "availability_zone" {
  description = "Availability Zone of the Dedicated Host."
  value       = aws_ec2_host.aws_ec2_host.availability_zone
}
output "instance_family" {
  description = "Instance family supported by the Dedicated Host. For example, \"m5\"."
  value       = aws_ec2_host.aws_ec2_host.instance_family
}
output "outpost_arn" {
  description = "ARN of the AWS Outpost on which the Dedicated Host is allocated."
  value       = aws_ec2_host.aws_ec2_host.outpost_arn
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
