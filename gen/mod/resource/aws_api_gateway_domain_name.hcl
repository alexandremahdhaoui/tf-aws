resource "aws_api_gateway_domain_name" "aws_api_gateway_domain_name" {
  domain_name                            = var.domain_name
  regional_certificate_name              = var.regional_certificate_name
  truststore_version                     = var.truststore_version
  certificate_body                       = var.certificate_body
  certificate_chain                      = var.certificate_chain
  certificate_name                       = var.certificate_name
  cloudfront_domain_name                 = var.cloudfront_domain_name
  regional_domain_name                   = var.regional_domain_name
  regional_zone_id                       = var.regional_zone_id
  regional_certificate_arn               = var.regional_certificate_arn
  tags                                   = var.tags
  arn                                    = var.arn
  certificate_arn                        = var.certificate_arn
  certificate_private_key                = var.certificate_private_key
  endpoint_configuration                 = var.endpoint_configuration
  id                                     = var.id
  mutual_tls_authentication              = var.mutual_tls_authentication
  truststore_uri                         = var.truststore_uri
  certificate_upload_date                = var.certificate_upload_date
  cloudfront_zone_id                     = var.cloudfront_zone_id
  ownership_verification_certificate_arn = var.ownership_verification_certificate_arn
  security_policy                        = var.security_policy
  types                                  = var.types
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "certificate_upload_date" {
  description = "Upload date associated with the domain certificate."
  type        = string
}
variable "cloudfront_zone_id" {
  description = "For convenience, the hosted zone ID (Z2FDTNDATAQYW2) that can be used to create a Route53 alias record for the distribution."
  type        = string
}
variable "ownership_verification_certificate_arn" {
  description = "(Optional) ARN of the AWS-issued certificate used to validate custom domain ownership (when certificate_arn is issued via an ACM Private CA or mutual_tls_authentication is configured with an ACM-imported certificate.)"
  type        = string
  default     = ""
}
variable "security_policy" {
  description = "(Optional) Transport Layer Security (TLS) version + cipher suite for this DomainName. Valid values are TLS_1_0 and TLS_1_2. Must be configured to perform drift detection."
  type        = string
  default     = ""
}
variable "types" {
  description = "(Required) List of endpoint types. This resource currently only supports managing a single value. Valid values: EDGE or REGIONAL. If unspecified, defaults to EDGE. Must be declared as REGIONAL in non-Commercial partitions. Refer to the documentation for more information on the difference between edge-optimized and regional APIs.mutual_tls_authentication"
  type        = string
}
variable "domain_name" {
  description = "(Required) Fully-qualified domain name to register."
  type        = string
}
variable "regional_certificate_name" {
  description = "(Optional) User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with certificate_arn, certificate_name, certificate_body, certificate_chain, and certificate_private_key.endpoint_configuration"
  type        = string
  default     = ""
}
variable "certificate_body" {
  description = "(Optional) Certificate issued for the domain name being registered, in PEM format. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name."
  type        = string
  default     = ""
}
variable "certificate_chain" {
  description = "(Optional) Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name."
  type        = string
  default     = ""
}
variable "certificate_name" {
  description = "(Optional) Unique name to use when registering this certificate as an IAM server certificate. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name. Required if certificate_arn is not set."
  type        = string
  default     = ""
}
variable "cloudfront_domain_name" {
  description = "Hostname created by Cloudfront to represent the distribution that implements this domain name mapping."
  type        = string
}
variable "regional_domain_name" {
  description = "Hostname for the custom domain's regional endpoint."
  type        = string
}
variable "regional_zone_id" {
  description = "Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint."
  type        = string
}
variable "truststore_version" {
  description = "(Optional) Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of domain name."
  type        = string
}
variable "certificate_arn" {
  description = "(Optional) ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with certificate_name, certificate_body, certificate_chain, certificate_private_key, regional_certificate_arn, and regional_certificate_name."
  type        = string
  default     = ""
}
variable "certificate_private_key" {
  description = "(Optional) Private key associated with the domain certificate given in certificate_body. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name."
  type        = string
  default     = ""
}
variable "endpoint_configuration" {
  description = "(Optional) Configuration block defining API endpoint information including type. See below."
  type        = string
  default     = ""
}
variable "id" {
  description = "Internal identifier assigned to this domain name by API Gateway."
  type        = string
}
variable "mutual_tls_authentication" {
  description = "(Optional) Mutual TLS authentication configuration for the domain name. See below."
  type        = string
  default     = ""
}
variable "regional_certificate_arn" {
  description = "(Optional) ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with certificate_arn, certificate_name, certificate_body, certificate_chain, and certificate_private_key.When uploading a certificate, the following arguments are supported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.When referencing an AWS-managed certificate, the following arguments are supported:"
  type        = string
  default     = ""
}
variable "truststore_uri" {
  description = "(Required) Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://bucket-name/key-name. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version."
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
output "certificate_name" {
  description = "(Optional) Unique name to use when registering this certificate as an IAM server certificate. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name. Required if certificate_arn is not set."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_name
}
output "cloudfront_domain_name" {
  description = "Hostname created by Cloudfront to represent the distribution that implements this domain name mapping."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.cloudfront_domain_name
}
output "regional_domain_name" {
  description = "Hostname for the custom domain's regional endpoint."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_domain_name
}
output "regional_zone_id" {
  description = "Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_zone_id
}
output "truststore_version" {
  description = "(Optional) Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.In addition to all arguments above, the following attributes are exported:"
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.truststore_version
}
output "certificate_body" {
  description = "(Optional) Certificate issued for the domain name being registered, in PEM format. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_body
}
output "certificate_chain" {
  description = "(Optional) Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_chain
}
output "certificate_private_key" {
  description = "(Optional) Private key associated with the domain certificate given in certificate_body. Only valid for EDGE endpoint configuration type. Conflicts with certificate_arn, regional_certificate_arn, and regional_certificate_name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_private_key
}
output "endpoint_configuration" {
  description = "(Optional) Configuration block defining API endpoint information including type. See below."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.endpoint_configuration
}
output "id" {
  description = "Internal identifier assigned to this domain name by API Gateway."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.id
}
output "mutual_tls_authentication" {
  description = "(Optional) Mutual TLS authentication configuration for the domain name. See below."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.mutual_tls_authentication
}
output "regional_certificate_arn" {
  description = "(Optional) ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with certificate_arn, certificate_name, certificate_body, certificate_chain, and certificate_private_key.When uploading a certificate, the following arguments are supported:"
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_certificate_arn
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.When referencing an AWS-managed certificate, the following arguments are supported:"
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.tags
}
output "arn" {
  description = "ARN of domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.arn
}
output "certificate_arn" {
  description = "(Optional) ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with certificate_name, certificate_body, certificate_chain, certificate_private_key, regional_certificate_arn, and regional_certificate_name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_arn
}
output "truststore_uri" {
  description = "(Required) Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://bucket-name/key-name. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.truststore_uri
}
output "ownership_verification_certificate_arn" {
  description = "(Optional) ARN of the AWS-issued certificate used to validate custom domain ownership (when certificate_arn is issued via an ACM Private CA or mutual_tls_authentication is configured with an ACM-imported certificate.)"
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.ownership_verification_certificate_arn
}
output "security_policy" {
  description = "(Optional) Transport Layer Security (TLS) version + cipher suite for this DomainName. Valid values are TLS_1_0 and TLS_1_2. Must be configured to perform drift detection."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.security_policy
}
output "types" {
  description = "(Required) List of endpoint types. This resource currently only supports managing a single value. Valid values: EDGE or REGIONAL. If unspecified, defaults to EDGE. Must be declared as REGIONAL in non-Commercial partitions. Refer to the documentation for more information on the difference between edge-optimized and regional APIs.mutual_tls_authentication"
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.types
}
output "certificate_upload_date" {
  description = "Upload date associated with the domain certificate."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.certificate_upload_date
}
output "cloudfront_zone_id" {
  description = "For convenience, the hosted zone ID (Z2FDTNDATAQYW2) that can be used to create a Route53 alias record for the distribution."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.cloudfront_zone_id
}
output "domain_name" {
  description = "(Required) Fully-qualified domain name to register."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.domain_name
}
output "regional_certificate_name" {
  description = "(Optional) User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with certificate_arn, certificate_name, certificate_body, certificate_chain, and certificate_private_key.endpoint_configuration"
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_certificate_name
}
output "regional_zone_id" {
  description = "Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_zone_id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.tags_all
}
output "arn" {
  description = "ARN of domain name."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.arn
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
output "id" {
  description = "Internal identifier assigned to this domain name by API Gateway."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.id
}
output "regional_domain_name" {
  description = "Hostname for the custom domain's regional endpoint."
  value       = aws_api_gateway_domain_name.aws_api_gateway_domain_name.regional_domain_name
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
      "kind/name"                   = "aws_api_gateway_domain_name"
      "kind/version"                = "v0.1.0"
    }
  }
}
