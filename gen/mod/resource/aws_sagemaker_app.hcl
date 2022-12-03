resource "aws_sagemaker_app" "aws_sagemaker_app" {
  arn                         = var.arn
  id                          = var.id
  lifecycle_config_arn        = var.lifecycle_config_arn
  user_profile_name           = var.user_profile_name
  resource_spec               = var.resource_spec
  sagemaker_image_arn         = var.sagemaker_image_arn
  sagemaker_image_version_arn = var.sagemaker_image_version_arn
  tags                        = var.tags
  app_name                    = var.app_name
  app_type                    = var.app_type
  domain_id                   = var.domain_id
  instance_type               = var.instance_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "user_profile_name" {
  description = "(Required) The user profile name."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the app."
  type        = string
}
variable "id" {
  description = "The Amazon Resource Name (ARN) of the app."
  type        = string
}
variable "lifecycle_config_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource."
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Optional) The instance type that the image version runs on. For valid values see SageMaker Instance Types."
  type        = string
  default     = ""
}
variable "resource_spec" {
  description = "(Optional) The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.See Resource Spec below."
  type        = string
  default     = ""
}
variable "sagemaker_image_arn" {
  description = "(Optional) The ARN of the SageMaker image that the image version belongs to."
  type        = string
  default     = ""
}
variable "sagemaker_image_version_arn" {
  description = "(Optional) The ARN of the image version created on the instance.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Resource Spec"
  type        = string
  default     = ""
}
variable "app_name" {
  description = "(Required) The name of the app."
  type        = string
}
variable "app_type" {
  description = "(Required) The type of app. Valid values are JupyterServer, KernelGateway and TensorBoard."
  type        = string
}
variable "domain_id" {
  description = "(Required) The domain ID."
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
output "arn" {
  description = "The Amazon Resource Name (ARN) of the app."
  value       = aws_sagemaker_app.aws_sagemaker_app.arn
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the app."
  value       = aws_sagemaker_app.aws_sagemaker_app.id
}
output "lifecycle_config_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource."
  value       = aws_sagemaker_app.aws_sagemaker_app.lifecycle_config_arn
}
output "user_profile_name" {
  description = "(Required) The user profile name."
  value       = aws_sagemaker_app.aws_sagemaker_app.user_profile_name
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Resource Spec"
  value       = aws_sagemaker_app.aws_sagemaker_app.tags
}
output "app_name" {
  description = "(Required) The name of the app."
  value       = aws_sagemaker_app.aws_sagemaker_app.app_name
}
output "app_type" {
  description = "(Required) The type of app. Valid values are JupyterServer, KernelGateway and TensorBoard."
  value       = aws_sagemaker_app.aws_sagemaker_app.app_type
}
output "domain_id" {
  description = "(Required) The domain ID."
  value       = aws_sagemaker_app.aws_sagemaker_app.domain_id
}
output "instance_type" {
  description = "(Optional) The instance type that the image version runs on. For valid values see SageMaker Instance Types."
  value       = aws_sagemaker_app.aws_sagemaker_app.instance_type
}
output "resource_spec" {
  description = "(Optional) The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.See Resource Spec below."
  value       = aws_sagemaker_app.aws_sagemaker_app.resource_spec
}
output "sagemaker_image_arn" {
  description = "(Optional) The ARN of the SageMaker image that the image version belongs to."
  value       = aws_sagemaker_app.aws_sagemaker_app.sagemaker_image_arn
}
output "sagemaker_image_version_arn" {
  description = "(Optional) The ARN of the image version created on the instance.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_app.aws_sagemaker_app.sagemaker_image_version_arn
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the app."
  value       = aws_sagemaker_app.aws_sagemaker_app.arn
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the app."
  value       = aws_sagemaker_app.aws_sagemaker_app.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_app.aws_sagemaker_app.tags_all
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
      "kind/name"                   = "aws_sagemaker_app"
      "kind/version"                = "v0.1.0"
    }
  }
}
