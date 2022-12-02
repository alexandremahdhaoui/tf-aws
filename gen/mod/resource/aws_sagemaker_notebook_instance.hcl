resource "aws_sagemaker_notebook_instance" "aws_sagemaker_notebook_instance" {
  id                                        = var.id
  instance_metadata_service_configuration   = var.instance_metadata_service_configuration
  network_interface_id                      = var.network_interface_id
  platform_identifier                       = var.platform_identifier
  root_access                               = var.root_access
  accelerator_types                         = var.accelerator_types
  default_code_repository                   = var.default_code_repository
  volume_size                               = var.volume_size
  kms_key_id                                = var.kms_key_id
  security_groups                           = var.security_groups
  instance_type                             = var.instance_type
  role_arn                                  = var.role_arn
  url                                       = var.url
  additional_code_repositories              = var.additional_code_repositories
  arn                                       = var.arn
  minimum_instance_metadata_service_version = var.minimum_instance_metadata_service_version
  name                                      = var.name
  subnet_id                                 = var.subnet_id
  tags                                      = var.tags
  direct_internet_access                    = var.direct_internet_access
  lifecycle_config_name                     = var.lifecycle_config_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "instance_metadata_service_configuration" {
  description = "(Optional) Information on the IMDS configuration of the notebook instance. Conflicts with instance_metadata_service_configuration. see details below."
  type        = string
  default     = ""
}
variable "network_interface_id" {
  description = "The network interface ID that Amazon SageMaker created at the time of creating the instance. Only available when setting subnet_id."
  type        = string
}
variable "platform_identifier" {
  description = "(Optional) The platform identifier of the notebook instance runtime environment. This value can be either notebook-al1-v1, notebook-al2-v1, or  notebook-al2-v2, depending on which version of Amazon Linux you require."
  type        = string
  default     = ""
}
variable "root_access" {
  description = "(Optional) Whether root access is Enabled or Disabled for users of the notebook instance. The default value is Enabled."
  type        = string
  default     = ""
}
variable "accelerator_types" {
  description = "(Optional) A list of Elastic Inference (EI) instance types to associate with this notebook instance. See Elastic Inference Accelerator for more details. Valid values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge."
  type        = string
  default     = ""
}
variable "default_code_repository" {
  description = "(Optional) The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in AWS CodeCommit or in any other Git repository."
  type        = string
  default     = ""
}
variable "id" {
  description = "The name of the notebook instance."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption."
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Optional) The associated security groups."
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "(Optional) The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Required) The ARN of the IAM role to be used by the notebook instance which allows SageMaker to call other services on your behalf."
  type        = string
}
variable "url" {
  description = "The URL that you use to connect to the Jupyter notebook that is running in your notebook instance."
  type        = string
}
variable "additional_code_repositories" {
  description = "(Optional) An array of up to three Git repositories to associate with the notebook instance.\nThese can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in AWS CodeCommit or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this notebook instance."
  type        = string
}
variable "instance_type" {
  description = "(Required) The name of ML compute instance type."
  type        = string
}
variable "name" {
  description = "(Required) The name of the notebook instance (must be unique)."
  type        = string
}
variable "subnet_id" {
  description = "(Optional) The VPC subnet ID."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.instance_metadata_service_configuration"
  type        = string
  default     = ""
}
variable "direct_internet_access" {
  description = "(Optional) Set to Disabled to disable internet access to notebook. Requires security_groups and subnet_id to be set. Supported values: Enabled (Default) or Disabled. If set to Disabled, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC."
  type        = string
  default     = ""
}
variable "lifecycle_config_name" {
  description = "(Optional) The name of a lifecycle configuration to associate with the notebook instance."
  type        = string
  default     = ""
}
variable "minimum_instance_metadata_service_version" {
  description = "(Optional) Indicates the minimum IMDS version that the notebook instance supports. When passed \"1\" is passed. This means that both IMDSv1 and IMDSv2 are supported. Valid values are 1 and 2.In addition to all arguments above, the following attributes are exported:"
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
output "role_arn" {
  description = "(Required) The ARN of the IAM role to be used by the notebook instance which allows SageMaker to call other services on your behalf."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.role_arn
}
output "url" {
  description = "The URL that you use to connect to the Jupyter notebook that is running in your notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.url
}
output "additional_code_repositories" {
  description = "(Optional) An array of up to three Git repositories to associate with the notebook instance.\nThese can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in AWS CodeCommit or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.additional_code_repositories
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.arn
}
output "instance_type" {
  description = "(Required) The name of ML compute instance type."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.instance_type
}
output "name" {
  description = "(Required) The name of the notebook instance (must be unique)."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.name
}
output "subnet_id" {
  description = "(Optional) The VPC subnet ID."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.subnet_id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.instance_metadata_service_configuration"
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.tags
}
output "direct_internet_access" {
  description = "(Optional) Set to Disabled to disable internet access to notebook. Requires security_groups and subnet_id to be set. Supported values: Enabled (Default) or Disabled. If set to Disabled, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.direct_internet_access
}
output "lifecycle_config_name" {
  description = "(Optional) The name of a lifecycle configuration to associate with the notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.lifecycle_config_name
}
output "minimum_instance_metadata_service_version" {
  description = "(Optional) Indicates the minimum IMDS version that the notebook instance supports. When passed \"1\" is passed. This means that both IMDSv1 and IMDSv2 are supported. Valid values are 1 and 2.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.minimum_instance_metadata_service_version
}
output "instance_metadata_service_configuration" {
  description = "(Optional) Information on the IMDS configuration of the notebook instance. Conflicts with instance_metadata_service_configuration. see details below."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.instance_metadata_service_configuration
}
output "network_interface_id" {
  description = "The network interface ID that Amazon SageMaker created at the time of creating the instance. Only available when setting subnet_id."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.network_interface_id
}
output "platform_identifier" {
  description = "(Optional) The platform identifier of the notebook instance runtime environment. This value can be either notebook-al1-v1, notebook-al2-v1, or  notebook-al2-v2, depending on which version of Amazon Linux you require."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.platform_identifier
}
output "root_access" {
  description = "(Optional) Whether root access is Enabled or Disabled for users of the notebook instance. The default value is Enabled."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.root_access
}
output "accelerator_types" {
  description = "(Optional) A list of Elastic Inference (EI) instance types to associate with this notebook instance. See Elastic Inference Accelerator for more details. Valid values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.accelerator_types
}
output "default_code_repository" {
  description = "(Optional) The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in AWS CodeCommit or in any other Git repository."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.default_code_repository
}
output "id" {
  description = "The name of the notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.id
}
output "kms_key_id" {
  description = "(Optional) The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.kms_key_id
}
output "security_groups" {
  description = "(Optional) The associated security groups."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.security_groups
}
output "volume_size" {
  description = "(Optional) The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.volume_size
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.arn
}
output "id" {
  description = "The name of the notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.id
}
output "network_interface_id" {
  description = "The network interface ID that Amazon SageMaker created at the time of creating the instance. Only available when setting subnet_id."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.network_interface_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.tags_all
}
output "url" {
  description = "The URL that you use to connect to the Jupyter notebook that is running in your notebook instance."
  value       = aws_sagemaker_notebook_instance.aws_sagemaker_notebook_instance.url
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
      "kind/name"                   = "aws_sagemaker_notebook_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
