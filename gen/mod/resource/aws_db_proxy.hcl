resource "aws_db_proxy" "aws_db_proxy" {
  arn                    = var.arn
  debug_logging          = var.debug_logging
  iam_auth               = var.iam_auth
  id                     = var.id
  idle_client_timeout    = var.idle_client_timeout
  tags                   = var.tags
  description            = var.description
  secret_arn             = var.secret_arn
  auth                   = var.auth
  auth_scheme            = var.auth_scheme
  create                 = var.create
  endpoint               = var.endpoint
  name                   = var.name
  require_tls            = var.require_tls
  update                 = var.update
  username               = var.username
  vpc_security_group_ids = var.vpc_security_group_ids
  vpc_subnet_ids         = var.vpc_subnet_ids
  engine_family          = var.engine_family
  role_arn               = var.role_arn
  tags_all               = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "endpoint" {
  description = "The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application."
  type        = string
}
variable "name" {
  description = "(Required) The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens."
  type        = string
}
variable "require_tls" {
  description = "(Optional) A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "username" {
  description = "(Optional) The name of the database user to which the proxy connects.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "auth" {
  description = "(Required) Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Described below."
  type        = string
}
variable "auth_scheme" {
  description = "(Optional) The type of authentication that the proxy uses for connections from the proxy to the underlying database. One of SECRETS."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional) One or more VPC security group IDs to associate with the new proxy."
  type        = string
  default     = ""
}
variable "vpc_subnet_ids" {
  description = "(Required) One or more VPC subnet IDs to associate with the new proxy."
  type        = string
}
variable "engine_family" {
  description = "(Required, Forces new resource) The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. The engine family applies to MySQL and PostgreSQL for both RDS and Aurora. Valid values are MYSQL and POSTGRESQL."
  type        = string
}
variable "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "id" {
  description = "The Amazon Resource Name (ARN) for the proxy."
  type        = string
}
variable "idle_client_timeout" {
  description = "(Optional) The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.auth blocks support the following:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) for the proxy."
  type        = string
}
variable "debug_logging" {
  description = "(Optional) Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs."
  type        = string
  default     = ""
}
variable "iam_auth" {
  description = "(Optional) Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy. One of DISABLED, REQUIRED."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A user-specified description about the authentication used by a proxy to log in as a specific database user."
  type        = string
  default     = ""
}
variable "secret_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager."
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
output "arn" {
  description = "The Amazon Resource Name (ARN) for the proxy."
  value       = aws_db_proxy.aws_db_proxy.arn
}
output "debug_logging" {
  description = "(Optional) Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs."
  value       = aws_db_proxy.aws_db_proxy.debug_logging
}
output "iam_auth" {
  description = "(Optional) Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy. One of DISABLED, REQUIRED."
  value       = aws_db_proxy.aws_db_proxy.iam_auth
}
output "id" {
  description = "The Amazon Resource Name (ARN) for the proxy."
  value       = aws_db_proxy.aws_db_proxy.id
}
output "idle_client_timeout" {
  description = "(Optional) The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database."
  value       = aws_db_proxy.aws_db_proxy.idle_client_timeout
}
output "tags" {
  description = "(Optional) A mapping of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.auth blocks support the following:"
  value       = aws_db_proxy.aws_db_proxy.tags
}
output "description" {
  description = "(Optional) A user-specified description about the authentication used by a proxy to log in as a specific database user."
  value       = aws_db_proxy.aws_db_proxy.description
}
output "secret_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager."
  value       = aws_db_proxy.aws_db_proxy.secret_arn
}
output "username" {
  description = "(Optional) The name of the database user to which the proxy connects.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_proxy.aws_db_proxy.username
}
output "auth" {
  description = "(Required) Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Described below."
  value       = aws_db_proxy.aws_db_proxy.auth
}
output "auth_scheme" {
  description = "(Optional) The type of authentication that the proxy uses for connections from the proxy to the underlying database. One of SECRETS."
  value       = aws_db_proxy.aws_db_proxy.auth_scheme
}
output "create" {
  description = "(Default 30m)"
  value       = aws_db_proxy.aws_db_proxy.create
}
output "endpoint" {
  description = "The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application."
  value       = aws_db_proxy.aws_db_proxy.endpoint
}
output "name" {
  description = "(Required) The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens."
  value       = aws_db_proxy.aws_db_proxy.name
}
output "require_tls" {
  description = "(Optional) A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy."
  value       = aws_db_proxy.aws_db_proxy.require_tls
}
output "update" {
  description = "(Default 30m)"
  value       = aws_db_proxy.aws_db_proxy.update
}
output "vpc_security_group_ids" {
  description = "(Optional) One or more VPC security group IDs to associate with the new proxy."
  value       = aws_db_proxy.aws_db_proxy.vpc_security_group_ids
}
output "vpc_subnet_ids" {
  description = "(Required) One or more VPC subnet IDs to associate with the new proxy."
  value       = aws_db_proxy.aws_db_proxy.vpc_subnet_ids
}
output "engine_family" {
  description = "(Required, Forces new resource) The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. The engine family applies to MySQL and PostgreSQL for both RDS and Aurora. Valid values are MYSQL and POSTGRESQL."
  value       = aws_db_proxy.aws_db_proxy.engine_family
}
output "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager."
  value       = aws_db_proxy.aws_db_proxy.role_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_db_proxy.aws_db_proxy.tags_all
}
output "endpoint" {
  description = "The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application."
  value       = aws_db_proxy.aws_db_proxy.endpoint
}
output "id" {
  description = "The Amazon Resource Name (ARN) for the proxy."
  value       = aws_db_proxy.aws_db_proxy.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_db_proxy.aws_db_proxy.tags_all
}
output "update" {
  description = "(Default 30m)"
  value       = aws_db_proxy.aws_db_proxy.update
}
output "arn" {
  description = "The Amazon Resource Name (ARN) for the proxy."
  value       = aws_db_proxy.aws_db_proxy.arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_db_proxy.aws_db_proxy.create
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_db_proxy.aws_db_proxy.delete
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
      "kind/name"                   = "aws_db_proxy"
      "kind/version"                = "v0.1.0"
    }
  }
}
