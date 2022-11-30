datasource "aws_cloudfront_log_delivery_canonical_user_id" "aws_cloudfront_log_delivery_canonical_user_id" {
  region = var.region
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "region" {
  description = "(Optional) Region you'd like the zone for. By default, fetches the current region.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "region" {
  description = "(Optional) Region you'd like the zone for. By default, fetches the current region.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_log_delivery_canonical_user_id.aws_cloudfront_log_delivery_canonical_user_id.region
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
