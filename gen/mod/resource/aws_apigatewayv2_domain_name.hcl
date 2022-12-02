resource "aws_apigatewayv2_domain_name" "aws_apigatewayv2_domain_name" {
  domain_name_configuration              = var.domain_name_configuration
  target_domain_name                     = var.target_domain_name
  arn                                    = var.arn
  hosted_zone_id                         = var.hosted_zone_id
  id                                     = var.id
  tags                                   = var.tags
  api_mapping_selection_expression       = var.api_mapping_selection_expression
  certificate_arn                        = var.certificate_arn
  security_policy                        = var.security_policy
  truststore_uri                         = var.truststore_uri
  truststore_version                     = var.truststore_version
  create                                 = var.create
  domain_name                            = var.domain_name
  endpoint_type                          = var.endpoint_type
  mutual_tls_authentication              = var.mutual_tls_authentication
  ownership_verification_certificate_arn = var.ownership_verification_certificate_arn
  tags_all                               = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "domain_name" {
  description = "(Required) Domain name. Must be between 1 and 512 characters in length."
  type        = string
}
variable "endpoint_type" {
  description = "(Required) Endpoint type. Valid values: REGIONAL."
  type        = string
}
variable "mutual_tls_authentication" {
  description = "(Optional) Mutual TLS authentication configuration for the domain name."
  type        = string
  default     = ""
}
variable "ownership_verification_certificate_arn" {
  description = "(Optional) ARN of the AWS-issued certificate used to validate custom domain ownership (when certificate_arn is issued via an ACM Private CA or mutual_tls_authentication is configured with an ACM-imported certificate.)"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "domain_name_configuration" {
  description = "(Required) Domain name configuration. See below."
  type        = string
}
variable "target_domain_name" {
  description = "(Computed) Target domain name.mutual_tls_authentication"
  type        = string
}
variable "arn" {
  description = "ARN of the domain name."
  type        = string
}
variable "hosted_zone_id" {
  description = "(Computed) Amazon Route 53 Hosted Zone ID of the endpoint."
  type        = string
}
variable "id" {
  description = "Domain name identifier."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the domain name. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.domain_name_configuration"
  type        = string
  default     = ""
}
variable "api_mapping_selection_expression" {
  description = "API mapping selection expression for the domain name."
  type        = string
}
variable "certificate_arn" {
  description = "(Required) ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the aws_acm_certificate resource to configure an ACM certificate."
  type        = string
}
variable "security_policy" {
  description = "(Required) Transport Layer Security (TLS) version of the security policy for the domain name. Valid values: TLS_1_2."
  type        = string
}
variable "truststore_uri" {
  description = "(Required) Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://bucket-name/key-name. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version."
  type        = string
}
variable "truststore_version" {
  description = "(Optional) Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
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
output "domain_name_configuration" {
  description = "(Required) Domain name configuration. See below."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.domain_name_configuration
}
output "target_domain_name" {
  description = "(Computed) Target domain name.mutual_tls_authentication"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.target_domain_name
}
output "arn" {
  description = "ARN of the domain name."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.arn
}
output "hosted_zone_id" {
  description = "(Computed) Amazon Route 53 Hosted Zone ID of the endpoint."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.hosted_zone_id
}
output "id" {
  description = "Domain name identifier."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.id
}
output "tags" {
  description = "(Optional) Map of tags to assign to the domain name. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.domain_name_configuration"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.tags
}
output "api_mapping_selection_expression" {
  description = "API mapping selection expression for the domain name."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.api_mapping_selection_expression
}
output "certificate_arn" {
  description = "(Required) ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the aws_acm_certificate resource to configure an ACM certificate."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.certificate_arn
}
output "security_policy" {
  description = "(Required) Transport Layer Security (TLS) version of the security policy for the domain name. Valid values: TLS_1_2."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.security_policy
}
output "truststore_uri" {
  description = "(Required) Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://bucket-name/key-name. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.truststore_uri
}
output "truststore_version" {
  description = "(Optional) Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.truststore_version
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.tags_all
}
output "create" {
  description = "(Default 10m)"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.create
}
output "domain_name" {
  description = "(Required) Domain name. Must be between 1 and 512 characters in length."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.domain_name
}
output "endpoint_type" {
  description = "(Required) Endpoint type. Valid values: REGIONAL."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.endpoint_type
}
output "mutual_tls_authentication" {
  description = "(Optional) Mutual TLS authentication configuration for the domain name."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.mutual_tls_authentication
}
output "ownership_verification_certificate_arn" {
  description = "(Optional) ARN of the AWS-issued certificate used to validate custom domain ownership (when certificate_arn is issued via an ACM Private CA or mutual_tls_authentication is configured with an ACM-imported certificate.)"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.ownership_verification_certificate_arn
}
output "api_mapping_selection_expression" {
  description = "API mapping selection expression for the domain name."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.api_mapping_selection_expression
}
output "arn" {
  description = "ARN of the domain name."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.create
}
output "id" {
  description = "Domain name identifier."
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.tags_all
}
output "update" {
  description = "(Default 60m)"
  value       = aws_apigatewayv2_domain_name.aws_apigatewayv2_domain_name.update
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
      "kind/name"                   = "aws_apigatewayv2_domain_name"
      "kind/version"                = "v0.1.0"
    }
  }
}
