resource "aws_sagemaker_device_fleet" "aws_sagemaker_device_fleet" {
  device_fleet_name     = var.device_fleet_name
  enable_iot_role_alias = var.enable_iot_role_alias
  id                    = var.id
  arn                   = var.arn
  description           = var.description
  kms_key_id            = var.kms_key_id
  output_config         = var.output_config
  role_arn              = var.role_arn
  s3_output_location    = var.s3_output_location
  tags                  = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "device_fleet_name" {
  description = "(Required) The name of the Device Fleet (must be unique)."
  type        = string
}
variable "enable_iot_role_alias" {
  description = "(Optional) Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: \"SageMakerEdge-{DeviceFleetName}\"."
  type        = string
  default     = ""
}
variable "id" {
  description = "The name of the Device Fleet."
  type        = string
}
variable "output_config" {
  description = "(Required) Specifies details about the repository. see Output Config details below."
  type        = string
}
variable "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT)."
  type        = string
}
variable "s3_output_location" {
  description = "(Required) The Amazon Simple Storage (S3) bucker URI."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Output Config"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Device Fleet."
  type        = string
}
variable "description" {
  description = "(Optional) A description of the fleet."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume after compilation job. If you don't provide a KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account.In addition to all arguments above, the following attributes are exported:"
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
output "device_fleet_name" {
  description = "(Required) The name of the Device Fleet (must be unique)."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.device_fleet_name
}
output "enable_iot_role_alias" {
  description = "(Optional) Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: \"SageMakerEdge-{DeviceFleetName}\"."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.enable_iot_role_alias
}
output "id" {
  description = "The name of the Device Fleet."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Device Fleet."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.arn
}
output "description" {
  description = "(Optional) A description of the fleet."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.description
}
output "kms_key_id" {
  description = "(Optional) The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume after compilation job. If you don't provide a KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.kms_key_id
}
output "output_config" {
  description = "(Required) Specifies details about the repository. see Output Config details below."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.output_config
}
output "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT)."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.role_arn
}
output "s3_output_location" {
  description = "(Required) The Amazon Simple Storage (S3) bucker URI."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.s3_output_location
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Output Config"
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.tags
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Device Fleet."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.arn
}
output "id" {
  description = "The name of the Device Fleet."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_device_fleet.aws_sagemaker_device_fleet.tags_all
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
      "kind/name"                   = "aws_sagemaker_device_fleet"
      "kind/version"                = "v0.1.0"
    }
  }
}
