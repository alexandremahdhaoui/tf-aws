resource "aws_sagemaker_endpoint_configuration" "aws_sagemaker_endpoint_configuration" {
  instance_type                           = var.instance_type
  kms_key_arn                             = var.kms_key_arn
  max_concurrency                         = var.max_concurrency
  max_concurrent_invocations_per_instance = var.max_concurrent_invocations_per_instance
  s3_output_path                          = var.s3_output_path
  tags                                    = var.tags
  arn                                     = var.arn
  serverless_config                       = var.serverless_config
  initial_instance_count                  = var.initial_instance_count
  production_variants                     = var.production_variants
  async_inference_config                  = var.async_inference_config
  client_config                           = var.client_config
  data_capture_config                     = var.data_capture_config
  enable_capture                          = var.enable_capture
  initial_variant_weight                  = var.initial_variant_weight
  output_config                           = var.output_config
  capture_options                         = var.capture_options
  destination_s3_uri                      = var.destination_s3_uri
  initial_sampling_percentage             = var.initial_sampling_percentage
  json_content_types                      = var.json_content_types
  accelerator_type                        = var.accelerator_type
  error_topic                             = var.error_topic
  memory_size_in_mb                       = var.memory_size_in_mb
  model_name                              = var.model_name
  notification_config                     = var.notification_config
  success_topic                           = var.success_topic
  capture_content_type_header             = var.capture_content_type_header
  name                                    = var.name
  csv_content_types                       = var.csv_content_types
  kms_key_id                              = var.kms_key_id
  variant_name                            = var.variant_name
  capture_mode                            = var.capture_mode
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "capture_mode" {
  description = "(Required) Specifies the data to be captured. Should be one of Input or Output.capture_content_type_header"
  type        = string
}
variable "csv_content_types" {
  description = "(Optional) The CSV content type headers to capture."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The Amazon Web Services Key Management Service (Amazon Web Services KMS) key that Amazon SageMaker uses to encrypt the asynchronous inference output in Amazon S3."
  type        = string
}
variable "variant_name" {
  description = "(Optional) The name of the variant. If omitted, Terraform will assign a random, unique name."
  type        = string
}
variable "max_concurrent_invocations_per_instance" {
  description = "(Optional) The maximum number of concurrent requests sent by the SageMaker client to the model container. If no value is provided, Amazon SageMaker will choose an optimal value for you.output_config"
  type        = string
}
variable "s3_output_path" {
  description = "(Required) The Amazon S3 location to upload inference responses to."
  type        = string
}
variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this endpoint configuration."
  type        = string
}
variable "instance_type" {
  description = " (Optional) - The type of instance to start."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint."
  type        = string
}
variable "max_concurrency" {
  description = "(Required) The maximum number of concurrent invocations your serverless endpoint can process. Valid values are between 1 and 200."
  type        = string
}
variable "initial_instance_count" {
  description = "(Optional) Initial number of instances used for auto-scaling."
  type        = string
}
variable "serverless_config" {
  description = "(Optional) Specifies configuration for how an endpoint performs asynchronous inference.serverless_config"
  type        = string
}
variable "async_inference_config" {
  description = "(Optional) Specifies configuration for how an endpoint performs asynchronous inference.production_variants"
  type        = string
}
variable "production_variants" {
  description = "(Required) Fields are documented below."
  type        = string
}
variable "initial_variant_weight" {
  description = " (Optional) - Determines initial traffic distribution among all of the models that you specify in the endpoint configuration. If unspecified, it defaults to 1.0."
  type        = string
}
variable "output_config" {
  description = "(Required) Specifies the configuration for asynchronous inference invocation outputs."
  type        = string
}
variable "capture_options" {
  description = "(Required) Specifies what data to capture. Fields are documented below."
  type        = string
}
variable "client_config" {
  description = "(Optional) Configures the behavior of the client used by Amazon SageMaker to interact with the model container during asynchronous inference.client_config"
  type        = string
}
variable "data_capture_config" {
  description = "(Optional) Specifies the parameters to capture input/output of SageMaker models endpoints. Fields are documented below."
  type        = string
}
variable "enable_capture" {
  description = "(Optional) Flag to enable data capture. Defaults to false."
  type        = string
}
variable "accelerator_type" {
  description = " (Optional) - The size of the Elastic Inference (EI) instance to use for the production variant."
  type        = string
}
variable "destination_s3_uri" {
  description = "(Required) The URL for S3 location where the captured data is stored."
  type        = string
}
variable "initial_sampling_percentage" {
  description = "(Required) Portion of data to capture. Should be between 0 and 100."
  type        = string
}
variable "json_content_types" {
  description = "(Optional) The JSON content type headers to capture.async_inference_config"
  type        = string
}
variable "notification_config" {
  description = "(Optional) Specifies the configuration for notifications of inference results for asynchronous inference.notification_config"
  type        = string
}
variable "success_topic" {
  description = "(Optional) Amazon SNS topic to post a notification to when inference completes successfully. If no topic is provided, no notification is sent on success.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "capture_content_type_header" {
  description = "(Optional) The content type headers to capture. Fields are documented below.capture_options"
  type        = string
}
variable "error_topic" {
  description = "(Optional) Amazon SNS topic to post a notification to when inference fails. If no topic is provided, no notification is sent on failure."
  type        = string
}
variable "memory_size_in_mb" {
  description = "(Required) The memory size of your serverless endpoint. Valid values are in 1 GB increments: 1024 MB, 2048 MB, 3072 MB, 4096 MB, 5120 MB, or 6144 MB.data_capture_config"
  type        = string
}
variable "model_name" {
  description = "(Required) The name of the model to use."
  type        = string
}
variable "name" {
  description = "The name of the endpoint configuration."
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
  description = "The Amazon Resource Name (ARN) assigned by AWS to this endpoint configuration."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = " (Optional) - The type of instance to start."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_concurrency" {
  description = "(Required) The maximum number of concurrent invocations your serverless endpoint can process. Valid values are between 1 and 200."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.max_concurrency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_concurrent_invocations_per_instance" {
  description = "(Optional) The maximum number of concurrent requests sent by the SageMaker client to the model container. If no value is provided, Amazon SageMaker will choose an optimal value for you.output_config"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.max_concurrent_invocations_per_instance
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_output_path" {
  description = "(Required) The Amazon S3 location to upload inference responses to."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.s3_output_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A mapping of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "initial_instance_count" {
  description = "(Optional) Initial number of instances used for auto-scaling."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.initial_instance_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "serverless_config" {
  description = "(Optional) Specifies configuration for how an endpoint performs asynchronous inference.serverless_config"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.serverless_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "async_inference_config" {
  description = "(Optional) Specifies configuration for how an endpoint performs asynchronous inference.production_variants"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.async_inference_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "production_variants" {
  description = "(Required) Fields are documented below."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.production_variants
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capture_options" {
  description = "(Required) Specifies what data to capture. Fields are documented below."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.capture_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_config" {
  description = "(Optional) Configures the behavior of the client used by Amazon SageMaker to interact with the model container during asynchronous inference.client_config"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.client_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_capture_config" {
  description = "(Optional) Specifies the parameters to capture input/output of SageMaker models endpoints. Fields are documented below."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.data_capture_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_capture" {
  description = "(Optional) Flag to enable data capture. Defaults to false."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.enable_capture
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "initial_variant_weight" {
  description = " (Optional) - Determines initial traffic distribution among all of the models that you specify in the endpoint configuration. If unspecified, it defaults to 1.0."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.initial_variant_weight
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_config" {
  description = "(Required) Specifies the configuration for asynchronous inference invocation outputs."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.output_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_type" {
  description = " (Optional) - The size of the Elastic Inference (EI) instance to use for the production variant."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.accelerator_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_s3_uri" {
  description = "(Required) The URL for S3 location where the captured data is stored."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.destination_s3_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "initial_sampling_percentage" {
  description = "(Required) Portion of data to capture. Should be between 0 and 100."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.initial_sampling_percentage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "json_content_types" {
  description = "(Optional) The JSON content type headers to capture.async_inference_config"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.json_content_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capture_content_type_header" {
  description = "(Optional) The content type headers to capture. Fields are documented below.capture_options"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.capture_content_type_header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_topic" {
  description = "(Optional) Amazon SNS topic to post a notification to when inference fails. If no topic is provided, no notification is sent on failure."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.error_topic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_size_in_mb" {
  description = "(Required) The memory size of your serverless endpoint. Valid values are in 1 GB increments: 1024 MB, 2048 MB, 3072 MB, 4096 MB, 5120 MB, or 6144 MB.data_capture_config"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.memory_size_in_mb
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "model_name" {
  description = "(Required) The name of the model to use."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.model_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_config" {
  description = "(Optional) Specifies the configuration for notifications of inference results for asynchronous inference.notification_config"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.notification_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "success_topic" {
  description = "(Optional) Amazon SNS topic to post a notification to when inference completes successfully. If no topic is provided, no notification is sent on success.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.success_topic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the endpoint configuration."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capture_mode" {
  description = "(Required) Specifies the data to be captured. Should be one of Input or Output.capture_content_type_header"
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.capture_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "csv_content_types" {
  description = "(Optional) The CSV content type headers to capture."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.csv_content_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) The Amazon Web Services Key Management Service (Amazon Web Services KMS) key that Amazon SageMaker uses to encrypt the asynchronous inference output in Amazon S3."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "variant_name" {
  description = "(Optional) The name of the variant. If omitted, Terraform will assign a random, unique name."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.variant_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this endpoint configuration."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the endpoint configuration."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_endpoint_configuration.aws_sagemaker_endpoint_configuration.tags_all
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
      "kind/name"                   = "aws_sagemaker_endpoint_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
