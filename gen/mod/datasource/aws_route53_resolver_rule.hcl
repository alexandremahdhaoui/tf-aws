datasource "aws_route53_resolver_rule" "aws_route53_resolver_rule" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "When a rule is shared with another AWS account, the account ID of the account that the rule is shared with."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.owner_id
}
output "share_status" {
  description = "Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.\nValues are NOT_SHARED, SHARED_BY_ME or SHARED_WITH_ME"
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.share_status
}
output "arn" {
  description = "ARN (Amazon Resource Name) for the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.arn
}
output "id" {
  description = "ID of the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.id
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
