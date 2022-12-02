datasource "aws_redshift_cluster_credentials" "aws_redshift_cluster_credentials" {
  auto_create        = var.auto_create
  cluster_identifier = var.cluster_identifier
  db_groups          = var.db_groups
  db_name            = var.db_name
  db_password        = var.db_password
  db_user            = var.db_user
  duration_seconds   = var.duration_seconds
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_identifier" {
  description = "(Required) Unique identifier of the cluster that contains the database for which your are requesting credentials."
  type        = string
}
variable "db_groups" {
  description = "(Optional) List of the names of existing database groups that the user named in db_user will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to PUBLIC."
  type        = string
  default     = ""
}
variable "db_name" {
  description = "(Optional) Name of a database that DbUser is authorized to log on to. If db_name is not specified, db_user can log on to any existing database."
  type        = string
  default     = ""
}
variable "db_password" {
  description = "Temporary password that authorizes the user name returned by db_user to log on to the database db_name."
  type        = string
}
variable "db_user" {
  description = "(Required) Name of a database user. If a user name matching db_user exists in the database, the temporary user credentials have the same permissions as the  existing user. If db_user doesn't exist in the database and auto_create is True, a new user is created using the value for db_user with PUBLIC permissions.  If a database user matching the value for db_user doesn't exist and not is False, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database."
  type        = string
}
variable "duration_seconds" {
  description = "(Optional)  The number of seconds until the returned temporary password expires. Valid values are between 900 and 3600. Default value is 900.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "auto_create" {
  description = "(Optional)  Create a database user with the name specified for the user named in db_user if one does not exist."
  type        = string
  default     = ""
}
output "auto_create" {
  description = "(Optional)  Create a database user with the name specified for the user named in db_user if one does not exist."
  value       = aws_redshift_cluster_credentials.aws_redshift_cluster_credentials.auto_create
}
output "cluster_identifier" {
  description = "(Required) Unique identifier of the cluster that contains the database for which your are requesting credentials."
  value       = aws_redshift_cluster_credentials.aws_redshift_cluster_credentials.cluster_identifier
}
output "db_groups" {
  description = "(Optional) List of the names of existing database groups that the user named in db_user will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to PUBLIC."
  value       = aws_redshift_cluster_credentials.aws_redshift_cluster_credentials.db_groups
}
output "db_name" {
  description = "(Optional) Name of a database that DbUser is authorized to log on to. If db_name is not specified, db_user can log on to any existing database."
  value       = aws_redshift_cluster_credentials.aws_redshift_cluster_credentials.db_name
}
output "db_password" {
  description = "Temporary password that authorizes the user name returned by db_user to log on to the database db_name."
  value       = aws_redshift_cluster_credentials.aws_redshift_cluster_credentials.db_password
}
output "db_user" {
  description = "(Required) Name of a database user. If a user name matching db_user exists in the database, the temporary user credentials have the same permissions as the  existing user. If db_user doesn't exist in the database and auto_create is True, a new user is created using the value for db_user with PUBLIC permissions.  If a database user matching the value for db_user doesn't exist and not is False, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database."
  value       = aws_redshift_cluster_credentials.aws_redshift_cluster_credentials.db_user
}
output "duration_seconds" {
  description = "(Optional)  The number of seconds until the returned temporary password expires. Valid values are between 900 and 3600. Default value is 900.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_cluster_credentials.aws_redshift_cluster_credentials.duration_seconds
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
