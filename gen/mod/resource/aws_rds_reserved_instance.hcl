resource "aws_rds_reserved_instance" "aws_rds_reserved_instance" {
  delete              = var.delete
  instance_class      = var.instance_class
  lease_id            = var.lease_id
  recurring_charges   = var.recurring_charges
  update              = var.update
  arn                 = var.arn
  offering_type       = var.offering_type
  product_description = var.product_description
  start_time          = var.start_time
  usage_price         = var.usage_price
  create              = var.create
  fixed_price         = var.fixed_price
  instance_id         = var.instance_id
  multi_az            = var.multi_az
  offering_id         = var.offering_id
  tags                = var.tags
  currency_code       = var.currency_code
  duration            = var.duration
  id                  = var.id
  instance_count      = var.instance_count
  state               = var.state
  tags_all            = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Unique identifier for the reservation. same as instance_id."
  type        = string
}
variable "instance_count" {
  description = "(Optional) Number of instances to reserve. Default value is 1."
  type        = string
}
variable "state" {
  description = "State of the reserved DB instance."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "currency_code" {
  description = "Currency code for the reserved DB instance."
  type        = string
}
variable "duration" {
  description = "Duration of the reservation in seconds."
  type        = string
}
variable "lease_id" {
  description = "Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance."
  type        = string
}
variable "recurring_charges" {
  description = "Recurring price charged to run this reserved DB instance."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "delete" {
  description = "(Default 1m)"
  type        = string
}
variable "instance_class" {
  description = "DB instance class for the reserved DB instance."
  type        = string
}
variable "product_description" {
  description = "Description of the reserved DB instance."
  type        = string
}
variable "start_time" {
  description = "Time the reservation started."
  type        = string
}
variable "usage_price" {
  description = "Hourly price charged for this reserved DB instance."
  type        = string
}
variable "arn" {
  description = "ARN for the reserved DB instance."
  type        = string
}
variable "offering_type" {
  description = "Offering type of this reserved DB instance."
  type        = string
}
variable "instance_id" {
  description = "(Optional) Customer-specified identifier to track this reservation."
  type        = string
}
variable "multi_az" {
  description = "Whether the reservation applies to Multi-AZ deployments."
  type        = string
}
variable "offering_id" {
  description = "(Required) ID of the Reserved DB instance offering to purchase. To determine an offering_id, see the aws_rds_reserved_instance_offering data source."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the DB reservation. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "fixed_price" {
  description = " – Fixed price charged for this reserved DB instance."
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
output "usage_price" {
  description = "Hourly price charged for this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.usage_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN for the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "offering_type" {
  description = "Offering type of this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.offering_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "product_description" {
  description = "Description of the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.product_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_time" {
  description = "Time the reservation started."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "offering_id" {
  description = "(Required) ID of the Reserved DB instance offering to purchase. To determine an offering_id, see the aws_rds_reserved_instance_offering data source."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.offering_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the DB reservation. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fixed_price" {
  description = " – Fixed price charged for this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.fixed_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Optional) Customer-specified identifier to track this reservation."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multi_az" {
  description = "Whether the reservation applies to Multi-AZ deployments."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.multi_az
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "State of the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "currency_code" {
  description = "Currency code for the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.currency_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "duration" {
  description = "Duration of the reservation in seconds."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier for the reservation. same as instance_id."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_count" {
  description = "(Optional) Number of instances to reserve. Default value is 1."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.instance_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 1m)"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_class" {
  description = "DB instance class for the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.instance_class
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lease_id" {
  description = "Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.lease_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "recurring_charges" {
  description = "Recurring price charged to run this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.recurring_charges
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fixed_price" {
  description = " – Fixed price charged for this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.fixed_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier for the reservation. same as instance_id."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_class" {
  description = "DB instance class for the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.instance_class
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "State of the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 1m)"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "duration" {
  description = "Duration of the reservation in seconds."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "currency_code" {
  description = "Currency code for the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.currency_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multi_az" {
  description = "Whether the reservation applies to Multi-AZ deployments."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.multi_az
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "product_description" {
  description = "Description of the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.product_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN for the reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "usage_price" {
  description = "Hourly price charged for this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.usage_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "offering_type" {
  description = "Offering type of this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.offering_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_time" {
  description = "Time the reservation started."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lease_id" {
  description = "Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.lease_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "recurring_charges" {
  description = "Recurring price charged to run this reserved DB instance."
  value       = aws_rds_reserved_instance.aws_rds_reserved_instance.recurring_charges
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
      "kind/name"                   = "aws_rds_reserved_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
