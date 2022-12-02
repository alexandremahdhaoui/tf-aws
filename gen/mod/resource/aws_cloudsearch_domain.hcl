resource "aws_cloudsearch_domain" "aws_cloudsearch_domain" {
  return                    = var.return
  scaling_parameters        = var.scaling_parameters
  search_service_endpoint   = var.search_service_endpoint
  enforce_https             = var.enforce_https
  facet                     = var.facet
  highlight                 = var.highlight
  multi_az                  = var.multi_az
  name                      = var.name
  update                    = var.update
  analysis_scheme           = var.analysis_scheme
  create                    = var.create
  desired_partition_count   = var.desired_partition_count
  desired_replication_count = var.desired_replication_count
  search                    = var.search
  type                      = var.type
  arn                       = var.arn
  document_service_endpoint = var.document_service_endpoint
  domain_id                 = var.domain_id
  endpoint_options          = var.endpoint_options
  source_fields             = var.source_fields
  tls_security_policy       = var.tls_security_policy
  default_value             = var.default_value
  desired_instance_type     = var.desired_instance_type
  index_field               = var.index_field
  sort                      = var.sort
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enforce_https" {
  description = "(Optional) Enables or disables the requirement that all requests to the domain arrive over HTTPS."
  type        = string
  default     = ""
}
variable "facet" {
  description = "(Optional) You can get facet information by enabling this."
  type        = string
  default     = ""
}
variable "highlight" {
  description = "(Optional) You can highlight information."
  type        = string
  default     = ""
}
variable "multi_az" {
  description = "(Optional) Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability."
  type        = string
  default     = ""
}
variable "return" {
  description = "(Optional) You can enable returning the value of all searchable fields."
  type        = string
  default     = ""
}
variable "scaling_parameters" {
  description = "(Optional) Domain scaling parameters. Documented below.endpoint_optionsThis configuration block supports the following attributes:"
  type        = string
  default     = ""
}
variable "search_service_endpoint" {
  description = "The service endpoint for requesting search results from a search domain.TimeoutsConfiguration options:"
  type        = string
}
variable "analysis_scheme" {
  description = "(Optional) The analysis scheme you want to use for a text field. The analysis scheme specifies the language-specific text processing options that are used during indexing."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "desired_partition_count" {
  description = "(Optional) The number of partitions you want to preconfigure for your domain. Only valid when you select search.2xlarge as the instance type."
  type        = string
  default     = ""
}
variable "desired_replication_count" {
  description = "(Optional) The number of replicas you want to preconfigure for each index partition.index_fieldThis configuration block supports the following attributes:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) A unique name for the field. Field names must begin with a letter and be at least 3 and no more than 64 characters long. The allowed characters are: -z (lower-case letters), 0-9, and _ (underscore). The name score is reserved and cannot be used as a field name."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "arn" {
  description = "The domain's ARN."
  type        = string
}
variable "document_service_endpoint" {
  description = "The service endpoint for updating documents in a search domain."
  type        = string
}
variable "domain_id" {
  description = "An internally generated unique identifier for the domain."
  type        = string
}
variable "endpoint_options" {
  description = "(Optional) Domain endpoint options. Documented below."
  type        = string
  default     = ""
}
variable "search" {
  description = "(Optional) You can set whether this index should be searchable or not."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) The field type. Valid values: date, date-array, double, double-array, int, int-array, literal, literal-array, text, text-array."
  type        = string
}
variable "default_value" {
  description = "(Optional) The default value for the field. This value is used when no value is specified for the field in the document data."
  type        = string
  default     = ""
}
variable "desired_instance_type" {
  description = "(Optional) The instance type that you want to preconfigure for your domain. See the AWS documentation for valid values."
  type        = string
  default     = ""
}
variable "index_field" {
  description = "(Optional) The index fields for documents added to the domain. Documented below."
  type        = string
  default     = ""
}
variable "sort" {
  description = "(Optional) You can enable the property to be sortable."
  type        = string
  default     = ""
}
variable "source_fields" {
  description = "(Optional) A comma-separated list of source fields to map to the field. Specifying a source field copies data from one field to another, enabling you to use the same source data in different ways by configuring different options for the fields.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tls_security_policy" {
  description = "(Optional) The minimum required TLS version. See the AWS documentation for valid values.scaling_parametersThis configuration block supports the following attributes:"
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
output "desired_replication_count" {
  description = "(Optional) The number of replicas you want to preconfigure for each index partition.index_fieldThis configuration block supports the following attributes:"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.desired_replication_count
}
output "name" {
  description = "(Required) A unique name for the field. Field names must begin with a letter and be at least 3 and no more than 64 characters long. The allowed characters are: -z (lower-case letters), 0-9, and _ (underscore). The name score is reserved and cannot be used as a field name."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.name
}
output "update" {
  description = "(Default 30m)"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.update
}
output "analysis_scheme" {
  description = "(Optional) The analysis scheme you want to use for a text field. The analysis scheme specifies the language-specific text processing options that are used during indexing."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.analysis_scheme
}
output "create" {
  description = "(Default 30m)"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.create
}
output "desired_partition_count" {
  description = "(Optional) The number of partitions you want to preconfigure for your domain. Only valid when you select search.2xlarge as the instance type."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.desired_partition_count
}
output "endpoint_options" {
  description = "(Optional) Domain endpoint options. Documented below."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.endpoint_options
}
output "search" {
  description = "(Optional) You can set whether this index should be searchable or not."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.search
}
output "type" {
  description = "(Required) The field type. Valid values: date, date-array, double, double-array, int, int-array, literal, literal-array, text, text-array."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.type
}
output "arn" {
  description = "The domain's ARN."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.arn
}
output "document_service_endpoint" {
  description = "The service endpoint for updating documents in a search domain."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.document_service_endpoint
}
output "domain_id" {
  description = "An internally generated unique identifier for the domain."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.domain_id
}
output "sort" {
  description = "(Optional) You can enable the property to be sortable."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.sort
}
output "source_fields" {
  description = "(Optional) A comma-separated list of source fields to map to the field. Specifying a source field copies data from one field to another, enabling you to use the same source data in different ways by configuring different options for the fields.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.source_fields
}
output "tls_security_policy" {
  description = "(Optional) The minimum required TLS version. See the AWS documentation for valid values.scaling_parametersThis configuration block supports the following attributes:"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.tls_security_policy
}
output "default_value" {
  description = "(Optional) The default value for the field. This value is used when no value is specified for the field in the document data."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.default_value
}
output "desired_instance_type" {
  description = "(Optional) The instance type that you want to preconfigure for your domain. See the AWS documentation for valid values."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.desired_instance_type
}
output "index_field" {
  description = "(Optional) The index fields for documents added to the domain. Documented below."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.index_field
}
output "multi_az" {
  description = "(Optional) Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.multi_az
}
output "return" {
  description = "(Optional) You can enable returning the value of all searchable fields."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.return
}
output "scaling_parameters" {
  description = "(Optional) Domain scaling parameters. Documented below.endpoint_optionsThis configuration block supports the following attributes:"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.scaling_parameters
}
output "search_service_endpoint" {
  description = "The service endpoint for requesting search results from a search domain.TimeoutsConfiguration options:"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.search_service_endpoint
}
output "enforce_https" {
  description = "(Optional) Enables or disables the requirement that all requests to the domain arrive over HTTPS."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.enforce_https
}
output "facet" {
  description = "(Optional) You can get facet information by enabling this."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.facet
}
output "highlight" {
  description = "(Optional) You can highlight information."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.highlight
}
output "domain_id" {
  description = "An internally generated unique identifier for the domain."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.domain_id
}
output "search_service_endpoint" {
  description = "The service endpoint for requesting search results from a search domain.TimeoutsConfiguration options:"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.search_service_endpoint
}
output "update" {
  description = "(Default 30m)"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.update
}
output "arn" {
  description = "The domain's ARN."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.create
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.delete
}
output "document_service_endpoint" {
  description = "The service endpoint for updating documents in a search domain."
  value       = aws_cloudsearch_domain.aws_cloudsearch_domain.document_service_endpoint
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
      "kind/name"                   = "aws_cloudsearch_domain"
      "kind/version"                = "v0.1.0"
    }
  }
}
