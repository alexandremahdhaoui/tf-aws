datasource "aws_backup_framework" "aws_backup_framework" {
  id                        = var.id
  value                     = var.value
  arn                       = var.arn
  compliance_resource_ids   = var.compliance_resource_ids
  creation_time             = var.creation_time
  description               = var.description
  name                      = var.name
  tags                      = var.tags
  compliance_resource_types = var.compliance_resource_types
  control                   = var.control
  deployment_status         = var.deployment_status
  scope                     = var.scope
  status                    = var.status
  input_parameter           = var.input_parameter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "input_parameter" {
  description = "One or more input parameter blocks. An example of a control with two parameters is: \"backup plan frequency is at least daily and the retention period is at least 1 year\". The first parameter is daily. The second parameter is 1 year. Detailed below."
  type        = string
}
variable "id" {
  description = "ID of the framework."
  type        = string
}
variable "compliance_resource_ids" {
  description = "The ID of the only AWS resource that you want your control scope to contain."
  type        = string
}
variable "creation_time" {
  description = "Date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC)."
  type        = string
}
variable "description" {
  description = "Description of the framework."
  type        = string
}
variable "name" {
  description = "Name of a parameter, for example, BackupPlanFrequency."
  type        = string
}
variable "tags" {
  description = "Metadata that helps organize the frameworks you create.Control AttributesFor strongcontrol the following attributes are supported:"
  type        = string
}
variable "value" {
  description = "Value of parameter, for example, hourly.Scope AttributesFor strongscope the following attributes are supported:"
  type        = string
}
variable "arn" {
  description = "ARN of the backup framework."
  type        = string
}
variable "control" {
  description = "One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below."
  type        = string
}
variable "deployment_status" {
  description = "Deployment status of a framework. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED| FAILED."
  type        = string
}
variable "scope" {
  description = "Scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.Input Parameter AttributesFor stronginput_parameter the following attributes are supported:"
  type        = string
}
variable "status" {
  description = "Framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are: ACTIVE, PARTIALLY_ACTIVE, INACTIVE, UNAVAILABLE. For more information refer to the AWS documentation for Framework Status"
  type        = string
}
variable "compliance_resource_types" {
  description = "Describes whether the control scope includes one or more types of resources, such as EFS or RDS."
  type        = string
}
output "compliance_resource_types" {
  description = "Describes whether the control scope includes one or more types of resources, such as EFS or RDS."
  value       = aws_backup_framework.aws_backup_framework.compliance_resource_types
}
output "control" {
  description = "One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below."
  value       = aws_backup_framework.aws_backup_framework.control
}
output "deployment_status" {
  description = "Deployment status of a framework. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED| FAILED."
  value       = aws_backup_framework.aws_backup_framework.deployment_status
}
output "scope" {
  description = "Scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.Input Parameter AttributesFor stronginput_parameter the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.scope
}
output "status" {
  description = "Framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are: ACTIVE, PARTIALLY_ACTIVE, INACTIVE, UNAVAILABLE. For more information refer to the AWS documentation for Framework Status"
  value       = aws_backup_framework.aws_backup_framework.status
}
output "input_parameter" {
  description = "One or more input parameter blocks. An example of a control with two parameters is: \"backup plan frequency is at least daily and the retention period is at least 1 year\". The first parameter is daily. The second parameter is 1 year. Detailed below."
  value       = aws_backup_framework.aws_backup_framework.input_parameter
}
output "id" {
  description = "ID of the framework."
  value       = aws_backup_framework.aws_backup_framework.id
}
output "arn" {
  description = "ARN of the backup framework."
  value       = aws_backup_framework.aws_backup_framework.arn
}
output "compliance_resource_ids" {
  description = "The ID of the only AWS resource that you want your control scope to contain."
  value       = aws_backup_framework.aws_backup_framework.compliance_resource_ids
}
output "creation_time" {
  description = "Date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_framework.aws_backup_framework.creation_time
}
output "description" {
  description = "Description of the framework."
  value       = aws_backup_framework.aws_backup_framework.description
}
output "name" {
  description = "Name of a parameter, for example, BackupPlanFrequency."
  value       = aws_backup_framework.aws_backup_framework.name
}
output "tags" {
  description = "Metadata that helps organize the frameworks you create.Control AttributesFor strongcontrol the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.tags
}
output "value" {
  description = "Value of parameter, for example, hourly.Scope AttributesFor strongscope the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.value
}
output "compliance_resource_ids" {
  description = "The ID of the only AWS resource that you want your control scope to contain."
  value       = aws_backup_framework.aws_backup_framework.compliance_resource_ids
}
output "creation_time" {
  description = "Date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC)."
  value       = aws_backup_framework.aws_backup_framework.creation_time
}
output "description" {
  description = "Description of the framework."
  value       = aws_backup_framework.aws_backup_framework.description
}
output "tags" {
  description = "Metadata that helps organize the frameworks you create.Control AttributesFor strongcontrol the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.tags
}
output "id" {
  description = "ID of the framework."
  value       = aws_backup_framework.aws_backup_framework.id
}
output "value" {
  description = "Value of parameter, for example, hourly.Scope AttributesFor strongscope the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.value
}
output "arn" {
  description = "ARN of the backup framework."
  value       = aws_backup_framework.aws_backup_framework.arn
}
output "name" {
  description = "Name of a parameter, for example, BackupPlanFrequency."
  value       = aws_backup_framework.aws_backup_framework.name
}
output "status" {
  description = "Framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are: ACTIVE, PARTIALLY_ACTIVE, INACTIVE, UNAVAILABLE. For more information refer to the AWS documentation for Framework Status"
  value       = aws_backup_framework.aws_backup_framework.status
}
output "compliance_resource_types" {
  description = "Describes whether the control scope includes one or more types of resources, such as EFS or RDS."
  value       = aws_backup_framework.aws_backup_framework.compliance_resource_types
}
output "control" {
  description = "One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below."
  value       = aws_backup_framework.aws_backup_framework.control
}
output "deployment_status" {
  description = "Deployment status of a framework. The statuses are: CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED| FAILED."
  value       = aws_backup_framework.aws_backup_framework.deployment_status
}
output "input_parameter" {
  description = "One or more input parameter blocks. An example of a control with two parameters is: \"backup plan frequency is at least daily and the retention period is at least 1 year\". The first parameter is daily. The second parameter is 1 year. Detailed below."
  value       = aws_backup_framework.aws_backup_framework.input_parameter
}
output "scope" {
  description = "Scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.Input Parameter AttributesFor stronginput_parameter the following attributes are supported:"
  value       = aws_backup_framework.aws_backup_framework.scope
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
