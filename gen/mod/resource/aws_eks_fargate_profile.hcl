resource "aws_eks_fargate_profile" "aws_eks_fargate_profile" {
  tags_all               = var.tags_all
  cluster_name           = var.cluster_name
  create                 = var.create
  delete                 = var.delete
  id                     = var.id
  pod_execution_role_arn = var.pod_execution_role_arn
  subnet_ids             = var.subnet_ids
  tags                   = var.tags
  fargate_profile_name   = var.fargate_profile_name
  labels                 = var.labels
  namespace              = var.namespace
  status                 = var.status
  arn                    = var.arn
  selector               = var.selector
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "delete" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "EKS Cluster name and EKS Fargate Profile name separated by a colon (:)."
  type        = string
  default     = ""
}
variable "pod_execution_role_arn" {
  description = " – (Required) Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile."
  type        = string
}
variable "subnet_ids" {
  description = " – (Required) Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.selector Configuration Block"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "namespace" {
  description = "(Required) Kubernetes namespace for selection."
  type        = string
}
variable "status" {
  description = "Status of the EKS Fargate Profile."
  type        = string
  default     = ""
}
variable "fargate_profile_name" {
  description = " – (Required) Name of the EKS Fargate Profile."
  type        = string
}
variable "labels" {
  description = "(Optional) Key-value map of Kubernetes labels for selection.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Fargate Profile."
  type        = string
  default     = ""
}
variable "selector" {
  description = "(Required) Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below."
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
output "fargate_profile_name" {
  description = " – (Required) Name of the EKS Fargate Profile."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.fargate_profile_name
}
output "labels" {
  description = "(Optional) Key-value map of Kubernetes labels for selection.In addition to all arguments above, the following attributes are exported:"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.labels
}
output "namespace" {
  description = "(Required) Kubernetes namespace for selection."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.namespace
}
output "status" {
  description = "Status of the EKS Fargate Profile."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.status
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Fargate Profile."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.arn
}
output "selector" {
  description = "(Required) Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.selector
}
output "pod_execution_role_arn" {
  description = " – (Required) Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.pod_execution_role_arn
}
output "subnet_ids" {
  description = " – (Required) Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.subnet_ids
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.selector Configuration Block"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.tags_all
}
output "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.cluster_name
}
output "create" {
  description = "(Default 10m)"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.delete
}
output "id" {
  description = "EKS Cluster name and EKS Fargate Profile name separated by a colon (:)."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.delete
}
output "id" {
  description = "EKS Cluster name and EKS Fargate Profile name separated by a colon (:)."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.id
}
output "status" {
  description = "Status of the EKS Fargate Profile."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Fargate Profile."
  value       = aws_eks_fargate_profile.aws_eks_fargate_profile.arn
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
      "kind/name"                   = "aws_eks_fargate_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
