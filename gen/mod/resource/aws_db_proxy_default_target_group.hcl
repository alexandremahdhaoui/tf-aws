resource "aws_db_proxy_default_target_group" "aws_db_proxy_default_target_group" {
  arn                          = var.arn
  db_proxy_name                = var.db_proxy_name
  max_connections_percent      = var.max_connections_percent
  name                         = var.name
  session_pinning_filters      = var.session_pinning_filters
  connection_borrow_timeout    = var.connection_borrow_timeout
  connection_pool_config       = var.connection_pool_config
  create                       = var.create
  id                           = var.id
  init_query                   = var.init_query
  max_idle_connections_percent = var.max_idle_connections_percent
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) representing the target group."
  type        = string
}
variable "db_proxy_name" {
  description = "(Required) Name of the RDS DB Proxy."
  type        = string
}
variable "max_connections_percent" {
  description = "(Optional) The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group."
  type        = string
}
variable "name" {
  description = "The name of the default target group.TimeoutsConfiguration options:"
  type        = string
}
variable "max_idle_connections_percent" {
  description = "(Optional) Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group."
  type        = string
}
variable "session_pinning_filters" {
  description = "(Optional) Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior. Currently, the only allowed value is EXCLUDE_VARIABLE_SETS.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "connection_borrow_timeout" {
  description = "(Optional) The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions."
  type        = string
}
variable "connection_pool_config" {
  description = "(Optional) The settings that determine the size and behavior of the connection pool for the target group.connection_pool_config blocks support the following:"
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "id" {
  description = "Name of the RDS DB Proxy."
  type        = string
}
variable "init_query" {
  description = "(Optional) One or more SQL statements for the proxy to run when opening each new database connection. Typically used with SET statements to make sure that each connection has identical settings such as time zone and character set. This setting is empty by default. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single SET statement, such as SET x=1, y=2."
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
output "arn" {
  description = "The Amazon Resource Name (ARN) representing the target group."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "db_proxy_name" {
  description = "(Required) Name of the RDS DB Proxy."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.db_proxy_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_connections_percent" {
  description = "(Optional) The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.max_connections_percent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the default target group.TimeoutsConfiguration options:"
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_idle_connections_percent" {
  description = "(Optional) Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.max_idle_connections_percent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "session_pinning_filters" {
  description = "(Optional) Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior. Currently, the only allowed value is EXCLUDE_VARIABLE_SETS.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.session_pinning_filters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_borrow_timeout" {
  description = "(Optional) The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.connection_borrow_timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_pool_config" {
  description = "(Optional) The settings that determine the size and behavior of the connection pool for the target group.connection_pool_config blocks support the following:"
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.connection_pool_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the RDS DB Proxy."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "init_query" {
  description = "(Optional) One or more SQL statements for the proxy to run when opening each new database connection. Typically used with SET statements to make sure that each connection has identical settings such as time zone and character set. This setting is empty by default. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single SET statement, such as SET x=1, y=2."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.init_query
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) representing the target group."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the RDS DB Proxy."
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the default target group.TimeoutsConfiguration options:"
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_db_proxy_default_target_group.aws_db_proxy_default_target_group.update
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
      "kind/name"                   = "aws_db_proxy_default_target_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
