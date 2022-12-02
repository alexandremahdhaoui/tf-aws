resource "aws_sagemaker_domain" "aws_sagemaker_domain" {
  auth_mode                                      = var.auth_mode
  lifecycle_config_arn                           = var.lifecycle_config_arn
  s3_output_path                                 = var.s3_output_path
  time_series_forecasting_settings               = var.time_series_forecasting_settings
  app_image_config_name                          = var.app_image_config_name
  sagemaker_image_arn                            = var.sagemaker_image_arn
  domain_settings                                = var.domain_settings
  retention_policy                               = var.retention_policy
  s3_kms_key_id                                  = var.s3_kms_key_id
  security_group_id_for_domain_boundary          = var.security_group_id_for_domain_boundary
  status                                         = var.status
  instance_type                                  = var.instance_type
  id                                             = var.id
  jupyter_server_app_settings                    = var.jupyter_server_app_settings
  kms_key_id                                     = var.kms_key_id
  lifecycle_config_arns                          = var.lifecycle_config_arns
  security_group_ids                             = var.security_group_ids
  tensor_board_app_settings                      = var.tensor_board_app_settings
  custom_image                                   = var.custom_image
  sharing_settings                               = var.sharing_settings
  vpc_id                                         = var.vpc_id
  notebook_output_option                         = var.notebook_output_option
  canvas_app_settings                            = var.canvas_app_settings
  execution_role_identity_config                 = var.execution_role_identity_config
  home_efs_file_system_id                        = var.home_efs_file_system_id
  r_session_app_settings                         = var.r_session_app_settings
  app_network_access_type                        = var.app_network_access_type
  arn                                            = var.arn
  domain_name                                    = var.domain_name
  image_name                                     = var.image_name
  image_version_number                           = var.image_version_number
  subnet_ids                                     = var.subnet_ids
  app_security_group_management                  = var.app_security_group_management
  default_resource_spec                          = var.default_resource_spec
  default_user_settings                          = var.default_user_settings
  execution_role                                 = var.execution_role
  home_efs_file_system                           = var.home_efs_file_system
  kernel_gateway_app_settings                    = var.kernel_gateway_app_settings
  sagemaker_image_version_arn                    = var.sagemaker_image_version_arn
  security_groups                                = var.security_groups
  amazon_forecast_role_arn                       = var.amazon_forecast_role_arn
  tags                                           = var.tags
  url                                            = var.url
  single_sign_on_managed_application_instance_id = var.single_sign_on_managed_application_instance_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "notebook_output_option" {
  description = "(Optional) Whether to include the notebook cell output when sharing the notebook. The default is Disabled. Valid values are Allowed and Disabled."
  type        = string
  default     = ""
}
variable "sharing_settings" {
  description = "(Optional) The sharing settings. See Sharing Settings below."
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Required) The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication."
  type        = string
}
variable "app_network_access_type" {
  description = "(Optional) Specifies the VPC used for non-EFS traffic. The default value is PublicInternetOnly. Valid values are PublicInternetOnly and VpcOnly."
  type        = string
  default     = ""
}
variable "canvas_app_settings" {
  description = "(Optional) The Canvas app settings. See Canvas App Settings below."
  type        = string
  default     = ""
}
variable "execution_role_identity_config" {
  description = "(Optional) The configuration for attaching a SageMaker user profile name to the execution role as a sts:SourceIdentity key AWS Docs. Valid values are USER_PROFILE_NAME and DISABLED."
  type        = string
  default     = ""
}
variable "home_efs_file_system_id" {
  description = "The ID of the Amazon Elastic File System (EFS) managed by this Domain."
  type        = string
}
variable "r_session_app_settings" {
  description = "(Optional) The RSession app settings. See RSession App Settings below.Domain Settings"
  type        = string
  default     = ""
}
variable "app_security_group_management" {
  description = "(Optional) The entity that creates and manages the required security groups for inter-app communication in VPCOnly mode. Valid values are Service and Customer."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Domain."
  type        = string
}
variable "domain_name" {
  description = "(Required) The domain name."
  type        = string
}
variable "image_name" {
  description = "(Required) The name of the Custom Image."
  type        = string
}
variable "image_version_number" {
  description = "(Optional) The version number of the Custom Image.Retention Policy"
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Required) The VPC subnets that Studio uses for communication."
  type        = string
}
variable "amazon_forecast_role_arn" {
  description = "(Optional)  The IAM role that Canvas passes to Amazon Forecast for time series forecasting. By default, Canvas uses the execution role specified in the UserProfile that launches the Canvas app. If an execution role is not specified in the UserProfile, Canvas uses the execution role specified in the Domain that owns the UserProfile. To allow time series forecasting, this IAM role should have the AmazonSageMakerCanvasForecastAccess policy attached and forecast.amazonaws.com added in the trust relationship as a service principal."
  type        = string
  default     = ""
}
variable "default_resource_spec" {
  description = "(Optional) The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below."
  type        = string
  default     = ""
}
variable "default_user_settings" {
  description = "(Required) The default user settings. See Default User Settings below."
  type        = string
}
variable "execution_role" {
  description = "(Required) The execution role ARN for the user."
  type        = string
}
variable "home_efs_file_system" {
  description = "(Optional) The retention policy for data stored on an Amazon Elastic File System (EFS) volume. Valid values are Retain or Delete.  Default value is Retain.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "kernel_gateway_app_settings" {
  description = "(Optional) The kernel gateway app settings. See Kernel Gateway App Settings below."
  type        = string
  default     = ""
}
variable "sagemaker_image_version_arn" {
  description = "(Optional) The ARN of the image version created on the instance.Time Series Forecasting Settings"
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Optional) A list of security group IDs that will be attached to the user."
  type        = string
  default     = ""
}
variable "single_sign_on_managed_application_instance_id" {
  description = "The SSO managed application instance ID."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Default User Settings"
  type        = string
  default     = ""
}
variable "url" {
  description = "The domain's URL."
  type        = string
}
variable "app_image_config_name" {
  description = "(Required) The name of the App Image Config."
  type        = string
}
variable "auth_mode" {
  description = "(Required) The mode of authentication that members use to access the domain. Valid values are IAM and SSO."
  type        = string
}
variable "lifecycle_config_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource."
  type        = string
  default     = ""
}
variable "s3_output_path" {
  description = "(Optional) When notebook_output_option is Allowed, the Amazon S3 bucket used to save the notebook cell output.Canvas App Settings"
  type        = string
  default     = ""
}
variable "time_series_forecasting_settings" {
  description = "(Optional) Time series forecast settings for the Canvas app. see Time Series Forecasting Settings below.TensorBoard App Settings"
  type        = string
  default     = ""
}
variable "domain_settings" {
  description = "(Optional) The domain settings. See Domain Settings below."
  type        = string
  default     = ""
}
variable "sagemaker_image_arn" {
  description = "(Optional) The ARN of the SageMaker image that the image version belongs to."
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Optional) The instance type that the image version runs on.. For valid values see SageMaker Instance Types."
  type        = string
  default     = ""
}
variable "retention_policy" {
  description = "(Optional) The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See Retention Policy below."
  type        = string
  default     = ""
}
variable "s3_kms_key_id" {
  description = "(Optional) When notebook_output_option is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket."
  type        = string
  default     = ""
}
variable "security_group_id_for_domain_boundary" {
  description = "The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app."
  type        = string
}
variable "status" {
  description = "(Optional) Describes whether time series forecasting is enabled or disabled in the Canvas app. Valid values are ENABLED and DISABLED.Custom Image"
  type        = string
  default     = ""
}
variable "custom_image" {
  description = "(Optional) A list of custom SageMaker images that are configured to run as a KernelGateway app. see Custom Image below.Default Resource Spec"
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the Domain."
  type        = string
}
variable "jupyter_server_app_settings" {
  description = "(Optional) The Jupyter server's app settings. See Jupyter Server App Settings below."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain."
  type        = string
  default     = ""
}
variable "lifecycle_config_arns" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configurations.RSession App Settings"
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Optional) The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.Sharing Settings"
  type        = string
  default     = ""
}
variable "tensor_board_app_settings" {
  description = "(Optional) The TensorBoard app settings. See TensorBoard App Settings below."
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
output "s3_kms_key_id" {
  description = "(Optional) When notebook_output_option is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.s3_kms_key_id
}
output "security_group_id_for_domain_boundary" {
  description = "The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.security_group_id_for_domain_boundary
}
output "status" {
  description = "(Optional) Describes whether time series forecasting is enabled or disabled in the Canvas app. Valid values are ENABLED and DISABLED.Custom Image"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.status
}
output "instance_type" {
  description = "(Optional) The instance type that the image version runs on.. For valid values see SageMaker Instance Types."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.instance_type
}
output "retention_policy" {
  description = "(Optional) The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See Retention Policy below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.retention_policy
}
output "jupyter_server_app_settings" {
  description = "(Optional) The Jupyter server's app settings. See Jupyter Server App Settings below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.jupyter_server_app_settings
}
output "kms_key_id" {
  description = "(Optional) The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.kms_key_id
}
output "lifecycle_config_arns" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configurations.RSession App Settings"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.lifecycle_config_arns
}
output "security_group_ids" {
  description = "(Optional) The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.Sharing Settings"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.security_group_ids
}
output "tensor_board_app_settings" {
  description = "(Optional) The TensorBoard app settings. See TensorBoard App Settings below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.tensor_board_app_settings
}
output "custom_image" {
  description = "(Optional) A list of custom SageMaker images that are configured to run as a KernelGateway app. see Custom Image below.Default Resource Spec"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.custom_image
}
output "id" {
  description = "The ID of the Domain."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.id
}
output "vpc_id" {
  description = "(Required) The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.vpc_id
}
output "notebook_output_option" {
  description = "(Optional) Whether to include the notebook cell output when sharing the notebook. The default is Disabled. Valid values are Allowed and Disabled."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.notebook_output_option
}
output "sharing_settings" {
  description = "(Optional) The sharing settings. See Sharing Settings below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.sharing_settings
}
output "execution_role_identity_config" {
  description = "(Optional) The configuration for attaching a SageMaker user profile name to the execution role as a sts:SourceIdentity key AWS Docs. Valid values are USER_PROFILE_NAME and DISABLED."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.execution_role_identity_config
}
output "home_efs_file_system_id" {
  description = "The ID of the Amazon Elastic File System (EFS) managed by this Domain."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.home_efs_file_system_id
}
output "r_session_app_settings" {
  description = "(Optional) The RSession app settings. See RSession App Settings below.Domain Settings"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.r_session_app_settings
}
output "app_network_access_type" {
  description = "(Optional) Specifies the VPC used for non-EFS traffic. The default value is PublicInternetOnly. Valid values are PublicInternetOnly and VpcOnly."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.app_network_access_type
}
output "canvas_app_settings" {
  description = "(Optional) The Canvas app settings. See Canvas App Settings below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.canvas_app_settings
}
output "domain_name" {
  description = "(Required) The domain name."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.domain_name
}
output "image_name" {
  description = "(Required) The name of the Custom Image."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.image_name
}
output "image_version_number" {
  description = "(Optional) The version number of the Custom Image.Retention Policy"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.image_version_number
}
output "subnet_ids" {
  description = "(Required) The VPC subnets that Studio uses for communication."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.subnet_ids
}
output "app_security_group_management" {
  description = "(Optional) The entity that creates and manages the required security groups for inter-app communication in VPCOnly mode. Valid values are Service and Customer."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.app_security_group_management
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Domain."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.arn
}
output "default_user_settings" {
  description = "(Required) The default user settings. See Default User Settings below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.default_user_settings
}
output "execution_role" {
  description = "(Required) The execution role ARN for the user."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.execution_role
}
output "home_efs_file_system" {
  description = "(Optional) The retention policy for data stored on an Amazon Elastic File System (EFS) volume. Valid values are Retain or Delete.  Default value is Retain.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.home_efs_file_system
}
output "kernel_gateway_app_settings" {
  description = "(Optional) The kernel gateway app settings. See Kernel Gateway App Settings below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.kernel_gateway_app_settings
}
output "sagemaker_image_version_arn" {
  description = "(Optional) The ARN of the image version created on the instance.Time Series Forecasting Settings"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.sagemaker_image_version_arn
}
output "security_groups" {
  description = "(Optional) A list of security group IDs that will be attached to the user."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.security_groups
}
output "amazon_forecast_role_arn" {
  description = "(Optional)  The IAM role that Canvas passes to Amazon Forecast for time series forecasting. By default, Canvas uses the execution role specified in the UserProfile that launches the Canvas app. If an execution role is not specified in the UserProfile, Canvas uses the execution role specified in the Domain that owns the UserProfile. To allow time series forecasting, this IAM role should have the AmazonSageMakerCanvasForecastAccess policy attached and forecast.amazonaws.com added in the trust relationship as a service principal."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.amazon_forecast_role_arn
}
output "default_resource_spec" {
  description = "(Optional) The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.default_resource_spec
}
output "url" {
  description = "The domain's URL."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.url
}
output "single_sign_on_managed_application_instance_id" {
  description = "The SSO managed application instance ID."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.single_sign_on_managed_application_instance_id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Default User Settings"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.tags
}
output "lifecycle_config_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.lifecycle_config_arn
}
output "s3_output_path" {
  description = "(Optional) When notebook_output_option is Allowed, the Amazon S3 bucket used to save the notebook cell output.Canvas App Settings"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.s3_output_path
}
output "time_series_forecasting_settings" {
  description = "(Optional) Time series forecast settings for the Canvas app. see Time Series Forecasting Settings below.TensorBoard App Settings"
  value       = aws_sagemaker_domain.aws_sagemaker_domain.time_series_forecasting_settings
}
output "app_image_config_name" {
  description = "(Required) The name of the App Image Config."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.app_image_config_name
}
output "auth_mode" {
  description = "(Required) The mode of authentication that members use to access the domain. Valid values are IAM and SSO."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.auth_mode
}
output "domain_settings" {
  description = "(Optional) The domain settings. See Domain Settings below."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.domain_settings
}
output "sagemaker_image_arn" {
  description = "(Optional) The ARN of the SageMaker image that the image version belongs to."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.sagemaker_image_arn
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Domain."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.arn
}
output "home_efs_file_system_id" {
  description = "The ID of the Amazon Elastic File System (EFS) managed by this Domain."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.home_efs_file_system_id
}
output "id" {
  description = "The ID of the Domain."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.id
}
output "security_group_id_for_domain_boundary" {
  description = "The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.security_group_id_for_domain_boundary
}
output "single_sign_on_managed_application_instance_id" {
  description = "The SSO managed application instance ID."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.single_sign_on_managed_application_instance_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.tags_all
}
output "url" {
  description = "The domain's URL."
  value       = aws_sagemaker_domain.aws_sagemaker_domain.url
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
      "kind/name"                   = "aws_sagemaker_domain"
      "kind/version"                = "v0.1.0"
    }
  }
}
