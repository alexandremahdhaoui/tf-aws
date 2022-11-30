resource "aws_route53recoveryreadiness_resource_set" "aws_route53recoveryreadiness_resource_set" {
  arn                      = var.arn
  domain_name              = var.domain_name
  resources.#.component_id = var.resources.#.component_id
  dns_target_resource      = var.dns_target_resource
  target_resource          = var.target_resource
  resource_arn             = var.resource_arn
  resources                = var.resources
  nlb_resource             = var.nlb_resource
  r53_resource             = var.r53_resource
  record_set_id            = var.record_set_id
  record_type              = var.record_type
  tags                     = var.tags
  tags_all                 = var.tags_all
  hosted_zone_arn          = var.hosted_zone_arn
  readiness_scopes         = var.readiness_scopes
  resource_set_name        = var.resource_set_name
  resource_set_type        = var.resource_set_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "target_resource" {
  description = "(Optional) Target resource the R53 record specified with the above params points to.target_resource"
  type        = string
}
variable "dns_target_resource" {
  description = "(Required if resource_arn is not set) Component for DNS/Routing Control Readiness Checks."
  type        = string
}
variable "r53_resource" {
  description = "(Optional) Route53 resource a DNS Target Resource record points to.nlb_resource"
  type        = string
}
variable "record_set_id" {
  description = "(Optional) Resource record set ID that is targeted.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "record_type" {
  description = "(Optional) Type of DNS Record of target resource."
  type        = string
}
variable "resource_arn" {
  description = "(Required if dns_target_resource is not set) ARN of the resource.dns_target_resource"
  type        = string
}
variable "resources" {
  description = "(Required) List of resources to add to this resource set. See below."
  type        = string
}
variable "nlb_resource" {
  description = "(Optional) NLB resource a DNS Target Resource points to. Required if r53_resource is not set."
  type        = string
}
variable "readiness_scopes" {
  description = "(Optional) Recovery group ARN or cell ARN that contains this resource set."
  type        = string
}
variable "resource_set_name" {
  description = "(Required) Unique name describing the resource set."
  type        = string
}
variable "resource_set_type" {
  description = "(Required) Type of the resources in the resource set."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.resources"
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.ImportRoute53 Recovery Readiness resource set name can be imported via the resource set name, e.g.,TimeoutsConfiguration options:"
  type        = string
}
variable "hosted_zone_arn" {
  description = "(Optional) Hosted Zone ARN that contains the DNS record with the provided name of target resource."
  type        = string
}
variable "domain_name" {
  description = "(Optional) Domain name that is targeted."
  type        = string
}
variable "resources.#.component_id" {
  description = "Unique identified for DNS Target Resources, use for readiness checks."
  type        = string
}
variable "arn" {
  description = "ARN of the resource set"
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "resource_set_type" {
  description = "(Required) Type of the resources in the resource set."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.resource_set_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.resources"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.ImportRoute53 Recovery Readiness resource set name can be imported via the resource set name, e.g.,TimeoutsConfiguration options:"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone_arn" {
  description = "(Optional) Hosted Zone ARN that contains the DNS record with the provided name of target resource."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.hosted_zone_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "readiness_scopes" {
  description = "(Optional) Recovery group ARN or cell ARN that contains this resource set."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.readiness_scopes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_set_name" {
  description = "(Required) Unique name describing the resource set."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.resource_set_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the resource set"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "(Optional) Domain name that is targeted."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resources.#.component_id" {
  description = "Unique identified for DNS Target Resources, use for readiness checks."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.resources.#.component_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_target_resource" {
  description = "(Required if resource_arn is not set) Component for DNS/Routing Control Readiness Checks."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.dns_target_resource
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_resource" {
  description = "(Optional) Target resource the R53 record specified with the above params points to.target_resource"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.target_resource
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_type" {
  description = "(Optional) Type of DNS Record of target resource."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.record_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "(Required if dns_target_resource is not set) ARN of the resource.dns_target_resource"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resources" {
  description = "(Required) List of resources to add to this resource set. See below."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.resources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nlb_resource" {
  description = "(Optional) NLB resource a DNS Target Resource points to. Required if r53_resource is not set."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.nlb_resource
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "r53_resource" {
  description = "(Optional) Route53 resource a DNS Target Resource record points to.nlb_resource"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.r53_resource
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_set_id" {
  description = "(Optional) Resource record set ID that is targeted.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.record_set_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the resource set"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resources.#.component_id" {
  description = "Unique identified for DNS Target Resources, use for readiness checks."
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.resources.#.component_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.ImportRoute53 Recovery Readiness resource set name can be imported via the resource set name, e.g.,TimeoutsConfiguration options:"
  value       = aws_route53recoveryreadiness_resource_set.aws_route53recoveryreadiness_resource_set.tags_all
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
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_route53recoveryreadiness_resource_set"
      "kind/version"                = "v0.1.0"
    }
  }
}
