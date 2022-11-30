datasource "aws_autoscaling_group" "aws_autoscaling_group" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Auto Scaling group."
  value       = aws_autoscaling_group.aws_autoscaling_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_cool_down" {
  description = "Amount of time, in seconds, after a scaling activity completes before another scaling activity can start."
  value       = aws_autoscaling_group.aws_autoscaling_group.default_cool_down
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "desired_capacity" {
  description = "Desired size of the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.desired_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "health_check_grace_period" {
  description = "The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service."
  value       = aws_autoscaling_group.aws_autoscaling_group.health_check_grace_period
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_size" {
  description = "Maximum size of the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.max_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Auto Scaling Group."
  value       = aws_autoscaling_group.aws_autoscaling_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current state of the group when DeleteAutoScalingGroup is in progress."
  value       = aws_autoscaling_group.aws_autoscaling_group.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled_metrics" {
  description = "List of metrics enabled for collection."
  value       = aws_autoscaling_group.aws_autoscaling_group.enabled_metrics
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the Auto Scaling Group."
  value       = aws_autoscaling_group.aws_autoscaling_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_configuration" {
  description = "The name of the associated launch configuration."
  value       = aws_autoscaling_group.aws_autoscaling_group.launch_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_size" {
  description = "Minimum size of the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.min_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_group" {
  description = "Name of the placement group into which to launch your instances, if any. For more information, see Placement Groups (http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the Amazon Elastic Compute Cloud User Guide."
  value       = aws_autoscaling_group.aws_autoscaling_group.placement_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_linked_role_arn" {
  description = "ARN of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf."
  value       = aws_autoscaling_group.aws_autoscaling_group.service_linked_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zones" {
  description = "One or more Availability Zones for the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "health_check_type" {
  description = "Service to use for the health checks. The valid values are EC2 and ELB."
  value       = aws_autoscaling_group.aws_autoscaling_group.health_check_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_balancers" {
  description = "One or more load balancers associated with the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.load_balancers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_group_arns" {
  description = "ARNs of the target groups for your load balancer."
  value       = aws_autoscaling_group.aws_autoscaling_group.target_group_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "termination_policies" {
  description = "The termination policies for the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.termination_policies
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
