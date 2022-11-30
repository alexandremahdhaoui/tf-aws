resource "aws_iam_server_certificate" "aws_iam_server_certificate" {
  certificate_body  = var.certificate_body
  id                = var.id
  name              = var.name
  path              = var.path
  tags              = var.tags
  tags_all          = var.tags_all
  arn               = var.arn
  certificate_chain = var.certificate_chain
  expiration        = var.expiration
  name_prefix       = var.name_prefix
  private_key       = var.private_key
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "The name of the Server Certificate"
  type        = string
}
variable "path" {
  description = "(Optional) The IAM path for the server certificate.  If it is not\nincluded, it defaults to a slash (/). If this certificate is for use with\nAWS CloudFront, the path must be in format /cloudfront/your_path_hereIAM Identifiers for more details on IAM Paths."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of resource tags for the server certificate. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.~> strongNOTE: AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in terraform forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that certificate_body contains only one certificate. All other certificates should go in certificate_chain. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "certificate_body" {
  description = ""
  type        = string
}
variable "id" {
  description = "The unique Server Certificate name"
  type        = string
}
variable "expiration" {
  description = "Date and time in RFC3339 format on which the certificate is set to expire."
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  type        = string
}
variable "private_key" {
  description = " – (Required) The contents of the private key in PEM-encoded format."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) specifying the server certificate."
  type        = string
}
variable "certificate_chain" {
  description = ""
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
output "tags" {
  description = "(Optional) Map of resource tags for the server certificate. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.~> strongNOTE: AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in terraform forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that certificate_body contains only one certificate. All other certificates should go in certificate_chain. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.In addition to all arguments above, the following attributes are exported:"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_body" {
  description = ""
  value       = aws_iam_server_certificate.aws_iam_server_certificate.certificate_body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique Server Certificate name"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the Server Certificate"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "(Optional) The IAM path for the server certificate.  If it is not\nincluded, it defaults to a slash (/). If this certificate is for use with\nAWS CloudFront, the path must be in format /cloudfront/your_path_hereIAM Identifiers for more details on IAM Paths."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_key" {
  description = " – (Required) The contents of the private key in PEM-encoded format."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.private_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the server certificate."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_chain" {
  description = ""
  value       = aws_iam_server_certificate.aws_iam_server_certificate.certificate_chain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expiration" {
  description = "Date and time in RFC3339 format on which the certificate is set to expire."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.expiration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique Server Certificate name"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the Server Certificate"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "upload_date" {
  description = "Date and time in RFC3339 format when the server certificate was uploaded."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.upload_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the server certificate."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expiration" {
  description = "Date and time in RFC3339 format on which the certificate is set to expire."
  value       = aws_iam_server_certificate.aws_iam_server_certificate.expiration
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
      "kind/name"                   = "aws_iam_server_certificate"
      "kind/version"                = "v0.1.0"
    }
  }
}
