datasource "aws_route53_traffic_policy_document" "aws_route53_traffic_policy_document" {
  health_check           = var.health_check
  rule_reference         = var.rule_reference
  start_endpoint         = var.start_endpoint
  endpoint_reference     = var.endpoint_reference
  id                     = var.id
  items                  = var.items
  longitude              = var.longitude
  primary                = var.primary
  type                   = var.type
  country                = var.country
  location               = var.location
  record_type            = var.record_type
  endpoint               = var.endpoint
  start_rule             = var.start_rule
  subdivision            = var.subdivision
  bias                   = var.bias
  latitude               = var.latitude
  region                 = var.region
  regions                = var.regions
  secondary              = var.secondary
  version                = var.version
  is_default             = var.is_default
  evaluate_target_health = var.evaluate_target_health
  geo_proximity_location = var.geo_proximity_location
  rule                   = var.rule
  value                  = var.value
  continent              = var.continent
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "is_default" {
  description = "(Optional) Indicates whether this set of values represents the default location."
  type        = string
  default     = ""
}
variable "latitude" {
  description = "(Optional) Represents the location south (negative) or north (positive) of the equator. Valid values are -90 degrees to 90 degrees."
  type        = string
  default     = ""
}
variable "region" {
  description = "(Optional) Region code for the AWS Region that you created the resource in."
  type        = string
  default     = ""
}
variable "regions" {
  description = "(Optional) Configuration block for when you add a latency rule, you configure your traffic policy to route your traffic based on the latency (the time delay) between your users and the AWS regions where you've created AWS resources such as ELB load balancers and Amazon S3 buckets. Only valid for latency type. See below"
  type        = string
  default     = ""
}
variable "secondary" {
  description = "(Optional) Configuration block for the rule or endpoint that you want to route traffic to whenever the primary resources are not available. Only valid for failover type. See below"
  type        = string
  default     = ""
}
variable "version" {
  description = " (Optional) - Version of the traffic policy format.endpoint"
  type        = string
  default     = ""
}
variable "continent" {
  description = "(Optional) Value of a continent."
  type        = string
  default     = ""
}
variable "evaluate_target_health" {
  description = "(Optional) Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints."
  type        = string
  default     = ""
}
variable "geo_proximity_location" {
  description = "(Optional) Configuration block for when you add a geoproximity rule, you configure Amazon Route 53 to route traffic to your resources based on the geographic location of your resources. Only valid for geoproximity type. See below"
  type        = string
  default     = ""
}
variable "rule" {
  description = " (Optional) - Configuration block for definitions of the rules that you want to use in this traffic policy. See below"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Optional) Value of the type.rule"
  type        = string
  default     = ""
}
variable "health_check" {
  description = "(Optional) If you want to associate a health check with the endpoint or rule.The following attribute is exported:"
  type        = string
  default     = ""
}
variable "rule_reference" {
  description = "(Optional) References to a rule.item"
  type        = string
  default     = ""
}
variable "start_endpoint" {
  description = " (Optional) - An endpoint to be as the starting point for the traffic policy."
  type        = string
  default     = ""
}
variable "country" {
  description = "(Optional) Value of a country."
  type        = string
  default     = ""
}
variable "endpoint_reference" {
  description = "(Optional) References to an endpoint."
  type        = string
  default     = ""
}
variable "id" {
  description = "(Required) ID of a rule you want to assign."
  type        = string
}
variable "items" {
  description = "(Optional) Configuration block for when you add a multivalue answer rule, you configure your traffic policy to route traffic approximately randomly to your healthy resources.  Only valid for multivalue type. See belowprimary and secondary"
  type        = string
  default     = ""
}
variable "longitude" {
  description = "(Optional) Represents the location west (negative) or east (positive) of the prime meridian. Valid values are -180 degrees to 180 degrees."
  type        = string
  default     = ""
}
variable "primary" {
  description = "(Optional) Configuration block for the settings for the rule or endpoint that you want to route traffic to whenever the corresponding resources are available. Only valid for failover type. See below"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Type of the rule."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = " (Optional) - Configuration block for the definitions of the endpoints that you want to use in this traffic policy. See below"
  type        = string
  default     = ""
}
variable "location" {
  description = "(Optional) Configuration block for when you add a geolocation rule, you configure your traffic policy to route your traffic based on the geographic location of your users.  Only valid for geo type. See below"
  type        = string
  default     = ""
}
variable "record_type" {
  description = " (Optional) - DNS type of all of the resource record sets that Amazon Route 53 will create based on this traffic policy."
  type        = string
  default     = ""
}
variable "start_rule" {
  description = " (Optional) - A rule to be as the starting point for the traffic policy."
  type        = string
  default     = ""
}
variable "bias" {
  description = "(Optional) Specify a value for bias if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values)."
  type        = string
  default     = ""
}
variable "subdivision" {
  description = "(Optional) Value of a subdivision.geo_proximity_location"
  type        = string
  default     = ""
}
output "primary" {
  description = "(Optional) Configuration block for the settings for the rule or endpoint that you want to route traffic to whenever the corresponding resources are available. Only valid for failover type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.primary
}
output "type" {
  description = "(Optional) Type of the rule."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.type
}
output "country" {
  description = "(Optional) Value of a country."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.country
}
output "endpoint_reference" {
  description = "(Optional) References to an endpoint."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.endpoint_reference
}
output "id" {
  description = "(Required) ID of a rule you want to assign."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.id
}
output "items" {
  description = "(Optional) Configuration block for when you add a multivalue answer rule, you configure your traffic policy to route traffic approximately randomly to your healthy resources.  Only valid for multivalue type. See belowprimary and secondary"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.items
}
output "longitude" {
  description = "(Optional) Represents the location west (negative) or east (positive) of the prime meridian. Valid values are -180 degrees to 180 degrees."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.longitude
}
output "endpoint" {
  description = " (Optional) - Configuration block for the definitions of the endpoints that you want to use in this traffic policy. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.endpoint
}
output "location" {
  description = "(Optional) Configuration block for when you add a geolocation rule, you configure your traffic policy to route your traffic based on the geographic location of your users.  Only valid for geo type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.location
}
output "record_type" {
  description = " (Optional) - DNS type of all of the resource record sets that Amazon Route 53 will create based on this traffic policy."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.record_type
}
output "start_rule" {
  description = " (Optional) - A rule to be as the starting point for the traffic policy."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.start_rule
}
output "bias" {
  description = "(Optional) Specify a value for bias if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values)."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.bias
}
output "subdivision" {
  description = "(Optional) Value of a subdivision.geo_proximity_location"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.subdivision
}
output "version" {
  description = " (Optional) - Version of the traffic policy format.endpoint"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.version
}
output "is_default" {
  description = "(Optional) Indicates whether this set of values represents the default location."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.is_default
}
output "latitude" {
  description = "(Optional) Represents the location south (negative) or north (positive) of the equator. Valid values are -90 degrees to 90 degrees."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.latitude
}
output "region" {
  description = "(Optional) Region code for the AWS Region that you created the resource in."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.region
}
output "regions" {
  description = "(Optional) Configuration block for when you add a latency rule, you configure your traffic policy to route your traffic based on the latency (the time delay) between your users and the AWS regions where you've created AWS resources such as ELB load balancers and Amazon S3 buckets. Only valid for latency type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.regions
}
output "secondary" {
  description = "(Optional) Configuration block for the rule or endpoint that you want to route traffic to whenever the primary resources are not available. Only valid for failover type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.secondary
}
output "continent" {
  description = "(Optional) Value of a continent."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.continent
}
output "evaluate_target_health" {
  description = "(Optional) Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.evaluate_target_health
}
output "geo_proximity_location" {
  description = "(Optional) Configuration block for when you add a geoproximity rule, you configure Amazon Route 53 to route traffic to your resources based on the geographic location of your resources. Only valid for geoproximity type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.geo_proximity_location
}
output "rule" {
  description = " (Optional) - Configuration block for definitions of the rules that you want to use in this traffic policy. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.rule
}
output "value" {
  description = "(Optional) Value of the type.rule"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.value
}
output "health_check" {
  description = "(Optional) If you want to associate a health check with the endpoint or rule.The following attribute is exported:"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.health_check
}
output "rule_reference" {
  description = "(Optional) References to a rule.item"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.rule_reference
}
output "start_endpoint" {
  description = " (Optional) - An endpoint to be as the starting point for the traffic policy."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.start_endpoint
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
