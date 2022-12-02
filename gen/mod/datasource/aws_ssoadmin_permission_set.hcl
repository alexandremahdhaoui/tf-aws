datasource "aws_ssoadmin_permission_set" "aws_ssoadmin_permission_set" {
  relay_state      = var.relay_state
  session_duration = var.session_duration
  arn              = var.arn
  description      = var.description
  id               = var.id
  instance_arn     = var.instance_arn
  name             = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "ARN of the Permission Set."
  type        = string
}
variable "instance_arn" {
  description = "(Required) ARN of the SSO Instance associated with the permission set."
  type        = string
}
variable "name" {
  description = "(Optional) Name of the SSO Permission Set.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "relay_state" {
  description = "Relay state URL used to redirect users within the application during the federation authentication process."
  type        = string
}
variable "session_duration" {
  description = "Length of time that the application user sessions are valid in the ISO-8601 standard."
  type        = string
}
variable "arn" {
  description = "(Optional) ARN of the permission set."
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the Permission Set."
  type        = string
}
output "arn" {
  description = "(Optional) ARN of the permission set."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.arn
}
output "description" {
  description = "Description of the Permission Set."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.description
}
output "id" {
  description = "ARN of the Permission Set."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.id
}
output "instance_arn" {
  description = "(Required) ARN of the SSO Instance associated with the permission set."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.instance_arn
}
output "name" {
  description = "(Optional) Name of the SSO Permission Set.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.name
}
output "relay_state" {
  description = "Relay state URL used to redirect users within the application during the federation authentication process."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.relay_state
}
output "session_duration" {
  description = "Length of time that the application user sessions are valid in the ISO-8601 standard."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.session_duration
}
output "description" {
  description = "Description of the Permission Set."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.description
}
output "id" {
  description = "ARN of the Permission Set."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.id
}
output "relay_state" {
  description = "Relay state URL used to redirect users within the application during the federation authentication process."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.relay_state
}
output "session_duration" {
  description = "Length of time that the application user sessions are valid in the ISO-8601 standard."
  value       = aws_ssoadmin_permission_set.aws_ssoadmin_permission_set.session_duration
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
