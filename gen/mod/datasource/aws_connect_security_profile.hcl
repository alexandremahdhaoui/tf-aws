datasource "aws_connect_security_profile" "aws_connect_security_profile" {
  name                     = var.name
  organization_resource_id = var.organization_resource_id
  permissions              = var.permissions
  security_profile_id      = var.security_profile_id
  arn                      = var.arn
  description              = var.description
  id                       = var.id
  instance_id              = var.instance_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "permissions" {
  description = "List of permissions assigned to the security profile."
  type        = string
}
variable "security_profile_id" {
  description = "(Optional) Returns information on a specific Security Profile by Security Profile id"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Security Profile."
  type        = string
}
variable "description" {
  description = "Description of the Security Profile."
  type        = string
}
variable "id" {
  description = "Identifier of the hosting Amazon Connect Instance and identifier of the Security Profile separated by a colon (:)."
  type        = string
}
variable "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  type        = string
}
variable "name" {
  description = "(Optional) Returns information on a specific Security Profile by nameIn addition to all of the arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "organization_resource_id" {
  description = "The organization resource identifier for the security profile."
  type        = string
}
output "security_profile_id" {
  description = "(Optional) Returns information on a specific Security Profile by Security Profile id"
  value       = aws_connect_security_profile.aws_connect_security_profile.security_profile_id
}
output "arn" {
  description = "ARN of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.arn
}
output "description" {
  description = "Description of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.description
}
output "id" {
  description = "Identifier of the hosting Amazon Connect Instance and identifier of the Security Profile separated by a colon (:)."
  value       = aws_connect_security_profile.aws_connect_security_profile.id
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_security_profile.aws_connect_security_profile.instance_id
}
output "name" {
  description = "(Optional) Returns information on a specific Security Profile by nameIn addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_security_profile.aws_connect_security_profile.name
}
output "organization_resource_id" {
  description = "The organization resource identifier for the security profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.organization_resource_id
}
output "permissions" {
  description = "List of permissions assigned to the security profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.permissions
}
output "arn" {
  description = "ARN of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.arn
}
output "description" {
  description = "Description of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.description
}
output "id" {
  description = "Identifier of the hosting Amazon Connect Instance and identifier of the Security Profile separated by a colon (:)."
  value       = aws_connect_security_profile.aws_connect_security_profile.id
}
output "organization_resource_id" {
  description = "The organization resource identifier for the security profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.organization_resource_id
}
output "permissions" {
  description = "List of permissions assigned to the security profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.permissions
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
