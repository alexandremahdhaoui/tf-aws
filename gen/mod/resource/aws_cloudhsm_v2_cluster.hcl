resource "aws_cloudhsm_v2_cluster" "aws_cloudhsm_v2_cluster" {
  cluster_certificates.0.cluster_certificate               = var.cluster_certificates.0.cluster_certificate
  cluster_state                                            = var.cluster_state
  tags                                                     = var.tags
  cluster_certificates.0.cluster_csr                       = var.cluster_certificates.0.cluster_csr
  cluster_certificates.0.hsm_certificate                   = var.cluster_certificates.0.hsm_certificate
  cluster_id                                               = var.cluster_id
  source_backup_identifier                                 = var.source_backup_identifier
  hsm_type                                                 = var.hsm_type
  security_group_id                                        = var.security_group_id
  subnet_ids                                               = var.subnet_ids
  vpc_id                                                   = var.vpc_id
  cluster_certificates                                     = var.cluster_certificates
  cluster_certificates.0.aws_hardware_certificate          = var.cluster_certificates.0.aws_hardware_certificate
  cluster_certificates.0.manufacturer_hardware_certificate = var.cluster_certificates.0.manufacturer_hardware_certificate
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_certificates.0.hsm_certificate" {
  description = "The HSM certificate issued (signed) by the HSM hardware."
  type        = string
}
variable "cluster_id" {
  description = "The id of the CloudHSM cluster."
  type        = string
}
variable "source_backup_identifier" {
  description = "(Optional) ID of Cloud HSM v2 cluster backup to be restored."
  type        = string
  default     = ""
}
variable "hsm_type" {
  description = "(Required) The type of HSM module in the cluster. Currently, only hsm1.medium is supported."
  type        = string
}
variable "security_group_id" {
  description = "The ID of the security group associated with the CloudHSM cluster."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) The IDs of subnets in which cluster will operate."
  type        = string
}
variable "vpc_id" {
  description = "The id of the VPC that the CloudHSM cluster resides in."
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
variable "cluster_certificates.0.manufacturer_hardware_certificate" {
  description = "The HSM hardware certificate issued (signed) by the hardware manufacturer."
  type        = string
}
variable "cluster_certificates.0.cluster_certificate" {
  description = "The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner."
  type        = string
}
variable "cluster_state" {
  description = "The state of the CloudHSM cluster."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "cluster_certificates.0.cluster_csr" {
  description = "The certificate signing request (CSR). Available only in UNINITIALIZED state after an HSM instance is added to the cluster."
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "cluster_certificates.0.manufacturer_hardware_certificate" {
  description = "The HSM hardware certificate issued (signed) by the hardware manufacturer."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.manufacturer_hardware_certificate
}
output "hsm_type" {
  description = "(Required) The type of HSM module in the cluster. Currently, only hsm1.medium is supported."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.hsm_type
}
output "security_group_id" {
  description = "The ID of the security group associated with the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.security_group_id
}
output "subnet_ids" {
  description = "(Required) The IDs of subnets in which cluster will operate."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.subnet_ids
}
output "vpc_id" {
  description = "The id of the VPC that the CloudHSM cluster resides in."
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
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.tags
}
output "cluster_certificates.0.cluster_certificate" {
  description = "The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.cluster_certificate
}
output "cluster_state" {
  description = "The state of the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_state
}
output "cluster_certificates.0.cluster_csr" {
  description = "The certificate signing request (CSR). Available only in UNINITIALIZED state after an HSM instance is added to the cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.cluster_csr
}
output "source_backup_identifier" {
  description = "(Optional) ID of Cloud HSM v2 cluster backup to be restored."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.source_backup_identifier
}
output "cluster_certificates.0.hsm_certificate" {
  description = "The HSM certificate issued (signed) by the HSM hardware."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.hsm_certificate
}
output "cluster_id" {
  description = "The id of the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_id
}
output "cluster_certificates" {
  description = "The list of cluster certificates.\n"
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates
}
output "cluster_certificates.0.hsm_certificate" {
  description = "The HSM certificate issued (signed) by the HSM hardware."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.hsm_certificate
}
output "cluster_state" {
  description = "The state of the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_state
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.tags_all
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
  description = "The certificate signing request (CSR). Available only in UNINITIALIZED state after an HSM instance is added to the cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.cluster_csr
}
output "cluster_certificates.0.manufacturer_hardware_certificate" {
  description = "The HSM hardware certificate issued (signed) by the hardware manufacturer."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_certificates.0.manufacturer_hardware_certificate
}
output "cluster_id" {
  description = "The id of the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.cluster_id
}
output "security_group_id" {
  description = "The ID of the security group associated with the CloudHSM cluster."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.security_group_id
}
output "vpc_id" {
  description = "The id of the VPC that the CloudHSM cluster resides in."
  value       = aws_cloudhsm_v2_cluster.aws_cloudhsm_v2_cluster.vpc_id
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
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_cloudhsm_v2_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
