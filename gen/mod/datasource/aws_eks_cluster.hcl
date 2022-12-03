datasource "aws_eks_cluster" "aws_eks_cluster" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform_version" {
  description = "Platform version for the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.platform_version
}
output "subnet_ids" {
  description = " – List of subnet IDs"
  value       = aws_eks_cluster.aws_eks_cluster.subnet_ids
}
output "control_plane_instance_type" {
  description = "The Amazon EC2 instance type for all Kubernetes control plane instances."
  value       = aws_eks_cluster.aws_eks_cluster.control_plane_instance_type
}
output "created_at" {
  description = "Unix epoch time stamp in seconds for when the cluster was created."
  value       = aws_eks_cluster.aws_eks_cluster.created_at
}
output "endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled."
  value       = aws_eks_cluster.aws_eks_cluster.endpoint_public_access
}
output "role_arn" {
  description = "ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf."
  value       = aws_eks_cluster.aws_eks_cluster.role_arn
}
output "status" {
  description = "Status of the EKS cluster. One of CREATING, ACTIVE, DELETING, FAILED."
  value       = aws_eks_cluster.aws_eks_cluster.status
}
output "data" {
  description = "The base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster."
  value       = aws_eks_cluster.aws_eks_cluster.data
}
output "id" {
  description = "Name of the cluster"
  value       = aws_eks_cluster.aws_eks_cluster.id
}
output "outpost_config" {
  description = "Contains Outpost Configuration.\n"
  value       = aws_eks_cluster.aws_eks_cluster.outpost_config
}
output "certificate_authority" {
  description = "Nested attribute containing certificate-authority-data"
  value       = aws_eks_cluster.aws_eks_cluster.certificate_authority
}
output "ip_family" {
  description = "ipv4 or ipv6."
  value       = aws_eks_cluster.aws_eks_cluster.ip_family
}
output "kubernetes_network_config" {
  description = "Nested list containing Kubernetes Network Configuration.\n"
  value       = aws_eks_cluster.aws_eks_cluster.kubernetes_network_config
}
output "endpoint" {
  description = "Endpoint for your Kubernetes API server."
  value       = aws_eks_cluster.aws_eks_cluster.endpoint
}
output "version" {
  description = "Kubernetes server version for the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.version
}
output "cluster_security_group_id" {
  description = "The cluster security group that was created by Amazon EKS for the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.cluster_security_group_id
}
output "outpost_arns" {
  description = "List of ARNs of the Outposts hosting the EKS cluster. Only a single ARN is supported currently."
  value       = aws_eks_cluster.aws_eks_cluster.outpost_arns
}
output "tags" {
  description = "Key-value map of resource tags."
  value       = aws_eks_cluster.aws_eks_cluster.tags
}
output "oidc" {
  description = "Nested attribute containing OpenID Connect"
  value       = aws_eks_cluster.aws_eks_cluster.oidc
}
output "public_access_cidrs" {
  description = "List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint."
  value       = aws_eks_cluster.aws_eks_cluster.public_access_cidrs
}
output "vpc_config" {
  description = "Nested list containing VPC configuration for the cluster.\n"
  value       = aws_eks_cluster.aws_eks_cluster.vpc_config
}
output "service_ipv4_cidr" {
  description = "The CIDR block to assign Kubernetes pod and service IP addresses from if ipv4 was specified when the cluster was created."
  value       = aws_eks_cluster.aws_eks_cluster.service_ipv4_cidr
}
output "service_ipv6_cidr" {
  description = "The CIDR block to assign Kubernetes pod and service IP addresses from if ipv6 was specified when the cluster was created. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.service_ipv6_cidr
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.arn
}
output "enabled_cluster_log_types" {
  description = "The enabled control plane logs."
  value       = aws_eks_cluster.aws_eks_cluster.enabled_cluster_log_types
}
output "security_group_ids" {
  description = " – List of security group IDs"
  value       = aws_eks_cluster.aws_eks_cluster.security_group_ids
}
output "endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  value       = aws_eks_cluster.aws_eks_cluster.endpoint_private_access
}
output "identity" {
  description = "Nested attribute containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. For an example using this information to enable IAM Roles for Service Accounts, see the aws_eks_cluster resource documentation"
  value       = aws_eks_cluster.aws_eks_cluster.identity
}
output "issuer" {
  description = "Issuer URL for the OpenID Connect identity provider."
  value       = aws_eks_cluster.aws_eks_cluster.issuer
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
