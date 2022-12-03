resource "aws_sagemaker_project" "aws_sagemaker_project" {
  provisioning_parameter               = var.provisioning_parameter
  service_catalog_provisioning_details = var.service_catalog_provisioning_details
  value                                = var.value
  arn                                  = var.arn
  key                                  = var.key
  product_id                           = var.product_id
  project_name                         = var.project_name
  provisioning_artifact_id             = var.provisioning_artifact_id
  tags                                 = var.tags
  id                                   = var.id
  path_id                              = var.path_id
  project_description                  = var.project_description
  project_id                           = var.project_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "value" {
  description = "(Optional) The value of the provisioning parameter.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Project."
  type        = string
}
variable "key" {
  description = "(Required) The key that identifies a provisioning parameter."
  type        = string
}
variable "product_id" {
  description = "(Required) The ID of the product to provision."
  type        = string
}
variable "project_name" {
  description = "(Required) The name of the Project."
  type        = string
}
variable "provisioning_parameter" {
  description = "(Optional) A list of key value pairs that you specify when you provision a product. See Provisioning Parameter below.Provisioning Parameter"
  type        = string
  default     = ""
}
variable "service_catalog_provisioning_details" {
  description = "(Required) The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below."
  type        = string
}
variable "id" {
  description = "The name of the Project."
  type        = string
}
variable "path_id" {
  description = "(Optional) The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path."
  type        = string
  default     = ""
}
variable "project_description" {
  description = "(Optional) A description for the project."
  type        = string
  default     = ""
}
variable "project_id" {
  description = "The ID of the project."
  type        = string
}
variable "provisioning_artifact_id" {
  description = "(Optional) The ID of the provisioning artifact."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Service Catalog Provisioning Details"
  type        = string
  default     = ""
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
output "key" {
  description = "(Required) The key that identifies a provisioning parameter."
  value       = aws_sagemaker_project.aws_sagemaker_project.key
}
output "product_id" {
  description = "(Required) The ID of the product to provision."
  value       = aws_sagemaker_project.aws_sagemaker_project.product_id
}
output "project_name" {
  description = "(Required) The name of the Project."
  value       = aws_sagemaker_project.aws_sagemaker_project.project_name
}
output "provisioning_parameter" {
  description = "(Optional) A list of key value pairs that you specify when you provision a product. See Provisioning Parameter below.Provisioning Parameter"
  value       = aws_sagemaker_project.aws_sagemaker_project.provisioning_parameter
}
output "service_catalog_provisioning_details" {
  description = "(Required) The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below."
  value       = aws_sagemaker_project.aws_sagemaker_project.service_catalog_provisioning_details
}
output "value" {
  description = "(Optional) The value of the provisioning parameter.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_project.aws_sagemaker_project.value
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Project."
  value       = aws_sagemaker_project.aws_sagemaker_project.arn
}
output "path_id" {
  description = "(Optional) The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path."
  value       = aws_sagemaker_project.aws_sagemaker_project.path_id
}
output "project_description" {
  description = "(Optional) A description for the project."
  value       = aws_sagemaker_project.aws_sagemaker_project.project_description
}
output "project_id" {
  description = "The ID of the project."
  value       = aws_sagemaker_project.aws_sagemaker_project.project_id
}
output "provisioning_artifact_id" {
  description = "(Optional) The ID of the provisioning artifact."
  value       = aws_sagemaker_project.aws_sagemaker_project.provisioning_artifact_id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Service Catalog Provisioning Details"
  value       = aws_sagemaker_project.aws_sagemaker_project.tags
}
output "id" {
  description = "The name of the Project."
  value       = aws_sagemaker_project.aws_sagemaker_project.id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Project."
  value       = aws_sagemaker_project.aws_sagemaker_project.arn
}
output "id" {
  description = "The name of the Project."
  value       = aws_sagemaker_project.aws_sagemaker_project.id
}
output "project_id" {
  description = "The ID of the project."
  value       = aws_sagemaker_project.aws_sagemaker_project.project_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_project.aws_sagemaker_project.tags_all
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
      "kind/name"                   = "aws_sagemaker_project"
      "kind/version"                = "v0.1.0"
    }
  }
}
