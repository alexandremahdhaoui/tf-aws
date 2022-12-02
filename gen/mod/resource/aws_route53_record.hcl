resource "aws_route53_record" "aws_route53_record" {
  region                           = var.region
  subdivision                      = var.subdivision
  weight                           = var.weight
  evaluate_target_health           = var.evaluate_target_health
  health_check_id                  = var.health_check_id
  latency_routing_policy           = var.latency_routing_policy
  records                          = var.records
  set_identifier                   = var.set_identifier
  ttl                              = var.ttl
  alias                            = var.alias
  allow_overwrite                  = var.allow_overwrite
  continent                        = var.continent
  geolocation_routing_policy       = var.geolocation_routing_policy
  name                             = var.name
  type                             = var.type
  weighted_routing_policy          = var.weighted_routing_policy
  zone_id                          = var.zone_id
  country                          = var.country
  failover_routing_policy          = var.failover_routing_policy
  multivalue_answer_routing_policy = var.multivalue_answer_routing_policy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "alias" {
  description = "(Optional) An alias block. Conflicts with ttl & recordsDocumented below."
  type        = string
  default     = ""
}
variable "allow_overwrite" {
  description = "(Optional) Allow creation of this record in Terraform to overwrite an existing record, if any. This does not affect the ability to update the record in Terraform and does not prevent other resources within Terraform or manual Route 53 changes outside Terraform from overwriting this record. false by default. This configuration is not recommended for most environments.Exactly one of records or alias must be specified: this determines whether it's an alias record.AliasAlias records support the following:"
  type        = string
  default     = ""
}
variable "continent" {
  description = "A two-letter continent code. See http://docs.aws.amazon.com/Route53/latest/APIReference/API_GetGeoLocation.html for code details. Either continent or country must be specified."
  type        = string
}
variable "records" {
  description = "(Required for non-alias records) A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \\\"\\\" inside the Terraform configuration string (e.g., \"first255characters\\\"\\\"morecharacters\")."
  type        = string
}
variable "set_identifier" {
  description = "(Optional) Unique identifier to differentiate records with routing policies from one another. Required if using failover, geolocation, latency, multivalue_answer, or weighted routing policies documented below."
  type        = string
  default     = ""
}
variable "ttl" {
  description = "(Required for non-alias records) The TTL of the record."
  type        = string
}
variable "geolocation_routing_policy" {
  description = "(Optional) A block indicating a routing policy based on the geolocation of the requestor. Conflicts with any other routing policy. Documented below."
  type        = string
  default     = ""
}
variable "name" {
  description = "The name of the record."
  type        = string
}
variable "country" {
  description = "A two-character country code or * to indicate a default resource record set."
  type        = string
}
variable "failover_routing_policy" {
  description = "(Optional) A block indicating the routing behavior when associated health check fails. Conflicts with any other routing policy. Documented below."
  type        = string
  default     = ""
}
variable "multivalue_answer_routing_policy" {
  description = "(Optional) Set to true to indicate a multivalue answer routing policy. Conflicts with any other routing policy."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) PRIMARY or SECONDARY. A PRIMARY record will be served if its healthcheck is passing, otherwise the SECONDARY will be served. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html#dns-failover-failover-rrsetsGeolocation Routing PolicyGeolocation routing policies support the following:"
  type        = string
}
variable "weighted_routing_policy" {
  description = "(Optional) A block indicating a weighted routing policy. Conflicts with any other routing policy. Documented below."
  type        = string
  default     = ""
}
variable "zone_id" {
  description = "(Required) Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, or Route 53 hosted zone. See resource_elb.zone_id for example."
  type        = string
}
variable "evaluate_target_health" {
  description = "(Required) Set to true if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see related part of documentation.Failover Routing PolicyFailover routing policiessupport the following:"
  type        = string
}
variable "health_check_id" {
  description = "(Optional) The health check the record should be associated with."
  type        = string
  default     = ""
}
variable "latency_routing_policy" {
  description = "(Optional) A block indicating a routing policy based on the latency between the requestor and an AWS region. Conflicts with any other routing policy. Documented below."
  type        = string
  default     = ""
}
variable "region" {
  description = "(Required) An AWS region from which to measure latency. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latencyWeighted Routing PolicyWeighted routing policies support the following:"
  type        = string
}
variable "subdivision" {
  description = "(Optional) A subdivision code for a country.Latency Routing PolicyLatency routing policies support the following:"
  type        = string
  default     = ""
}
variable "weight" {
  description = "(Required) A numeric value indicating the relative weight of the record. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted.In addition to all arguments above, the following attributes are exported:"
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
output "country" {
  description = "A two-character country code or * to indicate a default resource record set."
  value       = aws_route53_record.aws_route53_record.country
}
output "failover_routing_policy" {
  description = "(Optional) A block indicating the routing behavior when associated health check fails. Conflicts with any other routing policy. Documented below."
  value       = aws_route53_record.aws_route53_record.failover_routing_policy
}
output "multivalue_answer_routing_policy" {
  description = "(Optional) Set to true to indicate a multivalue answer routing policy. Conflicts with any other routing policy."
  value       = aws_route53_record.aws_route53_record.multivalue_answer_routing_policy
}
output "type" {
  description = "(Required) PRIMARY or SECONDARY. A PRIMARY record will be served if its healthcheck is passing, otherwise the SECONDARY will be served. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html#dns-failover-failover-rrsetsGeolocation Routing PolicyGeolocation routing policies support the following:"
  value       = aws_route53_record.aws_route53_record.type
}
output "weighted_routing_policy" {
  description = "(Optional) A block indicating a weighted routing policy. Conflicts with any other routing policy. Documented below."
  value       = aws_route53_record.aws_route53_record.weighted_routing_policy
}
output "zone_id" {
  description = "(Required) Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, or Route 53 hosted zone. See resource_elb.zone_id for example."
  value       = aws_route53_record.aws_route53_record.zone_id
}
output "evaluate_target_health" {
  description = "(Required) Set to true if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see related part of documentation.Failover Routing PolicyFailover routing policiessupport the following:"
  value       = aws_route53_record.aws_route53_record.evaluate_target_health
}
output "health_check_id" {
  description = "(Optional) The health check the record should be associated with."
  value       = aws_route53_record.aws_route53_record.health_check_id
}
output "latency_routing_policy" {
  description = "(Optional) A block indicating a routing policy based on the latency between the requestor and an AWS region. Conflicts with any other routing policy. Documented below."
  value       = aws_route53_record.aws_route53_record.latency_routing_policy
}
output "region" {
  description = "(Required) An AWS region from which to measure latency. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latencyWeighted Routing PolicyWeighted routing policies support the following:"
  value       = aws_route53_record.aws_route53_record.region
}
output "subdivision" {
  description = "(Optional) A subdivision code for a country.Latency Routing PolicyLatency routing policies support the following:"
  value       = aws_route53_record.aws_route53_record.subdivision
}
output "weight" {
  description = "(Required) A numeric value indicating the relative weight of the record. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53_record.aws_route53_record.weight
}
output "alias" {
  description = "(Optional) An alias block. Conflicts with ttl & recordsDocumented below."
  value       = aws_route53_record.aws_route53_record.alias
}
output "allow_overwrite" {
  description = "(Optional) Allow creation of this record in Terraform to overwrite an existing record, if any. This does not affect the ability to update the record in Terraform and does not prevent other resources within Terraform or manual Route 53 changes outside Terraform from overwriting this record. false by default. This configuration is not recommended for most environments.Exactly one of records or alias must be specified: this determines whether it's an alias record.AliasAlias records support the following:"
  value       = aws_route53_record.aws_route53_record.allow_overwrite
}
output "continent" {
  description = "A two-letter continent code. See http://docs.aws.amazon.com/Route53/latest/APIReference/API_GetGeoLocation.html for code details. Either continent or country must be specified."
  value       = aws_route53_record.aws_route53_record.continent
}
output "records" {
  description = "(Required for non-alias records) A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \\\"\\\" inside the Terraform configuration string (e.g., \"first255characters\\\"\\\"morecharacters\")."
  value       = aws_route53_record.aws_route53_record.records
}
output "set_identifier" {
  description = "(Optional) Unique identifier to differentiate records with routing policies from one another. Required if using failover, geolocation, latency, multivalue_answer, or weighted routing policies documented below."
  value       = aws_route53_record.aws_route53_record.set_identifier
}
output "ttl" {
  description = "(Required for non-alias records) The TTL of the record."
  value       = aws_route53_record.aws_route53_record.ttl
}
output "geolocation_routing_policy" {
  description = "(Optional) A block indicating a routing policy based on the geolocation of the requestor. Conflicts with any other routing policy. Documented below."
  value       = aws_route53_record.aws_route53_record.geolocation_routing_policy
}
output "name" {
  description = "The name of the record."
  value       = aws_route53_record.aws_route53_record.name
}
output "fqdn" {
  description = "FQDN built using the zone domain and name."
  value       = aws_route53_record.aws_route53_record.fqdn
}
output "name" {
  description = "The name of the record."
  value       = aws_route53_record.aws_route53_record.name
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
      "kind/name"                   = "aws_route53_record"
      "kind/version"                = "v0.1.0"
    }
  }
}
