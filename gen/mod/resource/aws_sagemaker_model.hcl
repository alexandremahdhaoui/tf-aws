resource "aws_sagemaker_model" "aws_sagemaker_model" {
  repository_access_mode              = var.repository_access_mode
  environment                         = var.environment
  execution_role_arn                  = var.execution_role_arn
  name                                = var.name
  primary_container                   = var.primary_container
  repository_credentials_provider_arn = var.repository_credentials_provider_arn
  container_hostname                  = var.container_hostname
  model_data_url                      = var.model_data_url
  image_config                        = var.image_config
  inference_execution_config          = var.inference_execution_config
  vpc_config                          = var.vpc_config
  arn                                 = var.arn
  image                               = var.image
  mode                                = var.mode
  repository_auth_config              = var.repository_auth_config
  tags                                = var.tags
  container                           = var.container
  enable_network_isolation            = var.enable_network_isolation
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this model."
  type        = string
}
variable "image" {
  description = "(Required) The registry path where the inference code image is stored in Amazon ECR."
  type        = string
}
variable "image_config" {
  description = "(Optional) Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For more information see Using a Private Docker Registry for Real-Time Inference Containers. see Image Config.Image Config"
  type        = string
  default     = ""
}
variable "inference_execution_config" {
  description = "(Optional) Specifies details of how containers in a multi-container endpoint are called. see Inference Execution Config."
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = " (Optional) - Specifies the VPC that you want your model to connect to. VpcConfig is used in hosting services and in batch transform."
  type        = string
  default     = ""
}
variable "container" {
  description = " (Optional) -  Specifies containers in the inference pipeline. If not specified, the primary_container argument is required. Fields are documented below."
  type        = string
  default     = ""
}
variable "enable_network_isolation" {
  description = " (Optional) - Isolates the model container. No inbound or outbound network calls can be made to or from the model container."
  type        = string
  default     = ""
}
variable "mode" {
  description = "(Required) How containers in a multi-container are run. The following values are valid Serial and Direct.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "repository_auth_config" {
  description = "(Optional) Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.Repository Auth Config"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The primary_container and container block both support:"
  type        = string
  default     = ""
}
variable "environment" {
  description = "(Optional) Environment variables for the Docker container.\nA list of key value pairs."
  type        = string
  default     = ""
}
variable "execution_role_arn" {
  description = "(Required) A role that SageMaker can assume to access model artifacts and docker images for deployment."
  type        = string
}
variable "repository_access_mode" {
  description = "(Required) Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: Platform and Vpc."
  type        = string
}
variable "container_hostname" {
  description = "(Optional) The DNS host name for the container."
  type        = string
  default     = ""
}
variable "model_data_url" {
  description = "(Optional) The URL for the S3 location where model artifacts are stored."
  type        = string
  default     = ""
}
variable "name" {
  description = "The name of the model."
  type        = string
}
variable "primary_container" {
  description = "(Optional) The primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the container argument is required. Fields are documented below."
  type        = string
  default     = ""
}
variable "repository_credentials_provider_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of an AWS Lambda function that provides credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see Create a Lambda function with the console in the emAWS Lambda Developer Guide.Inference Execution Config"
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
output "container_hostname" {
  description = "(Optional) The DNS host name for the container."
  value       = aws_sagemaker_model.aws_sagemaker_model.container_hostname
}
output "model_data_url" {
  description = "(Optional) The URL for the S3 location where model artifacts are stored."
  value       = aws_sagemaker_model.aws_sagemaker_model.model_data_url
}
output "name" {
  description = "The name of the model."
  value       = aws_sagemaker_model.aws_sagemaker_model.name
}
output "primary_container" {
  description = "(Optional) The primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the container argument is required. Fields are documented below."
  value       = aws_sagemaker_model.aws_sagemaker_model.primary_container
}
output "repository_credentials_provider_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of an AWS Lambda function that provides credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see Create a Lambda function with the console in the emAWS Lambda Developer Guide.Inference Execution Config"
  value       = aws_sagemaker_model.aws_sagemaker_model.repository_credentials_provider_arn
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this model."
  value       = aws_sagemaker_model.aws_sagemaker_model.arn
}
output "image" {
  description = "(Required) The registry path where the inference code image is stored in Amazon ECR."
  value       = aws_sagemaker_model.aws_sagemaker_model.image
}
output "image_config" {
  description = "(Optional) Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For more information see Using a Private Docker Registry for Real-Time Inference Containers. see Image Config.Image Config"
  value       = aws_sagemaker_model.aws_sagemaker_model.image_config
}
output "inference_execution_config" {
  description = "(Optional) Specifies details of how containers in a multi-container endpoint are called. see Inference Execution Config."
  value       = aws_sagemaker_model.aws_sagemaker_model.inference_execution_config
}
output "vpc_config" {
  description = " (Optional) - Specifies the VPC that you want your model to connect to. VpcConfig is used in hosting services and in batch transform."
  value       = aws_sagemaker_model.aws_sagemaker_model.vpc_config
}
output "container" {
  description = " (Optional) -  Specifies containers in the inference pipeline. If not specified, the primary_container argument is required. Fields are documented below."
  value       = aws_sagemaker_model.aws_sagemaker_model.container
}
output "enable_network_isolation" {
  description = " (Optional) - Isolates the model container. No inbound or outbound network calls can be made to or from the model container."
  value       = aws_sagemaker_model.aws_sagemaker_model.enable_network_isolation
}
output "mode" {
  description = "(Required) How containers in a multi-container are run. The following values are valid Serial and Direct.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_model.aws_sagemaker_model.mode
}
output "repository_auth_config" {
  description = "(Optional) Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.Repository Auth Config"
  value       = aws_sagemaker_model.aws_sagemaker_model.repository_auth_config
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The primary_container and container block both support:"
  value       = aws_sagemaker_model.aws_sagemaker_model.tags
}
output "environment" {
  description = "(Optional) Environment variables for the Docker container.\nA list of key value pairs."
  value       = aws_sagemaker_model.aws_sagemaker_model.environment
}
output "execution_role_arn" {
  description = "(Required) A role that SageMaker can assume to access model artifacts and docker images for deployment."
  value       = aws_sagemaker_model.aws_sagemaker_model.execution_role_arn
}
output "repository_access_mode" {
  description = "(Required) Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: Platform and Vpc."
  value       = aws_sagemaker_model.aws_sagemaker_model.repository_access_mode
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this model."
  value       = aws_sagemaker_model.aws_sagemaker_model.arn
}
output "name" {
  description = "The name of the model."
  value       = aws_sagemaker_model.aws_sagemaker_model.name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_model.aws_sagemaker_model.tags_all
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
      "kind/name"                   = "aws_sagemaker_model"
      "kind/version"                = "v0.1.0"
    }
  }
}
