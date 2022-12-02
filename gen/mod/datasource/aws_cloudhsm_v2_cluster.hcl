datasource "aws_cloudhsm_v2_cluster" "aws_cloudhsm_v2_cluster" {
  cluster_certificates.0.hsm_certificate          = var.cluster_certificates.0.hsm_certificate
  cluster_id                                      = var.cluster_id
  security_group_id                               = var.security_group_id
  subnet_ids                                      = var.subnet_ids
  vpc_id                                          = var.vpc_id
  cluster_certificates.0.cluster_csr              = var.cluster_certificates.0.cluster_csr
  cluster_certificates.0.aws_hardware_certificate = var.cluster_certificates.0.aws_hardware_certificate
  cluster_certificates.0.cluster_certificate      = var.cluster_certificates.0.cluster_certificate
  cluster_state                                   = var.cluster_state
  cluster_certificates                            = var.cluster_certificates
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_certificates.0.cluster_csr" {
  description = "The certificate signing request (CSR). Available only in UNINITIALIZED state."
  type        = string
}
variable "cluster_certificates.0.hsm_certificate" {
  description = "The HSM certificate issued (signed) by the HSM hardware."
  type        = string
}
variable "cluster_id" {
  description = "(Required) ID of Cloud HSM v2 cluster."
  type        = string
}
variable "security_group_id" {
  description = "ID of the security group associated with the CloudHSM cluster."
  type        = string
}
variable "subnet_ids" {
  description = "IDs of subnets in which cluster operates."
  type        = string
}
variable "vpc_id" {
  description = "ID of the VPC that the CloudHSM cluster resides in."
  type        = string
}
variable "cluster_certificates" {
  description = "The list of cluster certificates.\n"
  type        = string
}
variable "cluster_certificates.0.aws_hardware_certificate" {
  description = "The HSM hardware certificate issued (signed) by AWS CloudHSM."
  type        = string
}
variable "cluster_certificates.0.cluster_certificate" {
  description = "The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner."
  type        = string
}
variable "cluster_state" {
  description = "(Optional) State of the cluster to be found.The following attributes are exported:"
  type        = string
  default     = ""
}
output "cluster_certificates.0.aws_hardware_certificate" {
  description = "The HSM hardware certificate issued (signed) by AWS CloudHSM."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.aws_hardware_certificate
}
output "cluster_certificates.0.cluster_certificate" {
  description = "The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.cluster_certificate
}
output "cluster_state" {
  description = "(Optional) State of the cluster to be found.The following attributes are exported:"
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_state
}
output "cluster_certificates" {
  description = "The list of cluster certificates.\n"
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates
}
output "cluster_certificates.0.hsm_certificate" {
  description = "The HSM certificate issued (signed) by the HSM hardware."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.hsm_certificate
}
output "cluster_id" {
  description = "(Required) ID of Cloud HSM v2 cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_id
}
output "security_group_id" {
  description = "ID of the security group associated with the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.security_group_id
}
output "subnet_ids" {
  description = "IDs of subnets in which cluster operates."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.subnet_ids
}
output "vpc_id" {
  description = "ID of the VPC that the CloudHSM cluster resides in."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.vpc_id
}
output "cluster_certificates.0.cluster_csr" {
  description = "The certificate signing request (CSR). Available only in UNINITIALIZED state."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.cluster_csr
}
output "security_group_id" {
  description = "ID of the security group associated with the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.security_group_id
}
output "subnet_ids" {
  description = "IDs of subnets in which cluster operates."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.subnet_ids
}
output "vpc_id" {
  description = "ID of the VPC that the CloudHSM cluster resides in."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.vpc_id
}
output "cluster_certificates" {
  description = "The list of cluster certificates.\n"
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates
}
output "cluster_certificates.0.aws_hardware_certificate" {
  description = "The HSM hardware certificate issued (signed) by AWS CloudHSM."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.aws_hardware_certificate
}
output "cluster_certificates.0.cluster_certificate" {
  description = "The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.cluster_certificate
}
output "cluster_certificates.0.cluster_csr" {
  description = "The certificate signing request (CSR). Available only in UNINITIALIZED state."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.cluster_csr
}
output "cluster_certificates.0.hsm_certificate" {
  description = "The HSM certificate issued (signed) by the HSM hardware."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.hsm_certificate
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
