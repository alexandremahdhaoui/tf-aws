datasource "aws_api_gateway_domain_name" "aws_api_gateway_domain_name" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint_configuration" {
  description = "List of objects with the endpoint configuration of this domain name.\n"
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.endpoint_configuration
}
output "regional_domain_name" {
  description = "Hostname for the custom domain's regional endpoint."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_domain_name
}
output "regional_zone_id" {
  description = "Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_zone_id
}
output "security_policy" {
  description = "Security policy for the domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.security_policy
}
output "arn" {
  description = "ARN of the found custom domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.arn
}
output "certificate_arn" {
  description = "ARN for an AWS-managed certificate that is used by edge-optimized endpoint for this domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_arn
}
output "certificate_name" {
  description = "Name of the certificate that is used by edge-optimized endpoint for this domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_name
}
output "certificate_upload_date" {
  description = "Upload date associated with the domain certificate."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_upload_date
}
output "cloudfront_domain_name" {
  description = "Hostname created by Cloudfront to represent the distribution that implements this domain name mapping."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.cloudfront_domain_name
}
output "cloudfront_zone_id" {
  description = "For convenience, the hosted zone ID (Z2FDTNDATAQYW2) that can be used to create a Route53 alias record for the distribution."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.cloudfront_zone_id
}
output "regional_certificate_arn" {
  description = "ARN for an AWS-managed certificate that is used for validating the regional domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_certificate_arn
}
output "regional_certificate_name" {
  description = "User-friendly name of the certificate that is used by regional endpoint for this domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_certificate_name
}
output "types" {
  description = "List of endpoint types."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.types
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
