resource "aws_neptune_cluster_instance" "aws_neptune_cluster_instance" {
  arn                          = var.arn
  availability_zone            = var.availability_zone
  preferred_backup_window      = var.preferred_backup_window
  apply_immediately            = var.apply_immediately
  endpoint                     = var.endpoint
  publicly_accessible          = var.publicly_accessible
  storage_encrypted            = var.storage_encrypted
  address                      = var.address
  create                       = var.create
  preferred_maintenance_window = var.preferred_maintenance_window
  tags_all                     = var.tags_all
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
  cluster_identifier           = var.cluster_identifier
  id                           = var.id
  promotion_tier               = var.promotion_tier
  update                       = var.update
  writer                       = var.writer
  engine                       = var.engine
  port                         = var.port
  tags                         = var.tags
  neptune_subnet_group_name    = var.neptune_subnet_group_name
  dbi_resource_id              = var.dbi_resource_id
  engine_version               = var.engine_version
  identifier                   = var.identifier
  identifier_prefix            = var.identifier_prefix
  instance_class               = var.instance_class
  kms_key_arn                  = var.kms_key_arn
  neptune_parameter_group_name = var.neptune_parameter_group_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica.TimeoutsConfiguration options:"
  type        = string
}
variable "engine" {
  description = "(Optional) The name of the database engine to be used for the neptune instance. Defaults to neptune. Valid Values: neptune."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Optional) The port on which the DB accepts connections. Defaults to 8182."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "identifier" {
  description = "(Optional, Forces new resource) The identifier for the neptune instance, if omitted, Terraform will assign a random, unique identifier."
  type        = string
}
variable "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique identifier beginning with the specified prefix. Conflicts with identifier."
  type        = string
}
variable "instance_class" {
  description = "(Required) The instance class to use."
  type        = string
}
variable "kms_key_arn" {
  description = "The ARN for the KMS encryption key if one is set to the neptune cluster."
  type        = string
}
variable "neptune_parameter_group_name" {
  description = "(Optional) The name of the neptune parameter group to associate with this instance."
  type        = string
  default     = ""
}
variable "neptune_subnet_group_name" {
  description = "(Required if publicly_accessible = false, Optional otherwise) A subnet group to associate with this neptune instance. strongNOTE: This must match the neptune_subnet_group_name of the attached aws_neptune_cluster."
  type        = string
}
variable "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the neptune instance."
  type        = string
}
variable "engine_version" {
  description = "(Optional) The neptune engine version."
  type        = string
  default     = ""
}
variable "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled. Eg: \"04:00-09:00\""
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of neptune instance"
  type        = string
}
variable "availability_zone" {
  description = "(Optional) The EC2 Availability Zone that the neptune instance is created in."
  type        = string
  default     = ""
}
variable "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly accessible. Default is false."
  type        = string
  default     = ""
}
variable "storage_encrypted" {
  description = "Specifies whether the neptune cluster is encrypted."
  type        = string
}
variable "apply_immediately" {
  description = "false."
  type        = string
}
variable "endpoint" {
  description = "The connection endpoint in address:port format."
  type        = string
}
variable "preferred_maintenance_window" {
  description = ""
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "address" {
  description = "The hostname of the instance. See also endpoint and port."
  type        = string
}
variable "create" {
  description = "(Default 90m)"
  type        = string
}
variable "id" {
  description = "The Instance identifier"
  type        = string
}
variable "promotion_tier" {
  description = "(Optional) Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 90m)"
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is true."
  type        = string
  default     = ""
}
variable "cluster_identifier" {
  description = "(Required) The identifier of the aws_neptune_cluster in which to launch this instance."
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
  description = "Amazon Resource Name (ARN) of neptune instance"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.arn
}
output "availability_zone" {
  description = "(Optional) The EC2 Availability Zone that the neptune instance is created in."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.availability_zone
}
output "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled. Eg: \"04:00-09:00\""
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.preferred_backup_window
}
output "apply_immediately" {
  description = "false."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.apply_immediately
}
output "endpoint" {
  description = "The connection endpoint in address:port format."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.endpoint
}
output "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly accessible. Default is false."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.publicly_accessible
}
output "storage_encrypted" {
  description = "Specifies whether the neptune cluster is encrypted."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.storage_encrypted
}
output "address" {
  description = "The hostname of the instance. See also endpoint and port."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.address
}
output "create" {
  description = "(Default 90m)"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.create
}
output "preferred_maintenance_window" {
  description = ""
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.preferred_maintenance_window
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.tags_all
}
output "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is true."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.auto_minor_version_upgrade
}
output "cluster_identifier" {
  description = "(Required) The identifier of the aws_neptune_cluster in which to launch this instance."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.cluster_identifier
}
output "id" {
  description = "The Instance identifier"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.id
}
output "promotion_tier" {
  description = "(Optional) Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.promotion_tier
}
output "update" {
  description = "(Default 90m)"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.update
}
output "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica.TimeoutsConfiguration options:"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.writer
}
output "engine" {
  description = "(Optional) The name of the database engine to be used for the neptune instance. Defaults to neptune. Valid Values: neptune."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.engine
}
output "port" {
  description = "(Optional) The port on which the DB accepts connections. Defaults to 8182."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.port
}
output "tags" {
  description = "(Optional) A map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.tags
}
output "neptune_subnet_group_name" {
  description = "(Required if publicly_accessible = false, Optional otherwise) A subnet group to associate with this neptune instance. strongNOTE: This must match the neptune_subnet_group_name of the attached aws_neptune_cluster."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.neptune_subnet_group_name
}
output "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the neptune instance."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.dbi_resource_id
}
output "engine_version" {
  description = "(Optional) The neptune engine version."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.engine_version
}
output "identifier" {
  description = "(Optional, Forces new resource) The identifier for the neptune instance, if omitted, Terraform will assign a random, unique identifier."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.identifier
}
output "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique identifier beginning with the specified prefix. Conflicts with identifier."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.identifier_prefix
}
output "instance_class" {
  description = "(Required) The instance class to use."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.instance_class
}
output "kms_key_arn" {
  description = "The ARN for the KMS encryption key if one is set to the neptune cluster."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.kms_key_arn
}
output "neptune_parameter_group_name" {
  description = "(Optional) The name of the neptune parameter group to associate with this instance."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.neptune_parameter_group_name
}
output "update" {
  description = "(Default 90m)"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.update
}
output "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the neptune instance."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.dbi_resource_id
}
output "endpoint" {
  description = "The connection endpoint in address:port format."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.endpoint
}
output "kms_key_arn" {
  description = "The ARN for the KMS encryption key if one is set to the neptune cluster."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.kms_key_arn
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.delete
}
output "id" {
  description = "The Instance identifier"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.id
}
output "storage_encrypted" {
  description = "Specifies whether the neptune cluster is encrypted."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.storage_encrypted
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.tags_all
}
output "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica.TimeoutsConfiguration options:"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.writer
}
output "address" {
  description = "The hostname of the instance. See also endpoint and port."
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.address
}
output "arn" {
  description = "Amazon Resource Name (ARN) of neptune instance"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.arn
}
output "create" {
  description = "(Default 90m)"
  value       = aws_neptune_cluster_instance.aws_neptune_cluster_instance.create
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
      "kind/name"                   = "aws_neptune_cluster_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
