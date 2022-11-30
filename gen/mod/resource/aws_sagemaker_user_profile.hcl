resource "aws_sagemaker_user_profile" "aws_sagemaker_user_profile" {
  default_resource_spec            = var.default_resource_spec
  user_settings                    = var.user_settings
  amazon_forecast_role_arn         = var.amazon_forecast_role_arn
  image_version_number             = var.image_version_number
  instance_type                    = var.instance_type
  home_efs_file_system_uid         = var.home_efs_file_system_uid
  image_name                       = var.image_name
  jupyter_server_app_settings      = var.jupyter_server_app_settings
  security_groups                  = var.security_groups
  sharing_settings                 = var.sharing_settings
  tags                             = var.tags
  time_series_forecasting_settings = var.time_series_forecasting_settings
  execution_role                   = var.execution_role
  kernel_gateway_app_settings      = var.kernel_gateway_app_settings
  single_sign_on_user_identifier   = var.single_sign_on_user_identifier
  notebook_output_option           = var.notebook_output_option
  s3_output_path                   = var.s3_output_path
  status                           = var.status
  user_profile_name                = var.user_profile_name
  app_image_config_name            = var.app_image_config_name
  id                               = var.id
  lifecycle_config_arn             = var.lifecycle_config_arn
  lifecycle_config_arns            = var.lifecycle_config_arns
  s3_kms_key_id                    = var.s3_kms_key_id
  single_sign_on_user_value        = var.single_sign_on_user_value
  tensor_board_app_settings        = var.tensor_board_app_settings
  arn                              = var.arn
  custom_image                     = var.custom_image
  r_session_app_settings           = var.r_session_app_settings
  sagemaker_image_arn              = var.sagemaker_image_arn
  canvas_app_settings              = var.canvas_app_settings
  domain_id                        = var.domain_id
  sagemaker_image_version_arn      = var.sagemaker_image_version_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The user profile Amazon Resource Name (ARN)."
  type        = string
}
variable "custom_image" {
  description = "(Optional) A list of custom SageMaker images that are configured to run as a KernelGateway app. see Custom Image below.Default Resource Spec"
  type        = string
}
variable "r_session_app_settings" {
  description = "(Optional) The RSession app settings. See RSession App Settings below."
  type        = string
}
variable "sagemaker_image_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the SageMaker image created on the instance."
  type        = string
}
variable "canvas_app_settings" {
  description = "(Optional) The Canvas app settings. See Canvas App Settings below.Canvas App Settings"
  type        = string
}
variable "domain_id" {
  description = "(Required) The ID of the associated Domain."
  type        = string
}
variable "sagemaker_image_version_arn" {
  description = "(Optional) The ARN of the image version created on the instance.Custom Image"
  type        = string
}
variable "default_resource_spec" {
  description = "(Optional) The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below."
  type        = string
}
variable "user_settings" {
  description = "(Required) The user settings. See User Settings below."
  type        = string
}
variable "amazon_forecast_role_arn" {
  description = "(Optional)  The IAM role that Canvas passes to Amazon Forecast for time series forecasting. By default, Canvas uses the execution role specified in the UserProfile that launches the Canvas app. If an execution role is not specified in the UserProfile, Canvas uses the execution role specified in the Domain that owns the UserProfile. To allow time series forecasting, this IAM role should have the AmazonSageMakerCanvasForecastAccess policy attached and forecast.amazonaws.com added in the trust relationship as a service principal."
  type        = string
}
variable "image_version_number" {
  description = "(Optional) The version number of the Custom Image.Time Series Forecasting Settings"
  type        = string
}
variable "instance_type" {
  description = "(Optional) The instance type."
  type        = string
}
variable "sharing_settings" {
  description = "(Optional) The sharing settings. See Sharing Settings below."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.User Settings"
  type        = string
}
variable "time_series_forecasting_settings" {
  description = "(Optional) Time series forecast settings for the Canvas app. see Time Series Forecasting Settings below.Sharing Settings"
  type        = string
}
variable "home_efs_file_system_uid" {
  description = "The ID of the user's profile in the Amazon Elastic File System (EFS) volume."
  type        = string
}
variable "image_name" {
  description = "(Required) The name of the Custom Image."
  type        = string
}
variable "jupyter_server_app_settings" {
  description = "(Optional) The Jupyter server's app settings. See Jupyter Server App Settings below."
  type        = string
}
variable "security_groups" {
  description = "(Optional) The security groups."
  type        = string
}
variable "execution_role" {
  description = "(Required) The execution role ARN for the user."
  type        = string
}
variable "kernel_gateway_app_settings" {
  description = "(Optional) The kernel gateway app settings. See Kernel Gateway App Settings below."
  type        = string
}
variable "single_sign_on_user_identifier" {
  description = "(Optional) A specifier for the type of value specified in single_sign_on_user_value. Currently, the only supported value is UserName. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified."
  type        = string
}
variable "notebook_output_option" {
  description = "(Optional) Whether to include the notebook cell output when sharing the notebook. The default is Disabled. Valid values are Allowed and Disabled."
  type        = string
}
variable "s3_output_path" {
  description = "(Optional) When notebook_output_option is Allowed, the Amazon S3 bucket used to save the notebook cell output.TensorBoard App Settings"
  type        = string
}
variable "status" {
  description = "(Optional) Describes whether time series forecasting is enabled or disabled in the Canvas app. Valid values are ENABLED and DISABLED.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "user_profile_name" {
  description = "(Required) The name for the User Profile."
  type        = string
}
variable "s3_kms_key_id" {
  description = "(Optional) When notebook_output_option is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket."
  type        = string
}
variable "single_sign_on_user_value" {
  description = "(Required) The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified."
  type        = string
}
variable "tensor_board_app_settings" {
  description = "(Optional) The TensorBoard app settings. See TensorBoard App Settings below."
  type        = string
}
variable "app_image_config_name" {
  description = "(Required) The name of the App Image Config."
  type        = string
}
variable "id" {
  description = "The user profile Amazon Resource Name (ARN)."
  type        = string
}
variable "lifecycle_config_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource."
  type        = string
}
variable "lifecycle_config_arns" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configurations.RSession App Settings"
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
output "sharing_settings" {
  description = "(Optional) The sharing settings. See Sharing Settings below."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.sharing_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.User Settings"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "time_series_forecasting_settings" {
  description = "(Optional) Time series forecast settings for the Canvas app. see Time Series Forecasting Settings below.Sharing Settings"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.time_series_forecasting_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "home_efs_file_system_uid" {
  description = "The ID of the user's profile in the Amazon Elastic File System (EFS) volume."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.home_efs_file_system_uid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_name" {
  description = "(Required) The name of the Custom Image."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.image_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "jupyter_server_app_settings" {
  description = "(Optional) The Jupyter server's app settings. See Jupyter Server App Settings below."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.jupyter_server_app_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_groups" {
  description = "(Optional) The security groups."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "execution_role" {
  description = "(Required) The execution role ARN for the user."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.execution_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kernel_gateway_app_settings" {
  description = "(Optional) The kernel gateway app settings. See Kernel Gateway App Settings below."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.kernel_gateway_app_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "single_sign_on_user_identifier" {
  description = "(Optional) A specifier for the type of value specified in single_sign_on_user_value. Currently, the only supported value is UserName. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.single_sign_on_user_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notebook_output_option" {
  description = "(Optional) Whether to include the notebook cell output when sharing the notebook. The default is Disabled. Valid values are Allowed and Disabled."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.notebook_output_option
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_output_path" {
  description = "(Optional) When notebook_output_option is Allowed, the Amazon S3 bucket used to save the notebook cell output.TensorBoard App Settings"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.s3_output_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "(Optional) Describes whether time series forecasting is enabled or disabled in the Canvas app. Valid values are ENABLED and DISABLED.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_profile_name" {
  description = "(Required) The name for the User Profile."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.user_profile_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_kms_key_id" {
  description = "(Optional) When notebook_output_option is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.s3_kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "single_sign_on_user_value" {
  description = "(Required) The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.single_sign_on_user_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tensor_board_app_settings" {
  description = "(Optional) The TensorBoard app settings. See TensorBoard App Settings below."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.tensor_board_app_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "app_image_config_name" {
  description = "(Required) The name of the App Image Config."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.app_image_config_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The user profile Amazon Resource Name (ARN)."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lifecycle_config_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.lifecycle_config_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lifecycle_config_arns" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lifecycle Configurations.RSession App Settings"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.lifecycle_config_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The user profile Amazon Resource Name (ARN)."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_image" {
  description = "(Optional) A list of custom SageMaker images that are configured to run as a KernelGateway app. see Custom Image below.Default Resource Spec"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.custom_image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "r_session_app_settings" {
  description = "(Optional) The RSession app settings. See RSession App Settings below."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.r_session_app_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sagemaker_image_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the SageMaker image created on the instance."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.sagemaker_image_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "canvas_app_settings" {
  description = "(Optional) The Canvas app settings. See Canvas App Settings below.Canvas App Settings"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.canvas_app_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_id" {
  description = "(Required) The ID of the associated Domain."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.domain_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sagemaker_image_version_arn" {
  description = "(Optional) The ARN of the image version created on the instance.Custom Image"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.sagemaker_image_version_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_resource_spec" {
  description = "(Optional) The default instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance. see Default Resource Spec below."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.default_resource_spec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_settings" {
  description = "(Required) The user settings. See User Settings below."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.user_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amazon_forecast_role_arn" {
  description = "(Optional)  The IAM role that Canvas passes to Amazon Forecast for time series forecasting. By default, Canvas uses the execution role specified in the UserProfile that launches the Canvas app. If an execution role is not specified in the UserProfile, Canvas uses the execution role specified in the Domain that owns the UserProfile. To allow time series forecasting, this IAM role should have the AmazonSageMakerCanvasForecastAccess policy attached and forecast.amazonaws.com added in the trust relationship as a service principal."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.amazon_forecast_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_version_number" {
  description = "(Optional) The version number of the Custom Image.Time Series Forecasting Settings"
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.image_version_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Optional) The instance type."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The user profile Amazon Resource Name (ARN)."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "home_efs_file_system_uid" {
  description = "The ID of the user's profile in the Amazon Elastic File System (EFS) volume."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.home_efs_file_system_uid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The user profile Amazon Resource Name (ARN)."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_user_profile.aws_sagemaker_user_profile.tags_all
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
      "kind/name"                   = "aws_sagemaker_user_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
