datasource "aws_route53_zone" "aws_route53_zone" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_servers" {
  description = "List of DNS name servers for the Hosted Zone."
  value       = aws_route53_zone.aws_route53_zone.name_servers
}
output "primary_name_server" {
  description = "The Route 53 name server that created the SOA record."
  value       = aws_route53_zone.aws_route53_zone.primary_name_server
}
output "resource_record_set_count" {
  description = "The number of Record Set in the Hosted Zone."
  value       = aws_route53_zone.aws_route53_zone.resource_record_set_count
}
output "arn" {
  description = "ARN of the Hosted Zone."
  value       = aws_route53_zone.aws_route53_zone.arn
}
output "caller_reference" {
  description = "Caller Reference of the Hosted Zone."
  value       = aws_route53_zone.aws_route53_zone.caller_reference
}
output "comment" {
  description = "Comment field of the Hosted Zone."
  value       = aws_route53_zone.aws_route53_zone.comment
}
output "linked_service_principal" {
  description = "The service that created the Hosted Zone (e.g., servicediscovery.amazonaws.com)."
  value       = aws_route53_zone.aws_route53_zone.linked_service_principal
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
