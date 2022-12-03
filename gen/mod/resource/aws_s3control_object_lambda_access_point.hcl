resource "aws_s3control_object_lambda_access_point" "aws_s3control_object_lambda_access_point" {
  function_arn                 = var.function_arn
  name                         = var.name
  allowed_features             = var.allowed_features
  content_transformation       = var.content_transformation
  arn                          = var.arn
  aws_lambda                   = var.aws_lambda
  cloud_watch_metrics_enabled  = var.cloud_watch_metrics_enabled
  configuration                = var.configuration
  function_payload             = var.function_payload
  supporting_access_point      = var.supporting_access_point
  account_id                   = var.account_id
  actions                      = var.actions
  transformation_configuration = var.transformation_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "aws_lambda" {
  description = "(Required) Configuration for an AWS Lambda function. See AWS Lambda below for more details.AWS LambdaThe aws_lambda block supports the following:"
  type        = string
}
variable "cloud_watch_metrics_enabled" {
  description = "(Optional) Whether or not the CloudWatch metrics configuration is enabled."
  type        = string
  default     = ""
}
variable "configuration" {
  description = "(Required) A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details."
  type        = string
}
variable "function_payload" {
  description = "(Optional) Additional JSON that provides supplemental data to the Lambda function used to transform objects.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "supporting_access_point" {
  description = "(Required) Standard access point associated with the Object Lambda Access Point."
  type        = string
}
variable "account_id" {
  description = "(Optional) The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the Terraform AWS provider."
  type        = string
  default     = ""
}
variable "actions" {
  description = "(Required) The actions of an Object Lambda Access Point configuration. Valid values: GetObject."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Object Lambda Access Point."
  type        = string
}
variable "transformation_configuration" {
  description = "(Required) List of transformation configurations for the Object Lambda Access Point. See Transformation Configuration below for more details.Transformation ConfigurationThe transformation_configuration block supports the following:"
  type        = string
}
variable "name" {
  description = "(Required) The name for this Object Lambda Access Point.ConfigurationThe configuration block supports the following:"
  type        = string
}
variable "allowed_features" {
  description = "(Optional) Allowed features. Valid values: GetObject-Range, GetObject-PartNumber."
  type        = string
  default     = ""
}
variable "content_transformation" {
  description = "(Required) The content transformation of an Object Lambda Access Point configuration. See Content Transformation below for more details.Content TransformationThe content_transformation block supports the following:"
  type        = string
}
variable "function_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the AWS Lambda function."
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
output "name" {
  description = "(Required) The name for this Object Lambda Access Point.ConfigurationThe configuration block supports the following:"
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.name
}
output "allowed_features" {
  description = "(Optional) Allowed features. Valid values: GetObject-Range, GetObject-PartNumber."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.allowed_features
}
output "content_transformation" {
  description = "(Required) The content transformation of an Object Lambda Access Point configuration. See Content Transformation below for more details.Content TransformationThe content_transformation block supports the following:"
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.content_transformation
}
output "function_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the AWS Lambda function."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.function_arn
}
output "aws_lambda" {
  description = "(Required) Configuration for an AWS Lambda function. See AWS Lambda below for more details.AWS LambdaThe aws_lambda block supports the following:"
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.aws_lambda
}
output "cloud_watch_metrics_enabled" {
  description = "(Optional) Whether or not the CloudWatch metrics configuration is enabled."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.cloud_watch_metrics_enabled
}
output "configuration" {
  description = "(Required) A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.configuration
}
output "function_payload" {
  description = "(Optional) Additional JSON that provides supplemental data to the Lambda function used to transform objects.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.function_payload
}
output "supporting_access_point" {
  description = "(Required) Standard access point associated with the Object Lambda Access Point."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.supporting_access_point
}
output "account_id" {
  description = "(Optional) The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the Terraform AWS provider."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.account_id
}
output "actions" {
  description = "(Required) The actions of an Object Lambda Access Point configuration. Valid values: GetObject."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.actions
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Object Lambda Access Point."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.arn
}
output "transformation_configuration" {
  description = "(Required) List of transformation configurations for the Object Lambda Access Point. See Transformation Configuration below for more details.Transformation ConfigurationThe transformation_configuration block supports the following:"
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.transformation_configuration
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Object Lambda Access Point."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.arn
}
output "id" {
  description = "The AWS account ID and access point name separated by a colon (:)."
  value       = aws_s3control_object_lambda_access_point.aws_s3control_object_lambda_access_point.id
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
      "kind/name"                   = "aws_s3control_object_lambda_access_point"
      "kind/version"                = "v0.1.0"
    }
  }
}
