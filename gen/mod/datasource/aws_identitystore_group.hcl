datasource "aws_identitystore_group" "aws_identitystore_group" {
  identity_store_id = var.identity_store_id
  attribute_path    = var.attribute_path
  attribute_value   = var.attribute_value
  filter            = var.filter
  group_id          = var.group_id
  id                = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "attribute_path" {
  description = "(Required) Attribute path that is used to specify which attribute name to search. Currently, DisplayName is the only valid attribute path."
  type        = string
}
variable "attribute_value" {
  description = "(Required) Value for an attribute.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "filter" {
  description = "(Required) Configuration block(s) for filtering. Currently, the AWS Identity Store API supports only 1 filter. Detailed below."
  type        = string
}
variable "group_id" {
  description = "(Optional)  The identifier for a group in the Identity Store."
  type        = string
  default     = ""
}
variable "id" {
  description = "Identifier of the group in the Identity Store."
  type        = string
}
variable "identity_store_id" {
  description = "(Required) Identity Store ID associated with the Single Sign-On Instance.filter Configuration Blockfilter configuration block:"
  type        = string
}
output "filter" {
  description = "(Required) Configuration block(s) for filtering. Currently, the AWS Identity Store API supports only 1 filter. Detailed below."
  value       = aws_identitystore_group.aws_identitystore_group.filter
}
output "group_id" {
  description = "(Optional)  The identifier for a group in the Identity Store."
  value       = aws_identitystore_group.aws_identitystore_group.group_id
}
output "id" {
  description = "Identifier of the group in the Identity Store."
  value       = aws_identitystore_group.aws_identitystore_group.id
}
output "identity_store_id" {
  description = "(Required) Identity Store ID associated with the Single Sign-On Instance.filter Configuration Blockfilter configuration block:"
  value       = aws_identitystore_group.aws_identitystore_group.identity_store_id
}
output "attribute_path" {
  description = "(Required) Attribute path that is used to specify which attribute name to search. Currently, DisplayName is the only valid attribute path."
  value       = aws_identitystore_group.aws_identitystore_group.attribute_path
}
output "attribute_value" {
  description = "(Required) Value for an attribute.In addition to all arguments above, the following attributes are exported:"
  value       = aws_identitystore_group.aws_identitystore_group.attribute_value
}
output "id" {
  description = "Identifier of the group in the Identity Store."
  value       = aws_identitystore_group.aws_identitystore_group.id
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
