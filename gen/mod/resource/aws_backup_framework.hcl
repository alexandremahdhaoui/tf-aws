resource "aws_backup_framework" "aws_backup_framework" {
  compliance_resource_types = var.compliance_resource_types
  description               = var.description
  status                    = var.status
  tags                      = var.tags
  compliance_resource_ids   = var.compliance_resource_ids
  create                    = var.create
  name                      = var.name
  scope                     = var.scope
  update                    = var.update
  value                     = var.value
  arn                       = var.arn
  control                   = var.control
  creation_time             = var.creation_time
  input_parameter           = var.input_parameter
  deployment_status         = var.deployment_status
  id                        = var.id
  tags_all                  = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The id of the backup framework."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "deployment_status" {
  description = "The deployment status of a framework. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED | FAILED."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the framework with a maximum of 1,024 characters"
  type        = string
  default     = ""
}
variable "status" {
  description = "A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. For more information refer to the AWS documentation for Framework Status"
  type        = string
}
variable "tags" {
  description = "(Optional) The tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "compliance_resource_types" {
  description = "(Optional) Describes whether the control scope includes one or more types of resources, such as EFS or RDS."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 2m)"
  type        = string
}
variable "name" {
  description = "(Optional) The name of a parameter, for example, BackupPlanFrequency."
  type        = string
  default     = ""
}
variable "scope" {
  description = "(Optional) The scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.Input Parameter ArgumentsFor stronginput_parameter the following attributes are supported:"
  type        = string
  default     = ""
}
variable "compliance_resource_ids" {
  description = "(Optional) The ID of the only AWS resource that you want your control scope to contain. Minimum number of 1 item. Maximum number of 100 items."
  type        = string
  default     = ""
}
variable "control" {
  description = "(Required) One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below."
  type        = string
}
variable "creation_time" {
  description = "The date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC)."
  type        = string
}
variable "input_parameter" {
  description = "(Optional) One or more input parameter blocks. An example of a control with two parameters is: \"backup plan frequency is at least daily and the retention period is at least 1 year\". The first parameter is daily. The second parameter is 1 year. Detailed below."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 2m)"
  type        = string
}
variable "value" {
  description = "(Optional) The value of parameter, for example, hourly.Scope ArgumentsFor strongscope the following attributes are supported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the backup framework."
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
output "compliance_resource_ids" {
  description = "(Optional) The ID of the only AWS resource that you want your control scope to contain. Minimum number of 1 item. Maximum number of 100 items."
  value       = aws_backup_framework.aws_backup_framework.compliance_resource_ids
}
output "create" {
  description = "(Default 2m)"
  value       = aws_backup_framework.aws_backup_framework.create
}
output "name" {
  description = "(Optional) The name of a parameter, for example, BackupPlanFrequency."
  value       = aws_backup_framework.aws_backup_framework.name
}
output "scope" {
  description = "(Optional) The scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.Input Parameter ArgumentsFor stronginput_parameter the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.scope
}
output "update" {
  description = "(Default 2m)"
  value       = aws_backup_framework.aws_backup_framework.update
}
output "value" {
  description = "(Optional) The value of parameter, for example, hourly.Scope ArgumentsFor strongscope the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.value
}
output "arn" {
  description = "The ARN of the backup framework."
  value       = aws_backup_framework.aws_backup_framework.arn
}
output "control" {
  description = "(Required) One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below."
  value       = aws_backup_framework.aws_backup_framework.control
}
output "creation_time" {
  description = "The date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_framework.aws_backup_framework.creation_time
}
output "input_parameter" {
  description = "(Optional) One or more input parameter blocks. An example of a control with two parameters is: \"backup plan frequency is at least daily and the retention period is at least 1 year\". The first parameter is daily. The second parameter is 1 year. Detailed below."
  value       = aws_backup_framework.aws_backup_framework.input_parameter
}
output "deployment_status" {
  description = "The deployment status of a framework. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED | FAILED."
  value       = aws_backup_framework.aws_backup_framework.deployment_status
}
output "id" {
  description = "The id of the backup framework."
  value       = aws_backup_framework.aws_backup_framework.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_backup_framework.aws_backup_framework.tags_all
}
output "compliance_resource_types" {
  description = "(Optional) Describes whether the control scope includes one or more types of resources, such as EFS or RDS."
  value       = aws_backup_framework.aws_backup_framework.compliance_resource_types
}
output "description" {
  description = "(Optional) The description of the framework with a maximum of 1,024 characters"
  value       = aws_backup_framework.aws_backup_framework.description
}
output "status" {
  description = "A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. For more information refer to the AWS documentation for Framework Status"
  value       = aws_backup_framework.aws_backup_framework.status
}
output "tags" {
  description = "(Optional) The tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.In addition to all arguments above, the following attributes are exported:"
  value       = aws_backup_framework.aws_backup_framework.tags
}
output "create" {
  description = "(Default 2m)"
  value       = aws_backup_framework.aws_backup_framework.create
}
output "creation_time" {
  description = "The date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_framework.aws_backup_framework.creation_time
}
output "status" {
  description = "A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. For more information refer to the AWS documentation for Framework Status"
  value       = aws_backup_framework.aws_backup_framework.status
}
output "update" {
  description = "(Default 2m)"
  value       = aws_backup_framework.aws_backup_framework.update
}
output "arn" {
  description = "The ARN of the backup framework."
  value       = aws_backup_framework.aws_backup_framework.arn
}
output "delete" {
  description = "(Default 2m)"
  value       = aws_backup_framework.aws_backup_framework.delete
}
output "deployment_status" {
  description = "The deployment status of a framework. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED | FAILED."
  value       = aws_backup_framework.aws_backup_framework.deployment_status
}
output "id" {
  description = "The id of the backup framework."
  value       = aws_backup_framework.aws_backup_framework.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_backup_framework.aws_backup_framework.tags_all
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
      "kind/name"                   = "aws_backup_framework"
      "kind/version"                = "v0.1.0"
    }
  }
}
