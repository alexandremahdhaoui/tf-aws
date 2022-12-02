datasource "aws_kendra_experience" "aws_kendra_experience" {
  data_source_ids              = var.data_source_ids
  error_message                = var.error_message
  updated_at                   = var.updated_at
  endpoint                     = var.endpoint
  id                           = var.id
  role_arn                     = var.role_arn
  status                       = var.status
  arn                          = var.arn
  configuration                = var.configuration
  content_source_configuration = var.content_source_configuration
  direct_put_content           = var.direct_put_content
  faq_ids                      = var.faq_ids
  name                         = var.name
  user_identity_configuration  = var.user_identity_configuration
  created_at                   = var.created_at
  description                  = var.description
  endpoints                    = var.endpoints
  experience_id                = var.experience_id
  identity_attribute_name      = var.identity_attribute_name
  index_id                     = var.index_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "user_identity_configuration" {
  description = "The AWS SSO field name that contains the identifiers of your users, such as their emails. Documented below.The content_source_configuration block supports the following attributes:"
  type        = string
}
variable "created_at" {
  description = "Unix datetime that the Experience was created."
  type        = string
}
variable "description" {
  description = "Description of the Experience."
  type        = string
}
variable "endpoints" {
  description = "Shows the endpoint URLs for your Amazon Kendra Experiences. The URLs are unique and fully hosted by AWS. Documented below."
  type        = string
}
variable "experience_id" {
  description = "(Required) Identifier of the Experience."
  type        = string
}
variable "identity_attribute_name" {
  description = "The AWS SSO field name that contains the identifiers of your users, such as their emails.The endpoints block supports the following attributes:"
  type        = string
}
variable "index_id" {
  description = "(Required) Identifier of the index that contains the Experience.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "Name of the Experience."
  type        = string
}
variable "data_source_ids" {
  description = "Identifiers of the data sources you want to use for your Amazon Kendra Experience."
  type        = string
}
variable "error_message" {
  description = "Reason your Amazon Kendra Experience could not properly process."
  type        = string
}
variable "updated_at" {
  description = "Date and time that the Experience was last updated.The configuration block supports the following attributes:"
  type        = string
}
variable "endpoint" {
  description = "Endpoint of your Amazon Kendra Experience."
  type        = string
}
variable "id" {
  description = "Unique identifiers of the Experience and index separated by a slash (/)."
  type        = string
}
variable "role_arn" {
  description = "Shows the ARN of a role with permission to access Query API, QuerySuggestions API, SubmitFeedback API, and AWS SSO that stores your user and group information."
  type        = string
}
variable "status" {
  description = "Current processing status of your Amazon Kendra Experience. When the status is ACTIVE, your Amazon Kendra Experience is ready to use. When the status is FAILED, the error_message field contains the reason that this failed."
  type        = string
}
variable "arn" {
  description = "ARN of the Experience."
  type        = string
}
variable "configuration" {
  description = "Block that specifies the configuration information for your Amazon Kendra Experience. This includes content_source_configuration, which specifies the data source IDs and/or FAQ IDs, and user_identity_configuration, which specifies the user or group information to grant access to your Amazon Kendra Experience. Documented below."
  type        = string
}
variable "content_source_configuration" {
  description = "The identifiers of your data sources and FAQs. This is the content you want to use for your Amazon Kendra Experience. Documented below."
  type        = string
}
variable "direct_put_content" {
  description = "Whether to use documents you indexed directly using the BatchPutDocument API."
  type        = string
}
variable "faq_ids" {
  description = "Identifier of the FAQs that you want to use for your Amazon Kendra Experience.The user_identity_configuration block supports the following attributes:"
  type        = string
}
output "arn" {
  description = "ARN of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.arn
}
output "configuration" {
  description = "Block that specifies the configuration information for your Amazon Kendra Experience. This includes content_source_configuration, which specifies the data source IDs and/or FAQ IDs, and user_identity_configuration, which specifies the user or group information to grant access to your Amazon Kendra Experience. Documented below."
  value       = aws_kendra_experience.aws_kendra_experience.configuration
}
output "content_source_configuration" {
  description = "The identifiers of your data sources and FAQs. This is the content you want to use for your Amazon Kendra Experience. Documented below."
  value       = aws_kendra_experience.aws_kendra_experience.content_source_configuration
}
output "direct_put_content" {
  description = "Whether to use documents you indexed directly using the BatchPutDocument API."
  value       = aws_kendra_experience.aws_kendra_experience.direct_put_content
}
output "faq_ids" {
  description = "Identifier of the FAQs that you want to use for your Amazon Kendra Experience.The user_identity_configuration block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.faq_ids
}
output "created_at" {
  description = "Unix datetime that the Experience was created."
  value       = aws_kendra_experience.aws_kendra_experience.created_at
}
output "description" {
  description = "Description of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.description
}
output "endpoints" {
  description = "Shows the endpoint URLs for your Amazon Kendra Experiences. The URLs are unique and fully hosted by AWS. Documented below."
  value       = aws_kendra_experience.aws_kendra_experience.endpoints
}
output "experience_id" {
  description = "(Required) Identifier of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.experience_id
}
output "identity_attribute_name" {
  description = "The AWS SSO field name that contains the identifiers of your users, such as their emails.The endpoints block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.identity_attribute_name
}
output "index_id" {
  description = "(Required) Identifier of the index that contains the Experience.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_kendra_experience.aws_kendra_experience.index_id
}
output "name" {
  description = "Name of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.name
}
output "user_identity_configuration" {
  description = "The AWS SSO field name that contains the identifiers of your users, such as their emails. Documented below.The content_source_configuration block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.user_identity_configuration
}
output "data_source_ids" {
  description = "Identifiers of the data sources you want to use for your Amazon Kendra Experience."
  value       = aws_kendra_experience.aws_kendra_experience.data_source_ids
}
output "error_message" {
  description = "Reason your Amazon Kendra Experience could not properly process."
  value       = aws_kendra_experience.aws_kendra_experience.error_message
}
output "updated_at" {
  description = "Date and time that the Experience was last updated.The configuration block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.updated_at
}
output "endpoint" {
  description = "Endpoint of your Amazon Kendra Experience."
  value       = aws_kendra_experience.aws_kendra_experience.endpoint
}
output "id" {
  description = "Unique identifiers of the Experience and index separated by a slash (/)."
  value       = aws_kendra_experience.aws_kendra_experience.id
}
output "role_arn" {
  description = "Shows the ARN of a role with permission to access Query API, QuerySuggestions API, SubmitFeedback API, and AWS SSO that stores your user and group information."
  value       = aws_kendra_experience.aws_kendra_experience.role_arn
}
output "status" {
  description = "Current processing status of your Amazon Kendra Experience. When the status is ACTIVE, your Amazon Kendra Experience is ready to use. When the status is FAILED, the error_message field contains the reason that this failed."
  value       = aws_kendra_experience.aws_kendra_experience.status
}
output "status" {
  description = "Current processing status of your Amazon Kendra Experience. When the status is ACTIVE, your Amazon Kendra Experience is ready to use. When the status is FAILED, the error_message field contains the reason that this failed."
  value       = aws_kendra_experience.aws_kendra_experience.status
}
output "content_source_configuration" {
  description = "The identifiers of your data sources and FAQs. This is the content you want to use for your Amazon Kendra Experience. Documented below."
  value       = aws_kendra_experience.aws_kendra_experience.content_source_configuration
}
output "data_source_ids" {
  description = "Identifiers of the data sources you want to use for your Amazon Kendra Experience."
  value       = aws_kendra_experience.aws_kendra_experience.data_source_ids
}
output "direct_put_content" {
  description = "Whether to use documents you indexed directly using the BatchPutDocument API."
  value       = aws_kendra_experience.aws_kendra_experience.direct_put_content
}
output "id" {
  description = "Unique identifiers of the Experience and index separated by a slash (/)."
  value       = aws_kendra_experience.aws_kendra_experience.id
}
output "arn" {
  description = "ARN of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.arn
}
output "error_message" {
  description = "Reason your Amazon Kendra Experience could not properly process."
  value       = aws_kendra_experience.aws_kendra_experience.error_message
}
output "updated_at" {
  description = "Date and time that the Experience was last updated.The configuration block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.updated_at
}
output "role_arn" {
  description = "Shows the ARN of a role with permission to access Query API, QuerySuggestions API, SubmitFeedback API, and AWS SSO that stores your user and group information."
  value       = aws_kendra_experience.aws_kendra_experience.role_arn
}
output "user_identity_configuration" {
  description = "The AWS SSO field name that contains the identifiers of your users, such as their emails. Documented below.The content_source_configuration block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.user_identity_configuration
}
output "description" {
  description = "Description of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.description
}
output "endpoint" {
  description = "Endpoint of your Amazon Kendra Experience."
  value       = aws_kendra_experience.aws_kendra_experience.endpoint
}
output "identity_attribute_name" {
  description = "The AWS SSO field name that contains the identifiers of your users, such as their emails.The endpoints block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.identity_attribute_name
}
output "name" {
  description = "Name of the Experience."
  value       = aws_kendra_experience.aws_kendra_experience.name
}
output "configuration" {
  description = "Block that specifies the configuration information for your Amazon Kendra Experience. This includes content_source_configuration, which specifies the data source IDs and/or FAQ IDs, and user_identity_configuration, which specifies the user or group information to grant access to your Amazon Kendra Experience. Documented below."
  value       = aws_kendra_experience.aws_kendra_experience.configuration
}
output "created_at" {
  description = "Unix datetime that the Experience was created."
  value       = aws_kendra_experience.aws_kendra_experience.created_at
}
output "endpoints" {
  description = "Shows the endpoint URLs for your Amazon Kendra Experiences. The URLs are unique and fully hosted by AWS. Documented below."
  value       = aws_kendra_experience.aws_kendra_experience.endpoints
}
output "faq_ids" {
  description = "Identifier of the FAQs that you want to use for your Amazon Kendra Experience.The user_identity_configuration block supports the following attributes:"
  value       = aws_kendra_experience.aws_kendra_experience.faq_ids
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
