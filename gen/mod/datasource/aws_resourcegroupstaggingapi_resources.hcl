datasource "aws_resourcegroupstaggingapi_resources" "aws_resourcegroupstaggingapi_resources" {
  compliance_status              = var.compliance_status
  include_compliance_details     = var.include_compliance_details
  keys_with_noncompliant_values  = var.keys_with_noncompliant_values 
  resource_arn_list              = var.resource_arn_list
  resource_tag_mapping_list      = var.resource_tag_mapping_list
  resource_type_filters          = var.resource_type_filters
  values                         = var.values
  compliance_details             = var.compliance_details
  exclude_compliant_resources    = var.exclude_compliant_resources
  key                            = var.key
  non_compliant_keys             = var.non_compliant_keys 
  resource_arn                   = var.resource_arn
  tag_filter                     = var.tag_filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "key" {
  description = "(Required) One part of a key-value pair that makes up a tag."
  type        = string
}
variable "non_compliant_keys " {
  description = "Set of non-compliant tag keys."
  type        = string
}
variable "resource_arn" {
  description = "ARN of the resource."
  type        = string
}
variable "tag_filter" {
  description = "(Optional) Specifies a list of Tag Filters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. See Tag Filter below. Conflicts with resource_arn_list."
  type        = string
}
variable "compliance_details" {
  description = "List of objects with information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.\n"
  type        = string
}
variable "exclude_compliant_resources" {
  description = "(Optional) Specifies whether to exclude resources that are compliant with the tag policy. You can use this parameter only if the include_compliance_details argument is also set to true."
  type        = string
}
variable "keys_with_noncompliant_values " {
  description = "Set of tag keys with non-compliant tag values."
  type        = string
}
variable "resource_arn_list" {
  description = "(Optional) Specifies a list of ARNs of resources for which you want to retrieve tag data. Conflicts with filter.Tag FilterA tag_filter block supports the following arguments:If you do specify tag_filtertag_filter, the response includes all resources that were ever associated with tags. Resources that currently don't have associated tags are shown with an empty tag set."
  type        = string
}
variable "resource_tag_mapping_list" {
  description = ""
  type        = string
}
variable "resource_type_filters" {
  description = "(Optional) Constraints on the resources that you want returned. The format of each resource type is service:resourceType. For example, specifying a resource type of ec2 returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances."
  type        = string
}
variable "values" {
  description = "(Optional) Optional part of a key-value pair that make up a tag.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "compliance_status" {
  description = "Whether the resource is compliant."
  type        = string
}
variable "include_compliance_details" {
  description = "(Optional) Specifies whether to include details regarding the compliance with the effective tag policy."
  type        = string
}
output "key" {
  description = "(Required) One part of a key-value pair that makes up a tag."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "non_compliant_keys " {
  description = "Set of non-compliant tag keys."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.non_compliant_keys 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "ARN of the resource."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_filter" {
  description = "(Optional) Specifies a list of Tag Filters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. See Tag Filter below. Conflicts with resource_arn_list."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.tag_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compliance_details" {
  description = "List of objects with information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.\n"
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.compliance_details
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "exclude_compliant_resources" {
  description = "(Optional) Specifies whether to exclude resources that are compliant with the tag policy. You can use this parameter only if the include_compliance_details argument is also set to true."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.exclude_compliant_resources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "keys_with_noncompliant_values " {
  description = "Set of tag keys with non-compliant tag values."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.keys_with_noncompliant_values 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn_list" {
  description = "(Optional) Specifies a list of ARNs of resources for which you want to retrieve tag data. Conflicts with filter.Tag FilterA tag_filter block supports the following arguments:If you do specify tag_filtertag_filter, the response includes all resources that were ever associated with tags. Resources that currently don't have associated tags are shown with an empty tag set."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.resource_arn_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_tag_mapping_list" {
  description = ""
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.resource_tag_mapping_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_type_filters" {
  description = "(Optional) Constraints on the resources that you want returned. The format of each resource type is service:resourceType. For example, specifying a resource type of ec2 returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.resource_type_filters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Optional) Optional part of a key-value pair that make up a tag.In addition to all arguments above, the following attributes are exported:"
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compliance_status" {
  description = "Whether the resource is compliant."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.compliance_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "include_compliance_details" {
  description = "(Optional) Specifies whether to include details regarding the compliance with the effective tag policy."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.include_compliance_details
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compliance_details" {
  description = "List of objects with information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.\n"
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.compliance_details
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compliance_status" {
  description = "Whether the resource is compliant."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.compliance_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "keys_with_noncompliant_values " {
  description = "Set of tag keys with non-compliant tag values."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.keys_with_noncompliant_values 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "non_compliant_keys " {
  description = "Set of non-compliant tag keys."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.non_compliant_keys 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "ARN of the resource."
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_tag_mapping_list" {
  description = ""
  value       = aws_resourcegroupstaggingapi_resources.aws_resourcegroupstaggingapi_resources.resource_tag_mapping_list
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
}
