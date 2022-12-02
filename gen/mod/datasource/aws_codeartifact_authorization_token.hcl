datasource "aws_codeartifact_authorization_token" "aws_codeartifact_authorization_token" {
  authorization_token = var.authorization_token
  domain              = var.domain
  domain_owner        = var.domain_owner
  duration_seconds    = var.duration_seconds
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "authorization_token" {
  description = "Temporary authorization token."
  type        = string
}
variable "domain" {
  description = "(Required) Name of the domain that is in scope for the generated authorization token."
  type        = string
}
variable "domain_owner" {
  description = "(Optional) Account number of the AWS account that owns the domain."
  type        = string
  default     = ""
}
variable "duration_seconds" {
  description = "(Optional) Time, in seconds, that the generated authorization token is valid. Valid values are 0 and between 900 and 43200.In addition to the argument above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "domain" {
  description = "(Required) Name of the domain that is in scope for the generated authorization token."
  value       = aws_codeartifact_authorization_token.aws_codeartifact_authorization_token.domain
}
output "domain_owner" {
  description = "(Optional) Account number of the AWS account that owns the domain."
  value       = aws_codeartifact_authorization_token.aws_codeartifact_authorization_token.domain_owner
}
output "duration_seconds" {
  description = "(Optional) Time, in seconds, that the generated authorization token is valid. Valid values are 0 and between 900 and 43200.In addition to the argument above, the following attributes are exported:"
  value       = aws_codeartifact_authorization_token.aws_codeartifact_authorization_token.duration_seconds
}
output "authorization_token" {
  description = "Temporary authorization token."
  value       = aws_codeartifact_authorization_token.aws_codeartifact_authorization_token.authorization_token
}
output "authorization_token" {
  description = "Temporary authorization token."
  value       = aws_codeartifact_authorization_token.aws_codeartifact_authorization_token.authorization_token
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
