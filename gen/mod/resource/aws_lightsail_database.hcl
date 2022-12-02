resource "aws_lightsail_database" "aws_lightsail_database" {
  master_password              = var.master_password
  postgres_12                  = var.postgres_12
  publicly_accessible          = var.publicly_accessible
  engine                       = var.engine
  large_ha_1_0                 = var.large_ha_1_0
  micro_                       = var.micro_
  engine_version               = var.engine_version
  cpu_count                    = var.cpu_count
  large_                       = var.large_
  large_1_0                    = var.large_1_0
  preferred_backup_window      = var.preferred_backup_window
  small_ha_1_0                 = var.small_ha_1_0
  bundle_id                    = var.bundle_id
  arn                          = var.arn
  blueprint_id                 = var.blueprint_id
  master_endpoint_address      = var.master_endpoint_address
  apply_immediately            = var.apply_immediately
  final_snapshot_name          = var.final_snapshot_name
  master_endpoint_port         = var.master_endpoint_port
  small_                       = var.small_
  support_code                 = var.support_code
  disk_size                    = var.disk_size
  ram_size                     = var.ram_size
  skip_final_snapshot          = var.skip_final_snapshot
  created_at                   = var.created_at
  ha_                          = var.ha_
  id                           = var.id
  name                         = var.name
  preferred_maintenance_window = var.preferred_maintenance_window
  tags                         = var.tags
  availability_zone            = var.availability_zone
  ca_certificate_identifier    = var.ca_certificate_identifier
  master_database_name         = var.master_database_name
  master_username              = var.master_username
  medium_                      = var.medium_
  mysql_8_0                    = var.mysql_8_0
  secondary_availability_zone  = var.secondary_availability_zone
  small_1_0                    = var.small_1_0
  backup_retention_enabled     = var.backup_retention_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "apply_immediately" {
  description = "When true , applies changes immediately. When false , applies changes during the preferred maintenance window. Some changes may cause an outage."
  type        = string
}
variable "arn" {
  description = "The ARN of the Lightsail instance (matches id)."
  type        = string
}
variable "blueprint_id" {
  description = "(Required) The blueprint ID for your new database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: aws lightsail get-relational-database-blueprints"
  type        = string
}
variable "master_endpoint_address" {
  description = "The master endpoint fqdn for the database."
  type        = string
}
variable "disk_size" {
  description = "The size of the disk for the database."
  type        = string
}
variable "final_snapshot_name" {
  description = "(Required unless skip_final_snapshot = true) The name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter."
  type        = string
}
variable "master_endpoint_port" {
  description = "The master endpoint network port for the database."
  type        = string
}
variable "small_" {
  description = ""
  type        = string
}
variable "support_code" {
  description = "The support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  type        = string
}
variable "created_at" {
  description = "The timestamp when the instance was created."
  type        = string
}
variable "ram_size" {
  description = "The amount of RAM in GB for the database."
  type        = string
}
variable "skip_final_snapshot" {
  description = "Determines whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false."
  type        = string
}
variable "availability_zone" {
  description = "(Required) The Availability Zone in which to create your new database. Use the us-east-2a case-sensitive format."
  type        = string
}
variable "ha_" {
  description = "SuffixA Bundle ID ends with one of the following suffix: 1_0In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "The ARN of the Lightsail instance (matches arn)."
  type        = string
}
variable "name" {
  description = "(Required) The name to use for your new Lightsail database resource. Names be unique within each AWS Region in your Lightsail account."
  type        = string
}
variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur on your new database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: Tue:17:00-Tue:17:30"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value.Blueprint IdsA list of all available Lightsail Blueprints for Relational Databases the aws lightsail get-relational-database-blueprints aws cli command.Examples"
  type        = string
  default     = ""
}
variable "small_1_0" {
  description = ""
  type        = string
}
variable "backup_retention_enabled" {
  description = "When true, enables automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database."
  type        = string
}
variable "ca_certificate_identifier" {
  description = "The certificate associated with the database."
  type        = string
}
variable "master_database_name" {
  description = "(Required) The name of the master database created when the Lightsail database resource is created."
  type        = string
}
variable "master_username" {
  description = "The master user name for your new database."
  type        = string
}
variable "medium_" {
  description = ""
  type        = string
}
variable "mysql_8_0" {
  description = ""
  type        = string
}
variable "secondary_availability_zone" {
  description = "Describes the secondary Availability Zone of a high availability database. The secondary database is used for failover support of a high availability database."
  type        = string
}
variable "engine" {
  description = "The database software (for example, MySQL)."
  type        = string
}
variable "master_password" {
  description = "(Sensitive) The password for the master user of your new database. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\"."
  type        = string
}
variable "postgres_12" {
  description = "PrefixA Blueprint ID starts with a prefix of the engine type.SuffixA Blueprint ID has a sufix of the engine version.BundlesA list of all available Lightsail Bundles for Relational Databases the aws lightsail get-relational-database-bundles aws cli command.Examples"
  type        = string
}
variable "publicly_accessible" {
  description = "Specifies the accessibility options for your new database. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database."
  type        = string
}
variable "engine_version" {
  description = "The database engine version (for example, 5.7.23)."
  type        = string
}
variable "large_ha_1_0" {
  description = "PrefixA Bundle ID starts with one of the below size prefixes:"
  type        = string
}
variable "micro_" {
  description = ""
  type        = string
}
variable "bundle_id" {
  description = "(Required)  The bundle ID for your new database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: aws lightsail get-relational-database-bundles."
  type        = string
}
variable "cpu_count" {
  description = "The number of vCPUs for the database."
  type        = string
}
variable "large_" {
  description = "Infixes (Optional for HA Database)A Bundle Id can have the following infix added in order to use the HA option of the selected bundle."
  type        = string
}
variable "large_1_0" {
  description = ""
  type        = string
}
variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created for your new database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: 16:00-16:30. Specified in Coordinated Universal Time (UTC)."
  type        = string
}
variable "small_ha_1_0" {
  description = ""
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
output "engine_version" {
  description = "The database engine version (for example, 5.7.23)."
  value       = aws_lightsail_database.aws_lightsail_database.engine_version
}
output "large_ha_1_0" {
  description = "PrefixA Bundle ID starts with one of the below size prefixes:"
  value       = aws_lightsail_database.aws_lightsail_database.large_ha_1_0
}
output "micro_" {
  description = ""
  value       = aws_lightsail_database.aws_lightsail_database.micro_
}
output "small_ha_1_0" {
  description = ""
  value       = aws_lightsail_database.aws_lightsail_database.small_ha_1_0
}
output "bundle_id" {
  description = "(Required)  The bundle ID for your new database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: aws lightsail get-relational-database-bundles."
  value       = aws_lightsail_database.aws_lightsail_database.bundle_id
}
output "cpu_count" {
  description = "The number of vCPUs for the database."
  value       = aws_lightsail_database.aws_lightsail_database.cpu_count
}
output "large_" {
  description = "Infixes (Optional for HA Database)A Bundle Id can have the following infix added in order to use the HA option of the selected bundle."
  value       = aws_lightsail_database.aws_lightsail_database.large_
}
output "large_1_0" {
  description = ""
  value       = aws_lightsail_database.aws_lightsail_database.large_1_0
}
output "preferred_backup_window" {
  description = "The daily time range during which automated backups are created for your new database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: 16:00-16:30. Specified in Coordinated Universal Time (UTC)."
  value       = aws_lightsail_database.aws_lightsail_database.preferred_backup_window
}
output "apply_immediately" {
  description = "When true , applies changes immediately. When false , applies changes during the preferred maintenance window. Some changes may cause an outage."
  value       = aws_lightsail_database.aws_lightsail_database.apply_immediately
}
output "arn" {
  description = "The ARN of the Lightsail instance (matches id)."
  value       = aws_lightsail_database.aws_lightsail_database.arn
}
output "blueprint_id" {
  description = "(Required) The blueprint ID for your new database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: aws lightsail get-relational-database-blueprints"
  value       = aws_lightsail_database.aws_lightsail_database.blueprint_id
}
output "master_endpoint_address" {
  description = "The master endpoint fqdn for the database."
  value       = aws_lightsail_database.aws_lightsail_database.master_endpoint_address
}
output "disk_size" {
  description = "The size of the disk for the database."
  value       = aws_lightsail_database.aws_lightsail_database.disk_size
}
output "final_snapshot_name" {
  description = "(Required unless skip_final_snapshot = true) The name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter."
  value       = aws_lightsail_database.aws_lightsail_database.final_snapshot_name
}
output "master_endpoint_port" {
  description = "The master endpoint network port for the database."
  value       = aws_lightsail_database.aws_lightsail_database.master_endpoint_port
}
output "small_" {
  description = ""
  value       = aws_lightsail_database.aws_lightsail_database.small_
}
output "support_code" {
  description = "The support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  value       = aws_lightsail_database.aws_lightsail_database.support_code
}
output "created_at" {
  description = "The timestamp when the instance was created."
  value       = aws_lightsail_database.aws_lightsail_database.created_at
}
output "ram_size" {
  description = "The amount of RAM in GB for the database."
  value       = aws_lightsail_database.aws_lightsail_database.ram_size
}
output "skip_final_snapshot" {
  description = "Determines whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false."
  value       = aws_lightsail_database.aws_lightsail_database.skip_final_snapshot
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value.Blueprint IdsA list of all available Lightsail Blueprints for Relational Databases the aws lightsail get-relational-database-blueprints aws cli command.Examples"
  value       = aws_lightsail_database.aws_lightsail_database.tags
}
output "availability_zone" {
  description = "(Required) The Availability Zone in which to create your new database. Use the us-east-2a case-sensitive format."
  value       = aws_lightsail_database.aws_lightsail_database.availability_zone
}
output "ha_" {
  description = "SuffixA Bundle ID ends with one of the following suffix: 1_0In addition to all arguments above, the following attributes are exported:"
  value       = aws_lightsail_database.aws_lightsail_database.ha_
}
output "id" {
  description = "The ARN of the Lightsail instance (matches arn)."
  value       = aws_lightsail_database.aws_lightsail_database.id
}
output "name" {
  description = "(Required) The name to use for your new Lightsail database resource. Names be unique within each AWS Region in your Lightsail account."
  value       = aws_lightsail_database.aws_lightsail_database.name
}
output "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur on your new database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: Tue:17:00-Tue:17:30"
  value       = aws_lightsail_database.aws_lightsail_database.preferred_maintenance_window
}
output "mysql_8_0" {
  description = ""
  value       = aws_lightsail_database.aws_lightsail_database.mysql_8_0
}
output "secondary_availability_zone" {
  description = "Describes the secondary Availability Zone of a high availability database. The secondary database is used for failover support of a high availability database."
  value       = aws_lightsail_database.aws_lightsail_database.secondary_availability_zone
}
output "small_1_0" {
  description = ""
  value       = aws_lightsail_database.aws_lightsail_database.small_1_0
}
output "backup_retention_enabled" {
  description = "When true, enables automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database."
  value       = aws_lightsail_database.aws_lightsail_database.backup_retention_enabled
}
output "ca_certificate_identifier" {
  description = "The certificate associated with the database."
  value       = aws_lightsail_database.aws_lightsail_database.ca_certificate_identifier
}
output "master_database_name" {
  description = "(Required) The name of the master database created when the Lightsail database resource is created."
  value       = aws_lightsail_database.aws_lightsail_database.master_database_name
}
output "master_username" {
  description = "The master user name for your new database."
  value       = aws_lightsail_database.aws_lightsail_database.master_username
}
output "medium_" {
  description = ""
  value       = aws_lightsail_database.aws_lightsail_database.medium_
}
output "engine" {
  description = "The database software (for example, MySQL)."
  value       = aws_lightsail_database.aws_lightsail_database.engine
}
output "master_password" {
  description = "(Sensitive) The password for the master user of your new database. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\"."
  value       = aws_lightsail_database.aws_lightsail_database.master_password
}
output "postgres_12" {
  description = "PrefixA Blueprint ID starts with a prefix of the engine type.SuffixA Blueprint ID has a sufix of the engine version.BundlesA list of all available Lightsail Bundles for Relational Databases the aws lightsail get-relational-database-bundles aws cli command.Examples"
  value       = aws_lightsail_database.aws_lightsail_database.postgres_12
}
output "publicly_accessible" {
  description = "Specifies the accessibility options for your new database. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database."
  value       = aws_lightsail_database.aws_lightsail_database.publicly_accessible
}
output "ca_certificate_identifier" {
  description = "The certificate associated with the database."
  value       = aws_lightsail_database.aws_lightsail_database.ca_certificate_identifier
}
output "cpu_count" {
  description = "The number of vCPUs for the database."
  value       = aws_lightsail_database.aws_lightsail_database.cpu_count
}
output "engine" {
  description = "The database software (for example, MySQL)."
  value       = aws_lightsail_database.aws_lightsail_database.engine
}
output "engine_version" {
  description = "The database engine version (for example, 5.7.23)."
  value       = aws_lightsail_database.aws_lightsail_database.engine_version
}
output "master_endpoint_address" {
  description = "The master endpoint fqdn for the database."
  value       = aws_lightsail_database.aws_lightsail_database.master_endpoint_address
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lightsail_database.aws_lightsail_database.tags_all
}
output "arn" {
  description = "The ARN of the Lightsail instance (matches id)."
  value       = aws_lightsail_database.aws_lightsail_database.arn
}
output "master_endpoint_port" {
  description = "The master endpoint network port for the database."
  value       = aws_lightsail_database.aws_lightsail_database.master_endpoint_port
}
output "ram_size" {
  description = "The amount of RAM in GB for the database."
  value       = aws_lightsail_database.aws_lightsail_database.ram_size
}
output "support_code" {
  description = "The support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  value       = aws_lightsail_database.aws_lightsail_database.support_code
}
output "created_at" {
  description = "The timestamp when the instance was created."
  value       = aws_lightsail_database.aws_lightsail_database.created_at
}
output "disk_size" {
  description = "The size of the disk for the database."
  value       = aws_lightsail_database.aws_lightsail_database.disk_size
}
output "id" {
  description = "The ARN of the Lightsail instance (matches arn)."
  value       = aws_lightsail_database.aws_lightsail_database.id
}
output "secondary_availability_zone" {
  description = "Describes the secondary Availability Zone of a high availability database. The secondary database is used for failover support of a high availability database."
  value       = aws_lightsail_database.aws_lightsail_database.secondary_availability_zone
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
      "kind/name"                   = "aws_lightsail_database"
      "kind/version"                = "v0.1.0"
    }
  }
}
