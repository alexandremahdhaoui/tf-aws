datasource "aws_route53_traffic_policy_document" "aws_route53_traffic_policy_document" {
  evaluate_target_health = var.evaluate_target_health
  longitude              = var.longitude
  rule                   = var.rule
  country                = var.country
  items                  = var.items
  secondary              = var.secondary
  value                  = var.value
  version                = var.version
  endpoint_reference     = var.endpoint_reference
  health_check           = var.health_check
  id                     = var.id
  location               = var.location
  start_endpoint         = var.start_endpoint
  region                 = var.region
  subdivision            = var.subdivision
  regions                = var.regions
  rule_reference         = var.rule_reference
  start_rule             = var.start_rule
  bias                   = var.bias
  geo_proximity_location = var.geo_proximity_location
  is_default             = var.is_default
  latitude               = var.latitude
  record_type            = var.record_type
  endpoint               = var.endpoint
  continent              = var.continent
  primary                = var.primary
  type                   = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "endpoint" {
  description = " (Optional) - Configuration block for the definitions of the endpoints that you want to use in this traffic policy. See below"
  type        = string
}
variable "continent" {
  description = "(Optional) Value of a continent."
  type        = string
}
variable "primary" {
  description = "(Optional) Configuration block for the settings for the rule or endpoint that you want to route traffic to whenever the corresponding resources are available. Only valid for failover type. See below"
  type        = string
}
variable "type" {
  description = "(Optional) Type of the rule."
  type        = string
}
variable "evaluate_target_health" {
  description = "(Optional) Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints."
  type        = string
}
variable "longitude" {
  description = "(Optional) Represents the location west (negative) or east (positive) of the prime meridian. Valid values are -180 degrees to 180 degrees."
  type        = string
}
variable "rule" {
  description = " (Optional) - Configuration block for definitions of the rules that you want to use in this traffic policy. See below"
  type        = string
}
variable "country" {
  description = "(Optional) Value of a country."
  type        = string
}
variable "items" {
  description = "(Optional) Configuration block for when you add a multivalue answer rule, you configure your traffic policy to route traffic approximately randomly to your healthy resources.  Only valid for multivalue type. See belowprimary and secondary"
  type        = string
}
variable "secondary" {
  description = "(Optional) Configuration block for the rule or endpoint that you want to route traffic to whenever the primary resources are not available. Only valid for failover type. See below"
  type        = string
}
variable "endpoint_reference" {
  description = "(Optional) References to an endpoint."
  type        = string
}
variable "health_check" {
  description = "(Optional) If you want to associate a health check with the endpoint or rule.The following attribute is exported:"
  type        = string
}
variable "id" {
  description = "(Required) ID of a rule you want to assign."
  type        = string
}
variable "location" {
  description = "(Optional) Configuration block for when you add a geolocation rule, you configure your traffic policy to route your traffic based on the geographic location of your users.  Only valid for geo type. See below"
  type        = string
}
variable "start_endpoint" {
  description = " (Optional) - An endpoint to be as the starting point for the traffic policy."
  type        = string
}
variable "value" {
  description = "(Optional) Value of the type.rule"
  type        = string
}
variable "version" {
  description = " (Optional) - Version of the traffic policy format.endpoint"
  type        = string
}
variable "region" {
  description = "(Optional) Region code for the AWS Region that you created the resource in."
  type        = string
}
variable "subdivision" {
  description = "(Optional) Value of a subdivision.geo_proximity_location"
  type        = string
}
variable "start_rule" {
  description = " (Optional) - A rule to be as the starting point for the traffic policy."
  type        = string
}
variable "bias" {
  description = "(Optional) Specify a value for bias if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values)."
  type        = string
}
variable "geo_proximity_location" {
  description = "(Optional) Configuration block for when you add a geoproximity rule, you configure Amazon Route 53 to route traffic to your resources based on the geographic location of your resources. Only valid for geoproximity type. See below"
  type        = string
}
variable "is_default" {
  description = "(Optional) Indicates whether this set of values represents the default location."
  type        = string
}
variable "latitude" {
  description = "(Optional) Represents the location south (negative) or north (positive) of the equator. Valid values are -90 degrees to 90 degrees."
  type        = string
}
variable "record_type" {
  description = " (Optional) - DNS type of all of the resource record sets that Amazon Route 53 will create based on this traffic policy."
  type        = string
}
variable "regions" {
  description = "(Optional) Configuration block for when you add a latency rule, you configure your traffic policy to route your traffic based on the latency (the time delay) between your users and the AWS regions where you've created AWS resources such as ELB load balancers and Amazon S3 buckets. Only valid for latency type. See below"
  type        = string
}
variable "rule_reference" {
  description = "(Optional) References to a rule.item"
  type        = string
}
output "location" {
  description = "(Optional) Configuration block for when you add a geolocation rule, you configure your traffic policy to route your traffic based on the geographic location of your users.  Only valid for geo type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_endpoint" {
  description = " (Optional) - An endpoint to be as the starting point for the traffic policy."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.start_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Optional) Value of the type.rule"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = " (Optional) - Version of the traffic policy format.endpoint"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint_reference" {
  description = "(Optional) References to an endpoint."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.endpoint_reference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "health_check" {
  description = "(Optional) If you want to associate a health check with the endpoint or rule.The following attribute is exported:"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.health_check
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Required) ID of a rule you want to assign."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "(Optional) Region code for the AWS Region that you created the resource in."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subdivision" {
  description = "(Optional) Value of a subdivision.geo_proximity_location"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.subdivision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "latitude" {
  description = "(Optional) Represents the location south (negative) or north (positive) of the equator. Valid values are -90 degrees to 90 degrees."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.latitude
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_type" {
  description = " (Optional) - DNS type of all of the resource record sets that Amazon Route 53 will create based on this traffic policy."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.record_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "regions" {
  description = "(Optional) Configuration block for when you add a latency rule, you configure your traffic policy to route your traffic based on the latency (the time delay) between your users and the AWS regions where you've created AWS resources such as ELB load balancers and Amazon S3 buckets. Only valid for latency type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.regions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_reference" {
  description = "(Optional) References to a rule.item"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.rule_reference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_rule" {
  description = " (Optional) - A rule to be as the starting point for the traffic policy."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.start_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bias" {
  description = "(Optional) Specify a value for bias if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values)."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.bias
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "geo_proximity_location" {
  description = "(Optional) Configuration block for when you add a geoproximity rule, you configure Amazon Route 53 to route traffic to your resources based on the geographic location of your resources. Only valid for geoproximity type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.geo_proximity_location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "is_default" {
  description = "(Optional) Indicates whether this set of values represents the default location."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.is_default
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = " (Optional) - Configuration block for the definitions of the endpoints that you want to use in this traffic policy. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "continent" {
  description = "(Optional) Value of a continent."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.continent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary" {
  description = "(Optional) Configuration block for the settings for the rule or endpoint that you want to route traffic to whenever the corresponding resources are available. Only valid for failover type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.primary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) Type of the rule."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "evaluate_target_health" {
  description = "(Optional) Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.evaluate_target_health
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "longitude" {
  description = "(Optional) Represents the location west (negative) or east (positive) of the prime meridian. Valid values are -180 degrees to 180 degrees."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.longitude
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule" {
  description = " (Optional) - Configuration block for definitions of the rules that you want to use in this traffic policy. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary" {
  description = "(Optional) Configuration block for the rule or endpoint that you want to route traffic to whenever the primary resources are not available. Only valid for failover type. See below"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.secondary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "country" {
  description = "(Optional) Value of a country."
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.country
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "items" {
  description = "(Optional) Configuration block for when you add a multivalue answer rule, you configure your traffic policy to route traffic approximately randomly to your healthy resources.  Only valid for multivalue type. See belowprimary and secondary"
  value       = aws_route53_traffic_policy_document.aws_route53_traffic_policy_document.items
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
