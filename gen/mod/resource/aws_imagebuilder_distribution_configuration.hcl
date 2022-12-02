resource "aws_imagebuilder_distribution_configuration" "aws_imagebuilder_distribution_configuration" {
  date_updated                         = var.date_updated
  distribution                         = var.distribution
  organizational_unit_arns             = var.organizational_unit_arns
  launch_permission                    = var.launch_permission
  launch_template_id                   = var.launch_template_id
  region                               = var.region
  tags_all                             = var.tags_all
  date_created                         = var.date_created
  enabled                              = var.enabled
  organization_arns                    = var.organization_arns
  user_ids                             = var.user_ids
  fast_launch_configuration            = var.fast_launch_configuration
  launch_template_version              = var.launch_template_version
  repository_name                      = var.repository_name
  user_groups                          = var.user_groups
  tags                                 = var.tags
  target_repository                    = var.target_repository
  ami_tags                             = var.ami_tags
  arn                                  = var.arn
  container_distribution_configuration = var.container_distribution_configuration
  default                              = var.default
  description                          = var.description
  name                                 = var.name
  account_id                           = var.account_id
  ami_distribution_configuration       = var.ami_distribution_configuration
  launch_template_configuration        = var.launch_template_configuration
  service                              = var.service
  target_account_ids                   = var.target_account_ids
  target_resource_count                = var.target_resource_count
  launch_template_name                 = var.launch_template_name
  max_parallel_launches                = var.max_parallel_launches
  container_tags                       = var.container_tags
  kms_key_id                           = var.kms_key_id
  launch_template                      = var.launch_template
  license_configuration_arns           = var.license_configuration_arns
  snapshot_configuration               = var.snapshot_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "license_configuration_arns" {
  description = "(Optional) Set of Amazon Resource Names (ARNs) of License Manager License Configurations.ami_distribution_configuration"
  type        = string
}
variable "snapshot_configuration" {
  description = "(Optional) Configuration block for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled. Detailed below.launch_template"
  type        = string
}
variable "container_tags" {
  description = "(Optional) Set of tags that are attached to the container distribution configuration."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key to encrypt the distributed AMI."
  type        = string
}
variable "launch_template" {
  description = "(Optional) Configuration block for the launch template that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots. Detailed below."
  type        = string
}
variable "date_updated" {
  description = "Date the distribution configuration was updated."
  type        = string
}
variable "distribution" {
  description = "(Required) One or more configuration blocks with distribution settings. Detailed below."
  type        = string
}
variable "organizational_unit_arns" {
  description = "(Optional) Set of AWS Organizational Unit ARNs to assign."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "launch_permission" {
  description = "(Optional) Configuration block of EC2 launch permissions to apply to the distributed AMI. Detailed below."
  type        = string
}
variable "launch_template_id" {
  description = "(Required) The ID of the Amazon EC2 launch template to use.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "region" {
  description = "(Required) AWS Region for the distribution."
  type        = string
}
variable "user_ids" {
  description = "(Optional) Set of AWS Account identifiers to assign.container_distribution_configuration"
  type        = string
}
variable "date_created" {
  description = "Date the distribution configuration was created."
  type        = string
}
variable "enabled" {
  description = "(Required) A Boolean that represents the current state of faster launching for the Windows AMI. Set to true to start using Windows faster launching, or false to stop using it."
  type        = string
}
variable "organization_arns" {
  description = "(Optional) Set of AWS Organization ARNs to assign."
  type        = string
}
variable "user_groups" {
  description = "(Optional) Set of EC2 launch permission user groups to assign. Use all to distribute a public AMI."
  type        = string
}
variable "fast_launch_configuration" {
  description = "(Optional) Set of Windows faster-launching configurations to use for AMI distribution. Detailed below."
  type        = string
}
variable "launch_template_version" {
  description = "(Optional) The version of the launch template to use for faster launching for a Windows AMI.snapshot_configuration"
  type        = string
}
variable "repository_name" {
  description = "(Required) The name of the container repository where the output container image is stored. This name is prefixed by the repository location."
  type        = string
}
variable "default" {
  description = "(Optional) Indicates whether to set the specified Amazon EC2 launch template as the default launch template. Defaults to true."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the container distribution configuration."
  type        = string
}
variable "name" {
  description = "(Optional) Name to apply to the distributed AMI."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the distribution configuration. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.distribution"
  type        = string
}
variable "target_repository" {
  description = " (Required) Configuration block with the destination repository for the container distribution configuration.target_repository"
  type        = string
}
variable "ami_tags" {
  description = "(Optional) Key-value map of tags to apply to the distributed AMI."
  type        = string
}
variable "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the distribution configuration."
  type        = string
}
variable "container_distribution_configuration" {
  description = "(Optional) Configuration block with container distribution settings. Detailed below."
  type        = string
}
variable "service" {
  description = "(Required) The service in which this image is registered. Valid values: ECR.fast_launch_configuration"
  type        = string
}
variable "target_account_ids" {
  description = "(Optional) Set of AWS Account identifiers to distribute the AMI.launch_permission"
  type        = string
}
variable "target_resource_count" {
  description = "(Optional) The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.launch_template_configuration"
  type        = string
}
variable "account_id" {
  description = "The account ID that this configuration applies to."
  type        = string
}
variable "ami_distribution_configuration" {
  description = "(Optional) Configuration block with Amazon Machine Image (AMI) distribution settings. Detailed below."
  type        = string
}
variable "launch_template_configuration" {
  description = "(Optional) Set of launch template configuration settings that apply to image distribution. Detailed below."
  type        = string
}
variable "launch_template_name" {
  description = "(Optional) The name of the launch template to use for faster launching for a Windows AMI."
  type        = string
}
variable "max_parallel_launches" {
  description = "(Optional) The maximum number of parallel instances that are launched for creating resources."
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
output "target_account_ids" {
  description = "(Optional) Set of AWS Account identifiers to distribute the AMI.launch_permission"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.target_account_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_resource_count" {
  description = "(Optional) The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.launch_template_configuration"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.target_resource_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "The account ID that this configuration applies to."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ami_distribution_configuration" {
  description = "(Optional) Configuration block with Amazon Machine Image (AMI) distribution settings. Detailed below."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.ami_distribution_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_configuration" {
  description = "(Optional) Set of launch template configuration settings that apply to image distribution. Detailed below."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service" {
  description = "(Required) The service in which this image is registered. Valid values: ECR.fast_launch_configuration"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.service
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_name" {
  description = "(Optional) The name of the launch template to use for faster launching for a Windows AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_parallel_launches" {
  description = "(Optional) The maximum number of parallel instances that are launched for creating resources."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.max_parallel_launches
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_configuration" {
  description = "(Optional) Configuration block for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled. Detailed below.launch_template"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.snapshot_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_tags" {
  description = "(Optional) Set of tags that are attached to the container distribution configuration."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.container_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key to encrypt the distributed AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template" {
  description = "(Optional) Configuration block for the launch template that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots. Detailed below."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "license_configuration_arns" {
  description = "(Optional) Set of Amazon Resource Names (ARNs) of License Manager License Configurations.ami_distribution_configuration"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.license_configuration_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_updated" {
  description = "Date the distribution configuration was updated."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.date_updated
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "distribution" {
  description = "(Required) One or more configuration blocks with distribution settings. Detailed below."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.distribution
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organizational_unit_arns" {
  description = "(Optional) Set of AWS Organizational Unit ARNs to assign."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.organizational_unit_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_permission" {
  description = "(Optional) Configuration block of EC2 launch permissions to apply to the distributed AMI. Detailed below."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_permission
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_id" {
  description = "(Required) The ID of the Amazon EC2 launch template to use.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "(Required) AWS Region for the distribution."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the distribution configuration was created."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Required) A Boolean that represents the current state of faster launching for the Windows AMI. Set to true to start using Windows faster launching, or false to stop using it."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organization_arns" {
  description = "(Optional) Set of AWS Organization ARNs to assign."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.organization_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_ids" {
  description = "(Optional) Set of AWS Account identifiers to assign.container_distribution_configuration"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.user_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fast_launch_configuration" {
  description = "(Optional) Set of Windows faster-launching configurations to use for AMI distribution. Detailed below."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.fast_launch_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_version" {
  description = "(Optional) The version of the launch template to use for faster launching for a Windows AMI.snapshot_configuration"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.launch_template_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_name" {
  description = "(Required) The name of the container repository where the output container image is stored. This name is prefixed by the repository location."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.repository_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_groups" {
  description = "(Optional) Set of EC2 launch permission user groups to assign. Use all to distribute a public AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.user_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the container distribution configuration."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Name to apply to the distributed AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the distribution configuration. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.distribution"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_repository" {
  description = " (Required) Configuration block with the destination repository for the container distribution configuration.target_repository"
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.target_repository
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ami_tags" {
  description = "(Optional) Key-value map of tags to apply to the distributed AMI."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.ami_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the distribution configuration."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_distribution_configuration" {
  description = "(Optional) Configuration block with container distribution settings. Detailed below."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.container_distribution_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default" {
  description = "(Optional) Indicates whether to set the specified Amazon EC2 launch template as the default launch template. Defaults to true."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.default
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the distribution configuration."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the distribution configuration was created."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_updated" {
  description = "Date the distribution configuration was updated."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.date_updated
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_distribution_configuration.aws_imagebuilder_distribution_configuration.tags_all
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
      "kind/name"                   = "aws_imagebuilder_distribution_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}