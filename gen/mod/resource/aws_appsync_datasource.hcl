resource "aws_appsync_datasource" "aws_appsync_datasource" {
  db_cluster_identifier      = var.db_cluster_identifier
  description                = var.description
  dynamodb_config            = var.dynamodb_config
  elasticsearch_config       = var.elasticsearch_config
  function_arn               = var.function_arn
  http_config                = var.http_config
  http_endpoint_config       = var.http_endpoint_config
  api_id                     = var.api_id
  type                       = var.type
  use_caller_credentials     = var.use_caller_credentials
  service_role_arn           = var.service_role_arn
  lambda_config              = var.lambda_config
  signing_region             = var.signing_region
  endpoint                   = var.endpoint
  aws_secret_store_arn       = var.aws_secret_store_arn
  database_name              = var.database_name
  relational_database_config = var.relational_database_config
  signing_service_name       = var.signing_service_name
  table_name                 = var.table_name
  aws_iam_config             = var.aws_iam_config
  authorization_type         = var.authorization_type
  name                       = var.name
  region                     = var.region
  schema                     = var.schema
  source_type                = var.source_type
  authorization_config       = var.authorization_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "api_id" {
  description = "(Required) API ID for the GraphQL API for the data source."
  type        = string
}
variable "db_cluster_identifier" {
  description = "(Required) Amazon RDS cluster identifier."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the data source."
  type        = string
  default     = ""
}
variable "dynamodb_config" {
  description = "(Optional) DynamoDB settings. See below"
  type        = string
  default     = ""
}
variable "elasticsearch_config" {
  description = "(Optional) Amazon Elasticsearch settings. See below"
  type        = string
  default     = ""
}
variable "function_arn" {
  description = "(Required) ARN for the Lambda function.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "http_config" {
  description = "(Optional) HTTP settings. See below"
  type        = string
  default     = ""
}
variable "http_endpoint_config" {
  description = "(Required) Amazon RDS HTTP endpoint configuration. See HTTP Endpoint Config."
  type        = string
}
variable "service_role_arn" {
  description = "(Optional) IAM service role ARN for the data source."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type of the Data Source. Valid values: AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, HTTP, NONE, RELATIONAL_DATABASE."
  type        = string
}
variable "use_caller_credentials" {
  description = "(Optional) Set to true to use Amazon Cognito credentials with this data source.elasticsearch_config"
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "(Required) HTTP URL."
  type        = string
}
variable "lambda_config" {
  description = "(Optional) AWS Lambda settings. See below"
  type        = string
  default     = ""
}
variable "signing_region" {
  description = "(Optional) Signing Amazon Web Services Region for IAM authorization."
  type        = string
  default     = ""
}
variable "aws_iam_config" {
  description = "(Optional) Identity and Access Management (IAM) settings. See AWS IAM Config.aws_iam_config"
  type        = string
  default     = ""
}
variable "aws_secret_store_arn" {
  description = "(Required) AWS secret store ARN for database credentials."
  type        = string
}
variable "database_name" {
  description = "(Optional) Logical database name."
  type        = string
  default     = ""
}
variable "relational_database_config" {
  description = " (Optional) AWS RDS settings. See Relational Database Configdynamodb_config"
  type        = string
  default     = ""
}
variable "signing_service_name" {
  description = "- (Optional) Signing service name for IAM authorization.relational_database_config"
  type        = string
  default     = ""
}
variable "table_name" {
  description = "(Required) Name of the DynamoDB table."
  type        = string
}
variable "authorization_config" {
  description = "(Optional) Authorization configuration in case the HTTP endpoint requires authorization. See Authorization Config.authorization_config"
  type        = string
  default     = ""
}
variable "authorization_type" {
  description = "(Optional) Authorization type that the HTTP endpoint requires. Default values is AWS_IAM."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) User-supplied name for the data source."
  type        = string
}
variable "region" {
  description = "(Optional) AWS Region for RDS HTTP endpoint. Defaults to current region."
  type        = string
  default     = ""
}
variable "schema" {
  description = "(Optional) Logical schema name.lambda_config"
  type        = string
  default     = ""
}
variable "source_type" {
  description = "(Optional) Source type for the relational database. Valid values: RDS_HTTP_ENDPOINT.http_endpoint_config"
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
output "db_cluster_identifier" {
  description = "(Required) Amazon RDS cluster identifier."
  value       = aws_appsync_datasource.aws_appsync_datasource.db_cluster_identifier
}
output "description" {
  description = "(Optional) Description of the data source."
  value       = aws_appsync_datasource.aws_appsync_datasource.description
}
output "dynamodb_config" {
  description = "(Optional) DynamoDB settings. See below"
  value       = aws_appsync_datasource.aws_appsync_datasource.dynamodb_config
}
output "elasticsearch_config" {
  description = "(Optional) Amazon Elasticsearch settings. See below"
  value       = aws_appsync_datasource.aws_appsync_datasource.elasticsearch_config
}
output "function_arn" {
  description = "(Required) ARN for the Lambda function.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appsync_datasource.aws_appsync_datasource.function_arn
}
output "http_config" {
  description = "(Optional) HTTP settings. See below"
  value       = aws_appsync_datasource.aws_appsync_datasource.http_config
}
output "http_endpoint_config" {
  description = "(Required) Amazon RDS HTTP endpoint configuration. See HTTP Endpoint Config."
  value       = aws_appsync_datasource.aws_appsync_datasource.http_endpoint_config
}
output "api_id" {
  description = "(Required) API ID for the GraphQL API for the data source."
  value       = aws_appsync_datasource.aws_appsync_datasource.api_id
}
output "type" {
  description = "(Required) Type of the Data Source. Valid values: AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, HTTP, NONE, RELATIONAL_DATABASE."
  value       = aws_appsync_datasource.aws_appsync_datasource.type
}
output "use_caller_credentials" {
  description = "(Optional) Set to true to use Amazon Cognito credentials with this data source.elasticsearch_config"
  value       = aws_appsync_datasource.aws_appsync_datasource.use_caller_credentials
}
output "service_role_arn" {
  description = "(Optional) IAM service role ARN for the data source."
  value       = aws_appsync_datasource.aws_appsync_datasource.service_role_arn
}
output "lambda_config" {
  description = "(Optional) AWS Lambda settings. See below"
  value       = aws_appsync_datasource.aws_appsync_datasource.lambda_config
}
output "signing_region" {
  description = "(Optional) Signing Amazon Web Services Region for IAM authorization."
  value       = aws_appsync_datasource.aws_appsync_datasource.signing_region
}
output "endpoint" {
  description = "(Required) HTTP URL."
  value       = aws_appsync_datasource.aws_appsync_datasource.endpoint
}
output "aws_secret_store_arn" {
  description = "(Required) AWS secret store ARN for database credentials."
  value       = aws_appsync_datasource.aws_appsync_datasource.aws_secret_store_arn
}
output "database_name" {
  description = "(Optional) Logical database name."
  value       = aws_appsync_datasource.aws_appsync_datasource.database_name
}
output "relational_database_config" {
  description = " (Optional) AWS RDS settings. See Relational Database Configdynamodb_config"
  value       = aws_appsync_datasource.aws_appsync_datasource.relational_database_config
}
output "signing_service_name" {
  description = "- (Optional) Signing service name for IAM authorization.relational_database_config"
  value       = aws_appsync_datasource.aws_appsync_datasource.signing_service_name
}
output "table_name" {
  description = "(Required) Name of the DynamoDB table."
  value       = aws_appsync_datasource.aws_appsync_datasource.table_name
}
output "aws_iam_config" {
  description = "(Optional) Identity and Access Management (IAM) settings. See AWS IAM Config.aws_iam_config"
  value       = aws_appsync_datasource.aws_appsync_datasource.aws_iam_config
}
output "authorization_type" {
  description = "(Optional) Authorization type that the HTTP endpoint requires. Default values is AWS_IAM."
  value       = aws_appsync_datasource.aws_appsync_datasource.authorization_type
}
output "name" {
  description = "(Required) User-supplied name for the data source."
  value       = aws_appsync_datasource.aws_appsync_datasource.name
}
output "region" {
  description = "(Optional) AWS Region for RDS HTTP endpoint. Defaults to current region."
  value       = aws_appsync_datasource.aws_appsync_datasource.region
}
output "schema" {
  description = "(Optional) Logical schema name.lambda_config"
  value       = aws_appsync_datasource.aws_appsync_datasource.schema
}
output "source_type" {
  description = "(Optional) Source type for the relational database. Valid values: RDS_HTTP_ENDPOINT.http_endpoint_config"
  value       = aws_appsync_datasource.aws_appsync_datasource.source_type
}
output "authorization_config" {
  description = "(Optional) Authorization configuration in case the HTTP endpoint requires authorization. See Authorization Config.authorization_config"
  value       = aws_appsync_datasource.aws_appsync_datasource.authorization_config
}
output "arn" {
  description = "ARN"
  value       = aws_appsync_datasource.aws_appsync_datasource.arn
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
      "kind/name"                   = "aws_appsync_datasource"
      "kind/version"                = "v0.1.0"
    }
  }
}
