datasource "aws_regions" "aws_regions" {
  all_regions = var.all_regions
  filter      = var.filter
  id          = var.id
  name        = var.name
  values      = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) Configuration block(s) to use as filters. Detailed below.filter Configuration Blockfilter configuration block:"
  type        = string
  default     = ""
}
variable "id" {
  description = "Identifier of the current partition (e.g., aws in AWS Commercial, aws-cn in AWS China)."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the describe-regions AWS CLI Reference."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "all_regions" {
  description = "(Optional) If true the source will query all regions regardless of availability."
  type        = string
  default     = ""
}
output "all_regions" {
  description = "(Optional) If true the source will query all regions regardless of availability."
  value       = aws_regions.aws_regions.all_regions
}
output "filter" {
  description = "(Optional) Configuration block(s) to use as filters. Detailed below.filter Configuration Blockfilter configuration block:"
  value       = aws_regions.aws_regions.filter
}
output "id" {
  description = "Identifier of the current partition (e.g., aws in AWS Commercial, aws-cn in AWS China)."
  value       = aws_regions.aws_regions.id
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the describe-regions AWS CLI Reference."
  value       = aws_regions.aws_regions.name
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_regions.aws_regions.values
}
output "id" {
  description = "Identifier of the current partition (e.g., aws in AWS Commercial, aws-cn in AWS China)."
  value       = aws_regions.aws_regions.id
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
}
