datasource "aws_eks_node_group" "aws_eks_node_group" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.status
}
output "taints" {
  description = "List of objects containing information about taints applied to the nodes in the EKS Node Group.\n"
  value       = aws_eks_node_group.aws_eks_node_group.taints
}
output "value" {
  description = "The value of the taint."
  value       = aws_eks_node_group.aws_eks_node_group.value
}
output "id" {
  description = "EKS Cluster name and EKS Node Group name separated by a colon (:)."
  value       = aws_eks_node_group.aws_eks_node_group.id
}
output "labels" {
  description = "Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed."
  value       = aws_eks_node_group.aws_eks_node_group.labels
}
output "release_version" {
  description = " – AMI version of the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.release_version
}
output "remote_access" {
  description = ""
  value       = aws_eks_node_group.aws_eks_node_group.remote_access
}
output "arn" {
  description = "ARN of the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.arn
}
output "effect" {
  description = "The effect of the taint."
  value       = aws_eks_node_group.aws_eks_node_group.effect
}
output "capacity_type" {
  description = "Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT."
  value       = aws_eks_node_group.aws_eks_node_group.capacity_type
}
output "desired_size" {
  description = "Desired number of worker nodes."
  value       = aws_eks_node_group.aws_eks_node_group.desired_size
}
output "instance_types" {
  description = "Set of instance types associated with the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.instance_types
}
output "resources" {
  description = "List of objects containing information about underlying resources.\n"
  value       = aws_eks_node_group.aws_eks_node_group.resources
}
output "max_size" {
  description = "Maximum number of worker nodes."
  value       = aws_eks_node_group.aws_eks_node_group.max_size
}
output "min_size" {
  description = "Minimum number of worker nodes."
  value       = aws_eks_node_group.aws_eks_node_group.min_size
}
output "ec2_ssh_key" {
  description = "EC2 Key Pair name that provides access for SSH communication with the worker nodes in the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.ec2_ssh_key
}
output "key" {
  description = "The key of the taint."
  value       = aws_eks_node_group.aws_eks_node_group.key
}
output "name" {
  description = "Name of the AutoScaling Group."
  value       = aws_eks_node_group.aws_eks_node_group.name
}
output "subnet_ids" {
  description = " – Identifiers of EC2 Subnets to associate with the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.subnet_ids
}
output "autoscaling_groups" {
  description = "List of objects containing information about AutoScaling Groups.\n"
  value       = aws_eks_node_group.aws_eks_node_group.autoscaling_groups
}
output "ami_type" {
  description = "Type of Amazon Machine Image (AMI) associated with the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.ami_type
}
output "scaling_config" {
  description = ""
  value       = aws_eks_node_group.aws_eks_node_group.scaling_config
}
output "tags" {
  description = "Key-value map of resource tags."
  value       = aws_eks_node_group.aws_eks_node_group.tags
}
output "node_role_arn" {
  description = " – ARN of the IAM Role that provides permissions for the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.node_role_arn
}
output "remote_access_security_group_id" {
  description = "Identifier of the remote access EC2 Security Group."
  value       = aws_eks_node_group.aws_eks_node_group.remote_access_security_group_id
}
output "source_security_group_ids" {
  description = "Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes."
  value       = aws_eks_node_group.aws_eks_node_group.source_security_group_ids
}
output "disk_size" {
  description = "Disk size in GiB for worker nodes."
  value       = aws_eks_node_group.aws_eks_node_group.disk_size
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
