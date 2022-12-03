datasource "aws_db_proxy" "aws_db_proxy" {
  auth                   = var.auth
  debug_logging          = var.debug_logging
  require_tls            = var.require_tls
  role_arn               = var.role_arn
  vpc_id                 = var.vpc_id
  vpc_security_group_ids = var.vpc_security_group_ids
  arn                    = var.arn
  endpoint               = var.endpoint
  engine_family          = var.engine_family
  idle_client_timeout    = var.idle_client_timeout
  name                   = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "auth" {
  description = "Configuration(s) with authorization mechanisms to connect to the associated instance or cluster."
  type        = string
}
variable "debug_logging" {
  description = "Whether the proxy includes detailed information about SQL statements in its logs."
  type        = string
}
variable "require_tls" {
  description = "Whether Transport Layer Security (TLS) encryption is required for connections to the proxy."
  type        = string
}
variable "idle_client_timeout" {
  description = "Number of seconds a connection to the proxy can have no activity before the proxy drops the client connection."
  type        = string
}
variable "name" {
  description = "(Required) Name of the DB proxy.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "role_arn" {
  description = "ARN for the IAM role that the proxy uses to access Amazon Secrets Manager."
  type        = string
}
variable "vpc_id" {
  description = "Provides the VPC ID of the DB proxy."
  type        = string
}
variable "vpc_security_group_ids" {
  description = "Provides a list of VPC security groups that the proxy belongs to."
  type        = string
}
variable "arn" {
  description = "ARN of the DB Proxy."
  type        = string
}
variable "endpoint" {
  description = "Endpoint that you can use to connect to the DB proxy."
  type        = string
}
variable "engine_family" {
  description = "Kinds of databases that the proxy can connect to."
  type        = string
}
output "engine_family" {
  description = "Kinds of databases that the proxy can connect to."
  value       = aws_db_proxy.aws_db_proxy.engine_family
}
output "idle_client_timeout" {
  description = "Number of seconds a connection to the proxy can have no activity before the proxy drops the client connection."
  value       = aws_db_proxy.aws_db_proxy.idle_client_timeout
}
output "name" {
  description = "(Required) Name of the DB proxy.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_proxy.aws_db_proxy.name
}
output "role_arn" {
  description = "ARN for the IAM role that the proxy uses to access Amazon Secrets Manager."
  value       = aws_db_proxy.aws_db_proxy.role_arn
}
output "vpc_id" {
  description = "Provides the VPC ID of the DB proxy."
  value       = aws_db_proxy.aws_db_proxy.vpc_id
}
output "vpc_security_group_ids" {
  description = "Provides a list of VPC security groups that the proxy belongs to."
  value       = aws_db_proxy.aws_db_proxy.vpc_security_group_ids
}
output "arn" {
  description = "ARN of the DB Proxy."
  value       = aws_db_proxy.aws_db_proxy.arn
}
output "endpoint" {
  description = "Endpoint that you can use to connect to the DB proxy."
  value       = aws_db_proxy.aws_db_proxy.endpoint
}
output "require_tls" {
  description = "Whether Transport Layer Security (TLS) encryption is required for connections to the proxy."
  value       = aws_db_proxy.aws_db_proxy.require_tls
}
output "auth" {
  description = "Configuration(s) with authorization mechanisms to connect to the associated instance or cluster."
  value       = aws_db_proxy.aws_db_proxy.auth
}
output "debug_logging" {
  description = "Whether the proxy includes detailed information about SQL statements in its logs."
  value       = aws_db_proxy.aws_db_proxy.debug_logging
}
output "arn" {
  description = "ARN of the DB Proxy."
  value       = aws_db_proxy.aws_db_proxy.arn
}
output "auth" {
  description = "Configuration(s) with authorization mechanisms to connect to the associated instance or cluster."
  value       = aws_db_proxy.aws_db_proxy.auth
}
output "engine_family" {
  description = "Kinds of databases that the proxy can connect to."
  value       = aws_db_proxy.aws_db_proxy.engine_family
}
output "vpc_security_group_ids" {
  description = "Provides a list of VPC security groups that the proxy belongs to."
  value       = aws_db_proxy.aws_db_proxy.vpc_security_group_ids
}
output "debug_logging" {
  description = "Whether the proxy includes detailed information about SQL statements in its logs."
  value       = aws_db_proxy.aws_db_proxy.debug_logging
}
output "endpoint" {
  description = "Endpoint that you can use to connect to the DB proxy."
  value       = aws_db_proxy.aws_db_proxy.endpoint
}
output "idle_client_timeout" {
  description = "Number of seconds a connection to the proxy can have no activity before the proxy drops the client connection."
  value       = aws_db_proxy.aws_db_proxy.idle_client_timeout
}
output "require_tls" {
  description = "Whether Transport Layer Security (TLS) encryption is required for connections to the proxy."
  value       = aws_db_proxy.aws_db_proxy.require_tls
}
output "role_arn" {
  description = "ARN for the IAM role that the proxy uses to access Amazon Secrets Manager."
  value       = aws_db_proxy.aws_db_proxy.role_arn
}
output "vpc_id" {
  description = "Provides the VPC ID of the DB proxy."
  value       = aws_db_proxy.aws_db_proxy.vpc_id
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
