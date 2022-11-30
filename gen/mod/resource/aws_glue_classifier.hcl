resource "aws_glue_classifier" "aws_glue_classifier" {
  custom_patterns        = var.custom_patterns
  disable_value_trimming = var.disable_value_trimming
  grok_classifier        = var.grok_classifier
  name                   = var.name
  quote_symbol           = var.quote_symbol
  grok_pattern           = var.grok_pattern
  header                 = var.header
  xml_classifier         = var.xml_classifier
  allow_single_column    = var.allow_single_column
  classification         = var.classification
  contains_header        = var.contains_header
  json_classifier        = var.json_classifier
  row_tag                = var.row_tag
  csv_classifier         = var.csv_classifier
  delimiter              = var.delimiter
  json_path              = var.json_path
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "allow_single_column" {
  description = "(Optional) Enables the processing of files that contain only one column."
  type        = string
}
variable "classification" {
  description = "(Required) An identifier of the data format that the classifier matches."
  type        = string
}
variable "contains_header" {
  description = "(Optional) Indicates whether the CSV file contains a header. This can be one of \"ABSENT\", \"PRESENT\", or \"UNKNOWN\"."
  type        = string
}
variable "json_classifier" {
  description = " – (Optional) A classifier for JSON content. Defined below."
  type        = string
}
variable "row_tag" {
  description = "(Required) The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by />). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <row item_a=\"A\" item_b=\"B\"></row> is okay, but <row item_a=\"A\" item_b=\"B\" /> is not).In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "csv_classifier" {
  description = "(Optional) A classifier for Csv content. Defined below."
  type        = string
}
variable "delimiter" {
  description = "(Optional) The delimiter used in the Csv to separate columns."
  type        = string
}
variable "json_path" {
  description = "(Required) A JsonPath string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in Writing JsonPath Custom Classifiers.xml_classifier"
  type        = string
}
variable "custom_patterns" {
  description = "(Optional) Custom grok patterns used by this classifier."
  type        = string
}
variable "disable_value_trimming" {
  description = "(Optional) Specifies whether to trim column values."
  type        = string
}
variable "grok_classifier" {
  description = " – (Optional) A classifier that uses grok patterns. Defined below."
  type        = string
}
variable "name" {
  description = " – (Required) The name of the classifier."
  type        = string
}
variable "quote_symbol" {
  description = "(Optional) A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.grok_classifier"
  type        = string
}
variable "grok_pattern" {
  description = "(Required) The grok pattern used by this classifier.json_classifier"
  type        = string
}
variable "header" {
  description = "(Optional) A list of strings representing column names."
  type        = string
}
variable "xml_classifier" {
  description = " – (Optional) A classifier for XML content. Defined below.csv_classifier"
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
output "grok_pattern" {
  description = "(Required) The grok pattern used by this classifier.json_classifier"
  value       = aws_glue_classifier.aws_glue_classifier.grok_pattern
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header" {
  description = "(Optional) A list of strings representing column names."
  value       = aws_glue_classifier.aws_glue_classifier.header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "xml_classifier" {
  description = " – (Optional) A classifier for XML content. Defined below.csv_classifier"
  value       = aws_glue_classifier.aws_glue_classifier.xml_classifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_single_column" {
  description = "(Optional) Enables the processing of files that contain only one column."
  value       = aws_glue_classifier.aws_glue_classifier.allow_single_column
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "classification" {
  description = "(Required) An identifier of the data format that the classifier matches."
  value       = aws_glue_classifier.aws_glue_classifier.classification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "contains_header" {
  description = "(Optional) Indicates whether the CSV file contains a header. This can be one of \"ABSENT\", \"PRESENT\", or \"UNKNOWN\"."
  value       = aws_glue_classifier.aws_glue_classifier.contains_header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "json_classifier" {
  description = " – (Optional) A classifier for JSON content. Defined below."
  value       = aws_glue_classifier.aws_glue_classifier.json_classifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "row_tag" {
  description = "(Required) The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by />). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <row item_a=\"A\" item_b=\"B\"></row> is okay, but <row item_a=\"A\" item_b=\"B\" /> is not).In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_classifier.aws_glue_classifier.row_tag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "csv_classifier" {
  description = "(Optional) A classifier for Csv content. Defined below."
  value       = aws_glue_classifier.aws_glue_classifier.csv_classifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delimiter" {
  description = "(Optional) The delimiter used in the Csv to separate columns."
  value       = aws_glue_classifier.aws_glue_classifier.delimiter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "json_path" {
  description = "(Required) A JsonPath string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in Writing JsonPath Custom Classifiers.xml_classifier"
  value       = aws_glue_classifier.aws_glue_classifier.json_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_patterns" {
  description = "(Optional) Custom grok patterns used by this classifier."
  value       = aws_glue_classifier.aws_glue_classifier.custom_patterns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_value_trimming" {
  description = "(Optional) Specifies whether to trim column values."
  value       = aws_glue_classifier.aws_glue_classifier.disable_value_trimming
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grok_classifier" {
  description = " – (Optional) A classifier that uses grok patterns. Defined below."
  value       = aws_glue_classifier.aws_glue_classifier.grok_classifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = " – (Required) The name of the classifier."
  value       = aws_glue_classifier.aws_glue_classifier.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quote_symbol" {
  description = "(Optional) A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.grok_classifier"
  value       = aws_glue_classifier.aws_glue_classifier.quote_symbol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the classifier"
  value       = aws_glue_classifier.aws_glue_classifier.id
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
      "kind/name"                   = "aws_glue_classifier"
      "kind/version"                = "v0.1.0"
    }
  }
}
