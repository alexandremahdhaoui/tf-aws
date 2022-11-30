datasource "aws_route53_resolver_rule" "aws_route53_resolver_rule" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "When a rule is shared with another AWS account, the account ID of the account that the rule is shared with."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_status" {
  description = "NOT_SHARED, SHARED_BY_ME or SHARED_WITH_ME"
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.share_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN (Amazon Resource Name) for the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.arn
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
