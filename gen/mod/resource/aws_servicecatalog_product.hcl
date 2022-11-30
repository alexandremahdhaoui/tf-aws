resource "aws_servicecatalog_product" "aws_servicecatalog_product" {
  template_physical_id             = var.template_physical_id
  arn                              = var.arn
  disable_template_validation      = var.disable_template_validation
  has_default_path                 = var.has_default_path
  name                             = var.name
  support_description              = var.support_description
  support_email                    = var.support_email
  accept_language                  = var.accept_language
  provisioning_artifact_parameters = var.provisioning_artifact_parameters
  support_url                      = var.support_url
  tags                             = var.tags
  status                           = var.status
  tags_all                         = var.tags_all
  create                           = var.create
  created_time                     = var.created_time
  delete                           = var.delete
  distributor                      = var.distributor
  id                               = var.id
  owner                            = var.owner
  type                             = var.type
  description                      = var.description
  read                             = var.read
  template_url                     = var.template_url
  update                           = var.update
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Optional) Name of the provisioning artifact (for example, v1, v2beta). No spaces are allowed."
  type        = string
}
variable "support_description" {
  description = "(Optional) Support information about the product."
  type        = string
}
variable "support_email" {
  description = "(Optional) Contact email for product support."
  type        = string
}
variable "template_physical_id" {
  description = "(Required if template_url is not provided) Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]."
  type        = string
}
variable "arn" {
  description = "ARN of the product."
  type        = string
}
variable "disable_template_validation" {
  description = "(Optional) Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid."
  type        = string
}
variable "has_default_path" {
  description = "Whether the product has a default path. If the product does not have a default path, call ListLaunchPaths to disambiguate between paths.  Otherwise, ListLaunchPaths is not required, and the output of ProductViewSummary can be used directly with DescribeProvisioningParameters."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_artifact_parameters"
  type        = string
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  type        = string
}
variable "provisioning_artifact_parameters" {
  description = "(Required) Configuration block for provisioning artifact (i.e., version) parameters. Detailed below."
  type        = string
}
variable "support_url" {
  description = "(Optional) Contact URL for product support."
  type        = string
}
variable "distributor" {
  description = "(Optional) Distributor (i.e., vendor) of the product."
  type        = string
}
variable "id" {
  description = "Product ID. For example, prod-dnigbtea24ste."
  type        = string
}
variable "owner" {
  description = "(Required) Owner of the product."
  type        = string
}
variable "status" {
  description = "Status of the product."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "created_time" {
  description = "Time when the product was created."
  type        = string
}
variable "delete" {
  description = "(Default 5m)"
  type        = string
}
variable "type" {
  description = "(Optional) Type of provisioning artifact. Valid values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR (Marketplace Clusters and AWS Resources).In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "update" {
  description = "(Default 5m)"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact."
  type        = string
}
variable "read" {
  description = "(Default 10m)"
  type        = string
}
variable "template_url" {
  description = "(Required if template_physical_id is not provided) Template source as URL of the CloudFormation template in Amazon S3."
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
output "has_default_path" {
  description = "Whether the product has a default path. If the product does not have a default path, call ListLaunchPaths to disambiguate between paths.  Otherwise, ListLaunchPaths is not required, and the output of ProductViewSummary can be used directly with DescribeProvisioningParameters."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Name of the provisioning artifact (for example, v1, v2beta). No spaces are allowed."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_description" {
  description = "(Optional) Support information about the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_email" {
  description = "(Optional) Contact email for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "template_physical_id" {
  description = "(Required if template_url is not provided) Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.template_physical_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_template_validation" {
  description = "(Optional) Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.disable_template_validation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_url" {
  description = "(Optional) Contact URL for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Tags to apply to the product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_artifact_parameters"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.accept_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provisioning_artifact_parameters" {
  description = "(Required) Configuration block for provisioning artifact (i.e., version) parameters. Detailed below."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.provisioning_artifact_parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "distributor" {
  description = "(Optional) Distributor (i.e., vendor) of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.distributor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Product ID. For example, prod-dnigbtea24ste."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "(Required) Owner of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) Type of provisioning artifact. Valid values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR (Marketplace Clusters and AWS Resources).In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "template_url" {
  description = "(Required if template_physical_id is not provided) Template source as URL of the CloudFormation template in Amazon S3."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.template_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "has_default_path" {
  description = "Whether the product has a default path. If the product does not have a default path, call ListLaunchPaths to disambiguate between paths.  Otherwise, ListLaunchPaths is not required, and the output of ProductViewSummary can be used directly with DescribeProvisioningParameters."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Product ID. For example, prod-dnigbtea24ste."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags_all
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
      "kind/name"                   = "aws_servicecatalog_product"
      "kind/version"                = "v0.1.0"
    }
  }
}
