resource "aws_glue_crawler" "aws_glue_crawler" {
  dynamodb_target          = var.dynamodb_target
  exclusions               = var.exclusions
  id                       = var.id
  security_configuration   = var.security_configuration
  arn                      = var.arn
  database_name            = var.database_name
  description              = var.description
  dlq_event_queue_arn      = var.dlq_event_queue_arn
  table_prefix             = var.table_prefix
  s3_target                = var.s3_target
  scan_all                 = var.scan_all
  tags                     = var.tags
  delete_behavior          = var.delete_behavior
  delta_tables             = var.delta_tables
  jdbc_target              = var.jdbc_target
  role                     = var.role
  configuration            = var.configuration
  mongodb_target           = var.mongodb_target
  sample_size              = var.sample_size
  scan_rate                = var.scan_rate
  connection_name          = var.connection_name
  event_queue_arn          = var.event_queue_arn
  lineage_configuration    = var.lineage_configuration
  recrawl_policy           = var.recrawl_policy
  name                     = var.name
  recrawl_behavior         = var.recrawl_behavior
  schedule                 = var.schedule
  write_manifest           = var.write_manifest
  crawler_lineage_settings = var.crawler_lineage_settings
  update_behavior          = var.update_behavior
  classifiers              = var.classifiers
  path                     = var.path
  schema_change_policy     = var.schema_change_policy
  tables                   = var.tables
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "classifiers" {
  description = " (Optional) List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification."
  type        = string
}
variable "path" {
  description = "(Required) The path of the Amazon DocumentDB or MongoDB target (database/collection)."
  type        = string
}
variable "schema_change_policy" {
  description = " (Optional) Policy for the crawler's update and deletion behavior. See Schema Change Policy below."
  type        = string
}
variable "tables" {
  description = "(Required) A list of catalog tables to be synchronized.~> strongNote: deletion_behavior of catalog target doesn't support DEPRECATE_IN_DATABASE.-> strongNote: configuration for catalog target crawlers will have { ... \"Grouping\": { \"TableGroupingPolicy\": \"CombineCompatibleSchemas\"} } by default.MongoDB Target"
  type        = string
}
variable "exclusions" {
  description = "(Optional) A list of glob patterns used to exclude from the crawl."
  type        = string
}
variable "id" {
  description = "Crawler name"
  type        = string
}
variable "security_configuration" {
  description = " (Optional) The name of Security Configuration to be used by the crawler"
  type        = string
}
variable "arn" {
  description = "The ARN of the crawler"
  type        = string
}
variable "database_name" {
  description = "(Required) The name of the Glue database to be synchronized."
  type        = string
}
variable "description" {
  description = " (Optional) Description of the crawler."
  type        = string
}
variable "dlq_event_queue_arn" {
  description = "(Optional) The ARN of the dead-letter SQS queue.Catalog Target"
  type        = string
}
variable "dynamodb_target" {
  description = " (Optional) List of nested DynamoDB target arguments. See Dynamodb Target below."
  type        = string
}
variable "table_prefix" {
  description = " (Optional) The table prefix used for catalog tables that are created."
  type        = string
}
variable "scan_all" {
  description = "(Optional) Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. Default value is true.Delta Target"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Dynamodb Target"
  type        = string
}
variable "delete_behavior" {
  description = "(Optional) The deletion behavior when the crawler finds a deleted object. Valid values: LOG, DELETE_FROM_DATABASE, or DEPRECATE_IN_DATABASE. Defaults to DEPRECATE_IN_DATABASE."
  type        = string
}
variable "delta_tables" {
  description = "(Required) A list of the Amazon S3 paths to the Delta tables."
  type        = string
}
variable "jdbc_target" {
  description = " (Optional) List of nested JBDC target arguments. See JDBC Target below."
  type        = string
}
variable "role" {
  description = " (Required) The IAM role friendly name (including path without leading slash), or ARN of an IAM role, used by the crawler to access other resources."
  type        = string
}
variable "s3_target" {
  description = " (Optional) List nested Amazon S3 target arguments. See S3 Target below."
  type        = string
}
variable "configuration" {
  description = " (Optional) JSON string of configuration information. For more details see Setting Crawler Configuration Options."
  type        = string
}
variable "mongodb_target" {
  description = " (Optional) List nested MongoDB target arguments. See MongoDB Target below."
  type        = string
}
variable "sample_size" {
  description = "(Optional) Sets the number of files in each leaf folder to be crawled when crawling sample files in a dataset. If not set, all the files are crawled. A valid value is an integer between 1 and 249."
  type        = string
}
variable "connection_name" {
  description = "(Required) The name of the connection to use to connect to the Delta table target."
  type        = string
}
variable "event_queue_arn" {
  description = "(Optional) The ARN of the SQS queue to receive S3 notifications from."
  type        = string
}
variable "lineage_configuration" {
  description = " (Optional) Specifies data lineage configuration settings for the crawler. See Lineage Configuration below."
  type        = string
}
variable "recrawl_policy" {
  description = " (Optional)  A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.. See Recrawl Policy below."
  type        = string
}
variable "scan_rate" {
  description = "(Optional) The percentage of the configured read capacity units to use by the AWS Glue crawler. The valid values are null or a value between 0.1 to 1.5.JDBC Target"
  type        = string
}
variable "name" {
  description = " (Required) Name of the crawler."
  type        = string
}
variable "recrawl_behavior" {
  description = "(Optional) Specifies whether to crawl the entire dataset again, crawl only folders that were added since the last crawler run, or crawl what S3 notifies the crawler of via SQS. Valid Values are: CRAWL_EVENT_MODE, CRAWL_EVERYTHING and CRAWL_NEW_FOLDERS_ONLY. Default value is CRAWL_EVERYTHING.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "schedule" {
  description = " (Optional) A cron expression used to specify the schedule. For more information, see Time-Based Schedules for Jobs and Crawlers. For example, to run something every day at 12:15 UTC, you would specify: cron(15 12 * * ? *)."
  type        = string
}
variable "write_manifest" {
  description = "(Required) Specifies whether to write the manifest files to the Delta table path.Schema Change Policy"
  type        = string
}
variable "crawler_lineage_settings" {
  description = "(Optional) Specifies whether data lineage is enabled for the crawler. Valid values are: ENABLE and DISABLE. Default value is Disable.Recrawl Policy"
  type        = string
}
variable "update_behavior" {
  description = "(Optional) The update behavior when the crawler finds a changed schema. Valid values: LOG or UPDATE_IN_DATABASE. Defaults to UPDATE_IN_DATABASE.Lineage Configuration"
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
output "classifiers" {
  description = " (Optional) List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification."
  value       = aws_glue_crawler.aws_glue_crawler.classifiers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "(Required) The path of the Amazon DocumentDB or MongoDB target (database/collection)."
  value       = aws_glue_crawler.aws_glue_crawler.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_change_policy" {
  description = " (Optional) Policy for the crawler's update and deletion behavior. See Schema Change Policy below."
  value       = aws_glue_crawler.aws_glue_crawler.schema_change_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tables" {
  description = "(Required) A list of catalog tables to be synchronized.~> strongNote: deletion_behavior of catalog target doesn't support DEPRECATE_IN_DATABASE.-> strongNote: configuration for catalog target crawlers will have { ... \"Grouping\": { \"TableGroupingPolicy\": \"CombineCompatibleSchemas\"} } by default.MongoDB Target"
  value       = aws_glue_crawler.aws_glue_crawler.tables
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Crawler name"
  value       = aws_glue_crawler.aws_glue_crawler.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_configuration" {
  description = " (Optional) The name of Security Configuration to be used by the crawler"
  value       = aws_glue_crawler.aws_glue_crawler.security_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the crawler"
  value       = aws_glue_crawler.aws_glue_crawler.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database_name" {
  description = "(Required) The name of the Glue database to be synchronized."
  value       = aws_glue_crawler.aws_glue_crawler.database_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = " (Optional) Description of the crawler."
  value       = aws_glue_crawler.aws_glue_crawler.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dlq_event_queue_arn" {
  description = "(Optional) The ARN of the dead-letter SQS queue.Catalog Target"
  value       = aws_glue_crawler.aws_glue_crawler.dlq_event_queue_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dynamodb_target" {
  description = " (Optional) List of nested DynamoDB target arguments. See Dynamodb Target below."
  value       = aws_glue_crawler.aws_glue_crawler.dynamodb_target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "exclusions" {
  description = "(Optional) A list of glob patterns used to exclude from the crawl."
  value       = aws_glue_crawler.aws_glue_crawler.exclusions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "table_prefix" {
  description = " (Optional) The table prefix used for catalog tables that are created."
  value       = aws_glue_crawler.aws_glue_crawler.table_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Dynamodb Target"
  value       = aws_glue_crawler.aws_glue_crawler.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_behavior" {
  description = "(Optional) The deletion behavior when the crawler finds a deleted object. Valid values: LOG, DELETE_FROM_DATABASE, or DEPRECATE_IN_DATABASE. Defaults to DEPRECATE_IN_DATABASE."
  value       = aws_glue_crawler.aws_glue_crawler.delete_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delta_tables" {
  description = "(Required) A list of the Amazon S3 paths to the Delta tables."
  value       = aws_glue_crawler.aws_glue_crawler.delta_tables
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "jdbc_target" {
  description = " (Optional) List of nested JBDC target arguments. See JDBC Target below."
  value       = aws_glue_crawler.aws_glue_crawler.jdbc_target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role" {
  description = " (Required) The IAM role friendly name (including path without leading slash), or ARN of an IAM role, used by the crawler to access other resources."
  value       = aws_glue_crawler.aws_glue_crawler.role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_target" {
  description = " (Optional) List nested Amazon S3 target arguments. See S3 Target below."
  value       = aws_glue_crawler.aws_glue_crawler.s3_target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scan_all" {
  description = "(Optional) Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. Default value is true.Delta Target"
  value       = aws_glue_crawler.aws_glue_crawler.scan_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration" {
  description = " (Optional) JSON string of configuration information. For more details see Setting Crawler Configuration Options."
  value       = aws_glue_crawler.aws_glue_crawler.configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mongodb_target" {
  description = " (Optional) List nested MongoDB target arguments. See MongoDB Target below."
  value       = aws_glue_crawler.aws_glue_crawler.mongodb_target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sample_size" {
  description = "(Optional) Sets the number of files in each leaf folder to be crawled when crawling sample files in a dataset. If not set, all the files are crawled. A valid value is an integer between 1 and 249."
  value       = aws_glue_crawler.aws_glue_crawler.sample_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_name" {
  description = "(Required) The name of the connection to use to connect to the Delta table target."
  value       = aws_glue_crawler.aws_glue_crawler.connection_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_queue_arn" {
  description = "(Optional) The ARN of the SQS queue to receive S3 notifications from."
  value       = aws_glue_crawler.aws_glue_crawler.event_queue_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lineage_configuration" {
  description = " (Optional) Specifies data lineage configuration settings for the crawler. See Lineage Configuration below."
  value       = aws_glue_crawler.aws_glue_crawler.lineage_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "recrawl_policy" {
  description = " (Optional)  A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.. See Recrawl Policy below."
  value       = aws_glue_crawler.aws_glue_crawler.recrawl_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scan_rate" {
  description = "(Optional) The percentage of the configured read capacity units to use by the AWS Glue crawler. The valid values are null or a value between 0.1 to 1.5.JDBC Target"
  value       = aws_glue_crawler.aws_glue_crawler.scan_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = " (Required) Name of the crawler."
  value       = aws_glue_crawler.aws_glue_crawler.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "recrawl_behavior" {
  description = "(Optional) Specifies whether to crawl the entire dataset again, crawl only folders that were added since the last crawler run, or crawl what S3 notifies the crawler of via SQS. Valid Values are: CRAWL_EVENT_MODE, CRAWL_EVERYTHING and CRAWL_NEW_FOLDERS_ONLY. Default value is CRAWL_EVERYTHING.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_crawler.aws_glue_crawler.recrawl_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schedule" {
  description = " (Optional) A cron expression used to specify the schedule. For more information, see Time-Based Schedules for Jobs and Crawlers. For example, to run something every day at 12:15 UTC, you would specify: cron(15 12 * * ? *)."
  value       = aws_glue_crawler.aws_glue_crawler.schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "write_manifest" {
  description = "(Required) Specifies whether to write the manifest files to the Delta table path.Schema Change Policy"
  value       = aws_glue_crawler.aws_glue_crawler.write_manifest
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "crawler_lineage_settings" {
  description = "(Optional) Specifies whether data lineage is enabled for the crawler. Valid values are: ENABLE and DISABLE. Default value is Disable.Recrawl Policy"
  value       = aws_glue_crawler.aws_glue_crawler.crawler_lineage_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update_behavior" {
  description = "(Optional) The update behavior when the crawler finds a changed schema. Valid values: LOG or UPDATE_IN_DATABASE. Defaults to UPDATE_IN_DATABASE.Lineage Configuration"
  value       = aws_glue_crawler.aws_glue_crawler.update_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the crawler"
  value       = aws_glue_crawler.aws_glue_crawler.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Crawler name"
  value       = aws_glue_crawler.aws_glue_crawler.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_glue_crawler.aws_glue_crawler.tags_all
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
      "kind/name"                   = "aws_glue_crawler"
      "kind/version"                = "v0.1.0"
    }
  }
}
