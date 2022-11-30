datasource "aws_outposts_site" "aws_outposts_site" {
  account_id = var.account_id
  id         = var.id
  name       = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier of the Site."
  type        = string
}
variable "name" {
  description = "(Optional) Name of the Site.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "account_id" {
  description = "AWS Account identifier."
  type        = string
}
output "account_id" {
  description = "AWS Account identifier."
  value       = aws_outposts_site.aws_outposts_site.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Identifier of the Site."
  value       = aws_outposts_site.aws_outposts_site.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Name of the Site.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_site.aws_outposts_site.name
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
