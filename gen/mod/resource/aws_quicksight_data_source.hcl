resource "aws_quicksight_data_source" "aws_quicksight_data_source" {
  query                     = var.query
  tags                      = var.tags
  tags_all                  = var.tags_all
  vpc_connection_properties = var.vpc_connection_properties
  password                  = var.password
  warehouse                 = var.warehouse
  sql_server                = var.sql_server
  aurora_postgresql         = var.aurora_postgresql
  max_rows                  = var.max_rows
  ssl_properties            = var.ssl_properties
  bucket                    = var.bucket
  manifest_file_location    = var.manifest_file_location
  parameters                = var.parameters
  teradata                  = var.teradata
  vpc_connection_arn        = var.vpc_connection_arn
  arn                       = var.arn
  key                       = var.key
  postgresql                = var.postgresql
  data_set_name             = var.data_set_name
  database                  = var.database
  username                  = var.username
  aurora                    = var.aurora
  name                      = var.name
  oracle                    = var.oracle
  instance_id               = var.instance_id
  catalog                   = var.catalog
  credential_pair           = var.credential_pair
  host                      = var.host
  redshift                  = var.redshift
  aws_account_id            = var.aws_account_id
  domain                    = var.domain
  rds                       = var.rds
  snowflake                 = var.snowflake
  athena                    = var.athena
  copy_source_arn           = var.copy_source_arn
  data_source_id            = var.data_source_id
  port                      = var.port
  s3                        = var.s3
  site_base_url             = var.site_base_url
  actions                   = var.actions
  type                      = var.type
  permission                = var.permission
  presto                    = var.presto
  service_now               = var.service_now
  spark                     = var.spark
  twitter                   = var.twitter
  credentials               = var.credentials
  work_group                = var.work_group
  disable_ssl               = var.disable_ssl
  jira                      = var.jira
  mysql                     = var.mysql
  principal                 = var.principal
  cluster_id                = var.cluster_id
  aws_iot_analytics         = var.aws_iot_analytics
  maria_db                  = var.maria_db
  amazon_elasticsearch      = var.amazon_elasticsearch
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "instance_id" {
  description = "(Optional) The instance ID to which to connect.redshift Argument Reference"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) A name for the data source, maximum of 128 characters."
  type        = string
}
variable "oracle" {
  description = "(Optional) Parameters for connecting to Oracle."
  type        = string
  default     = ""
}
variable "aws_account_id" {
  description = "(Optional, Forces new resource) The ID for the AWS account that the data source is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account."
  type        = string
  default     = ""
}
variable "catalog" {
  description = "(Required) The catalog to which to connect."
  type        = string
}
variable "credential_pair" {
  description = " (Optional, Conflicts with copy_source_arn) - Credential pair. See Credential Pair below for more details.credential_pair Argument Reference"
  type        = string
  default     = ""
}
variable "host" {
  description = "(Required) The host to which to connect."
  type        = string
}
variable "redshift" {
  description = "(Optional) Parameters for connecting to Redshift."
  type        = string
  default     = ""
}
variable "athena" {
  description = "(Optional) Parameters for connecting to Athena."
  type        = string
  default     = ""
}
variable "domain" {
  description = "(Required) The OpenSearch domain.athena Argument Reference"
  type        = string
}
variable "rds" {
  description = "(Optional) Parameters for connecting to RDS."
  type        = string
  default     = ""
}
variable "snowflake" {
  description = "(Optional) Parameters for connecting to Snowflake."
  type        = string
  default     = ""
}
variable "actions" {
  description = "(Required) Set of IAM actions to grant or revoke permissions on. Max of 16 items."
  type        = string
}
variable "copy_source_arn" {
  description = " (Optional, Conflicts with credential_paircredential_pair from the data source in the ARN is used."
  type        = string
  default     = ""
}
variable "data_source_id" {
  description = "(Required, Forces new resource) An identifier for the data source."
  type        = string
}
variable "port" {
  description = "(Required) The warehouse to which to connect.twitter Argument Reference"
  type        = string
}
variable "s3" {
  description = "(Optional) Parameters for connecting to S3."
  type        = string
  default     = ""
}
variable "site_base_url" {
  description = "(Required) The base URL of the Jira instance's site to which to connect.snowflake Argument Reference"
  type        = string
}
variable "type" {
  description = "(Required) The type of the data source. See the AWS Documentation for the complete list of valid values."
  type        = string
}
variable "permission" {
  description = "(Optional) A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details."
  type        = string
  default     = ""
}
variable "credentials" {
  description = "(Optional) The credentials Amazon QuickSight uses to connect to your underlying source. Currently, only credentials based on user name and password are supported. See Credentials below for more details."
  type        = string
  default     = ""
}
variable "presto" {
  description = "(Optional) Parameters for connecting to Presto."
  type        = string
  default     = ""
}
variable "service_now" {
  description = "(Optional) Parameters for connecting to ServiceNow."
  type        = string
  default     = ""
}
variable "spark" {
  description = "(Optional) Parameters for connecting to Spark."
  type        = string
  default     = ""
}
variable "twitter" {
  description = "(Optional) Parameters for connecting to Twitter.permission Argument Reference"
  type        = string
  default     = ""
}
variable "work_group" {
  description = "(Optional) The work-group to which to connect.aurora Argument Reference"
  type        = string
  default     = ""
}
variable "cluster_id" {
  description = "(Optional, Required if host and port are not provided) The ID of the cluster to which to connect."
  type        = string
  default     = ""
}
variable "disable_ssl" {
  description = "(Required) A Boolean option to control whether SSL should be disabled.vpc_connection_properties Argument Reference"
  type        = string
}
variable "jira" {
  description = "(Optional) Parameters for connecting to Jira."
  type        = string
  default     = ""
}
variable "mysql" {
  description = "(Optional) Parameters for connecting to MySQL."
  type        = string
  default     = ""
}
variable "principal" {
  description = "(Required) The Amazon Resource Name (ARN) of the principal.ssl_properties Argument Reference"
  type        = string
}
variable "amazon_elasticsearch" {
  description = "(Optional) Parameters for connecting to Amazon Elasticsearch."
  type        = string
  default     = ""
}
variable "aws_iot_analytics" {
  description = "(Optional) Parameters for connecting to AWS IOT Analytics."
  type        = string
  default     = ""
}
variable "maria_db" {
  description = "(Optional) Parameters for connecting to MariaDB."
  type        = string
  default     = ""
}
variable "password" {
  description = "(Required) Password, maximum length of 1024 characters."
  type        = string
}
variable "query" {
  description = "(Required) The Twitter query to retrieve the data.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "vpc_connection_properties" {
  description = "- (Optional) Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.credentials Argument Reference"
  type        = string
  default     = ""
}
variable "sql_server" {
  description = "(Optional) Parameters for connecting to SQL Server."
  type        = string
  default     = ""
}
variable "warehouse" {
  description = "(Required) The warehouse to which to connect.spark Argument Reference"
  type        = string
}
variable "aurora_postgresql" {
  description = "(Optional) Parameters for connecting to Aurora Postgresql."
  type        = string
  default     = ""
}
variable "max_rows" {
  description = "(Required) The maximum number of rows to query."
  type        = string
}
variable "ssl_properties" {
  description = "(Optional) Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the data source"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) The name of the bucket that contains the manifest file."
  type        = string
}
variable "manifest_file_location" {
  description = "(Required) An object containing the S3 location of the S3 manifest file.manifest_file_location Argument Reference"
  type        = string
}
variable "parameters" {
  description = "(Required) The parameters used to connect to this data source (exactly one)."
  type        = string
}
variable "teradata" {
  description = "(Optional) Parameters for connecting to Teradata."
  type        = string
  default     = ""
}
variable "vpc_connection_arn" {
  description = "(Required) The Amazon Resource Name (ARN) for the VPC connection.amazon_elasticsearch Argument Reference"
  type        = string
}
variable "data_set_name" {
  description = "(Required) The name of the data set to which to connect.jira fArgument Reference"
  type        = string
}
variable "key" {
  description = "(Required) The key of the manifest file within the bucket.service_now Argument Reference"
  type        = string
}
variable "postgresql" {
  description = "(Optional) Parameters for connecting to Postgresql."
  type        = string
  default     = ""
}
variable "aurora" {
  description = "(Optional) Parameters for connecting to Aurora MySQL."
  type        = string
  default     = ""
}
variable "database" {
  description = "(Required) The database to which to connect."
  type        = string
}
variable "username" {
  description = "(Required) User name, maximum length of 64 characters.parameters Argument ReferenceTo specify data source connection parameters, exactly one of the following sub-objects must be provided."
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
output "permission" {
  description = "(Optional) A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.permission
}
output "twitter" {
  description = "(Optional) Parameters for connecting to Twitter.permission Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.twitter
}
output "credentials" {
  description = "(Optional) The credentials Amazon QuickSight uses to connect to your underlying source. Currently, only credentials based on user name and password are supported. See Credentials below for more details."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.credentials
}
output "presto" {
  description = "(Optional) Parameters for connecting to Presto."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.presto
}
output "service_now" {
  description = "(Optional) Parameters for connecting to ServiceNow."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.service_now
}
output "spark" {
  description = "(Optional) Parameters for connecting to Spark."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.spark
}
output "work_group" {
  description = "(Optional) The work-group to which to connect.aurora Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.work_group
}
output "principal" {
  description = "(Required) The Amazon Resource Name (ARN) of the principal.ssl_properties Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.principal
}
output "cluster_id" {
  description = "(Optional, Required if host and port are not provided) The ID of the cluster to which to connect."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.cluster_id
}
output "disable_ssl" {
  description = "(Required) A Boolean option to control whether SSL should be disabled.vpc_connection_properties Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.disable_ssl
}
output "jira" {
  description = "(Optional) Parameters for connecting to Jira."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.jira
}
output "mysql" {
  description = "(Optional) Parameters for connecting to MySQL."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.mysql
}
output "amazon_elasticsearch" {
  description = "(Optional) Parameters for connecting to Amazon Elasticsearch."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.amazon_elasticsearch
}
output "aws_iot_analytics" {
  description = "(Optional) Parameters for connecting to AWS IOT Analytics."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.aws_iot_analytics
}
output "maria_db" {
  description = "(Optional) Parameters for connecting to MariaDB."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.maria_db
}
output "vpc_connection_properties" {
  description = "- (Optional) Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.credentials Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.vpc_connection_properties
}
output "password" {
  description = "(Required) Password, maximum length of 1024 characters."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.password
}
output "query" {
  description = "(Required) The Twitter query to retrieve the data.In addition to all arguments above, the following attributes are exported:"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.query
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.tags_all
}
output "sql_server" {
  description = "(Optional) Parameters for connecting to SQL Server."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.sql_server
}
output "warehouse" {
  description = "(Required) The warehouse to which to connect.spark Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.warehouse
}
output "max_rows" {
  description = "(Required) The maximum number of rows to query."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.max_rows
}
output "aurora_postgresql" {
  description = "(Optional) Parameters for connecting to Aurora Postgresql."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.aurora_postgresql
}
output "ssl_properties" {
  description = "(Optional) Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.ssl_properties
}
output "teradata" {
  description = "(Optional) Parameters for connecting to Teradata."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.teradata
}
output "vpc_connection_arn" {
  description = "(Required) The Amazon Resource Name (ARN) for the VPC connection.amazon_elasticsearch Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.vpc_connection_arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the data source"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.arn
}
output "bucket" {
  description = "(Required) The name of the bucket that contains the manifest file."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.bucket
}
output "manifest_file_location" {
  description = "(Required) An object containing the S3 location of the S3 manifest file.manifest_file_location Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.manifest_file_location
}
output "parameters" {
  description = "(Required) The parameters used to connect to this data source (exactly one)."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.parameters
}
output "data_set_name" {
  description = "(Required) The name of the data set to which to connect.jira fArgument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.data_set_name
}
output "key" {
  description = "(Required) The key of the manifest file within the bucket.service_now Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.key
}
output "postgresql" {
  description = "(Optional) Parameters for connecting to Postgresql."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.postgresql
}
output "aurora" {
  description = "(Optional) Parameters for connecting to Aurora MySQL."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.aurora
}
output "database" {
  description = "(Required) The database to which to connect."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.database
}
output "username" {
  description = "(Required) User name, maximum length of 64 characters.parameters Argument ReferenceTo specify data source connection parameters, exactly one of the following sub-objects must be provided."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.username
}
output "instance_id" {
  description = "(Optional) The instance ID to which to connect.redshift Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.instance_id
}
output "name" {
  description = "(Required) A name for the data source, maximum of 128 characters."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.name
}
output "oracle" {
  description = "(Optional) Parameters for connecting to Oracle."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.oracle
}
output "redshift" {
  description = "(Optional) Parameters for connecting to Redshift."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.redshift
}
output "aws_account_id" {
  description = "(Optional, Forces new resource) The ID for the AWS account that the data source is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.aws_account_id
}
output "catalog" {
  description = "(Required) The catalog to which to connect."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.catalog
}
output "credential_pair" {
  description = " (Optional, Conflicts with copy_source_arn) - Credential pair. See Credential Pair below for more details.credential_pair Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.credential_pair
}
output "host" {
  description = "(Required) The host to which to connect."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.host
}
output "athena" {
  description = "(Optional) Parameters for connecting to Athena."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.athena
}
output "domain" {
  description = "(Required) The OpenSearch domain.athena Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.domain
}
output "rds" {
  description = "(Optional) Parameters for connecting to RDS."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.rds
}
output "snowflake" {
  description = "(Optional) Parameters for connecting to Snowflake."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.snowflake
}
output "port" {
  description = "(Required) The warehouse to which to connect.twitter Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.port
}
output "s3" {
  description = "(Optional) Parameters for connecting to S3."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.s3
}
output "site_base_url" {
  description = "(Required) The base URL of the Jira instance's site to which to connect.snowflake Argument Reference"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.site_base_url
}
output "actions" {
  description = "(Required) Set of IAM actions to grant or revoke permissions on. Max of 16 items."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.actions
}
output "copy_source_arn" {
  description = " (Optional, Conflicts with credential_paircredential_pair from the data source in the ARN is used."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.copy_source_arn
}
output "data_source_id" {
  description = "(Required, Forces new resource) An identifier for the data source."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.data_source_id
}
output "type" {
  description = "(Required) The type of the data source. See the AWS Documentation for the complete list of valid values."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.type
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the data source"
  value       = aws_quicksight_data_source.aws_quicksight_data_source.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_quicksight_data_source.aws_quicksight_data_source.tags_all
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
      "kind/name"                   = "aws_quicksight_data_source"
      "kind/version"                = "v0.1.0"
    }
  }
}
