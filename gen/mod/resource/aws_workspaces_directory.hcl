resource "aws_workspaces_directory" "aws_workspaces_directory" {
  directory_type                      = var.directory_type
  rebuild_workspace                   = var.rebuild_workspace
  registration_code                   = var.registration_code
  default_ou                          = var.default_ou
  device_type_chromeos                = var.device_type_chromeos
  device_type_web                     = var.device_type_web
  device_type_windows                 = var.device_type_windows
  id                                  = var.id
  change_compute_type                 = var.change_compute_type
  dns_ip_addresses                    = var.dns_ip_addresses
  workspace_creation_properties       = var.workspace_creation_properties
  device_type_linux                   = var.device_type_linux
  device_type_osx                     = var.device_type_osx
  directory_id                        = var.directory_id
  iam_role_id                         = var.iam_role_id
  ip_group_ids                        = var.ip_group_ids
  tags                                = var.tags
  user_enabled_as_local_administrator = var.user_enabled_as_local_administrator
  workspace_access_properties         = var.workspace_access_properties
  custom_security_group_id            = var.custom_security_group_id
  customer_user_name                  = var.customer_user_name
  enable_internet_access              = var.enable_internet_access
  increase_volume_size                = var.increase_volume_size
  switch_running_mode                 = var.switch_running_mode
  alias                               = var.alias
  enable_maintenance_mode             = var.enable_maintenance_mode
  restart_workspace                   = var.restart_workspace
  self_service_permissions            = var.self_service_permissions
  tags_all                            = var.tags_all
  directory_name                      = var.directory_name
  subnet_ids                          = var.subnet_ids
  device_type_android                 = var.device_type_android
  device_type_zeroclient              = var.device_type_zeroclient
  device_type_ios                     = var.device_type_ios
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "directory_type" {
  description = "The directory type."
  type        = string
}
variable "rebuild_workspace" {
  description = " – (Optional) Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state. Default false."
  type        = string
  default     = ""
}
variable "registration_code" {
  description = "The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory."
  type        = string
}
variable "default_ou" {
  description = " – (Optional) The default organizational unit (OU) for your WorkSpace directories. Should conform \"OU=<value>,DC=<value>,...,DC=<value>\" pattern."
  type        = string
  default     = ""
}
variable "device_type_chromeos" {
  description = " – (Optional) Indicates whether users can use Chromebooks to access their WorkSpaces."
  type        = string
  default     = ""
}
variable "device_type_web" {
  description = " – (Optional) Indicates whether users can access their WorkSpaces through a web browser."
  type        = string
  default     = ""
}
variable "device_type_windows" {
  description = " – (Optional) Indicates whether users can use Windows clients to access their WorkSpaces."
  type        = string
  default     = ""
}
variable "id" {
  description = "The WorkSpaces directory identifier."
  type        = string
}
variable "change_compute_type" {
  description = " – (Optional) Whether WorkSpaces directory users can change the compute type (bundle) for their workspace. Default false."
  type        = string
  default     = ""
}
variable "dns_ip_addresses" {
  description = "The IP addresses of the DNS servers for the directory."
  type        = string
}
variable "workspace_creation_properties" {
  description = " – (Optional) Default properties that are used for creating WorkSpaces. Defined below.self_service_permissions"
  type        = string
  default     = ""
}
variable "device_type_linux" {
  description = " – (Optional) Indicates whether users can use Linux clients to access their WorkSpaces."
  type        = string
  default     = ""
}
variable "device_type_osx" {
  description = " – (Optional) Indicates whether users can use macOS clients to access their WorkSpaces."
  type        = string
  default     = ""
}
variable "directory_id" {
  description = "(Required) The directory identifier for registration in WorkSpaces service."
  type        = string
}
variable "iam_role_id" {
  description = "The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf."
  type        = string
}
variable "ip_group_ids" {
  description = "The identifiers of the IP access control groups associated with the directory."
  type        = string
}
variable "tags" {
  description = " – (Optional) A map of tags assigned to the WorkSpaces directory. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "user_enabled_as_local_administrator" {
  description = " – (Optional) Indicates whether users are local administrators of their WorkSpaces.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "workspace_access_properties" {
  description = " – (Optional) Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below."
  type        = string
  default     = ""
}
variable "custom_security_group_id" {
  description = " – (Optional) The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in."
  type        = string
  default     = ""
}
variable "customer_user_name" {
  description = "The user name for the service account."
  type        = string
}
variable "enable_internet_access" {
  description = " – (Optional) Indicates whether internet access is enabled for your WorkSpaces."
  type        = string
  default     = ""
}
variable "increase_volume_size" {
  description = " – (Optional) Whether WorkSpaces directory users can increase the volume size of the drives on their workspace. Default false."
  type        = string
  default     = ""
}
variable "switch_running_mode" {
  description = " – (Optional) Whether WorkSpaces directory users can switch the running mode of their workspace. Default false.workspace_access_properties"
  type        = string
  default     = ""
}
variable "alias" {
  description = "The directory alias."
  type        = string
}
variable "enable_maintenance_mode" {
  description = " – (Optional) Indicates whether maintenance mode is enabled for your WorkSpaces. For more information, see WorkSpace Maintenance.."
  type        = string
  default     = ""
}
variable "restart_workspace" {
  description = " – (Optional) Whether WorkSpaces directory users can restart their workspace. Default true."
  type        = string
  default     = ""
}
variable "self_service_permissions" {
  description = " – (Optional) Permissions to enable or disable self-service capabilities. Defined below."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "directory_name" {
  description = "The name of the directory."
  type        = string
}
variable "subnet_ids" {
  description = "(Optional) The identifiers of the subnets where the directory resides."
  type        = string
  default     = ""
}
variable "device_type_android" {
  description = " – (Optional) Indicates whether users can use Android devices to access their WorkSpaces."
  type        = string
  default     = ""
}
variable "device_type_zeroclient" {
  description = " – (Optional) Indicates whether users can use zero client devices to access their WorkSpaces.workspace_creation_properties-> strongNote: Once you specified custom_security_group_id or default_ou, there is no way to delete these attributes. If you cleanup them from the configuration, they still be present in state."
  type        = string
  default     = ""
}
variable "device_type_ios" {
  description = " – (Optional) Indicates whether users can use iOS devices to access their WorkSpaces."
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
output "device_type_linux" {
  description = " – (Optional) Indicates whether users can use Linux clients to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_linux
}
output "dns_ip_addresses" {
  description = "The IP addresses of the DNS servers for the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.dns_ip_addresses
}
output "workspace_creation_properties" {
  description = " – (Optional) Default properties that are used for creating WorkSpaces. Defined below.self_service_permissions"
  value       = aws_workspaces_directory.aws_workspaces_directory.workspace_creation_properties
}
output "user_enabled_as_local_administrator" {
  description = " – (Optional) Indicates whether users are local administrators of their WorkSpaces.In addition to all arguments above, the following attributes are exported:"
  value       = aws_workspaces_directory.aws_workspaces_directory.user_enabled_as_local_administrator
}
output "workspace_access_properties" {
  description = " – (Optional) Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below."
  value       = aws_workspaces_directory.aws_workspaces_directory.workspace_access_properties
}
output "custom_security_group_id" {
  description = " – (Optional) The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in."
  value       = aws_workspaces_directory.aws_workspaces_directory.custom_security_group_id
}
output "device_type_osx" {
  description = " – (Optional) Indicates whether users can use macOS clients to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_osx
}
output "directory_id" {
  description = "(Required) The directory identifier for registration in WorkSpaces service."
  value       = aws_workspaces_directory.aws_workspaces_directory.directory_id
}
output "iam_role_id" {
  description = "The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf."
  value       = aws_workspaces_directory.aws_workspaces_directory.iam_role_id
}
output "ip_group_ids" {
  description = "The identifiers of the IP access control groups associated with the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.ip_group_ids
}
output "tags" {
  description = " – (Optional) A map of tags assigned to the WorkSpaces directory. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_workspaces_directory.aws_workspaces_directory.tags
}
output "alias" {
  description = "The directory alias."
  value       = aws_workspaces_directory.aws_workspaces_directory.alias
}
output "customer_user_name" {
  description = "The user name for the service account."
  value       = aws_workspaces_directory.aws_workspaces_directory.customer_user_name
}
output "enable_internet_access" {
  description = " – (Optional) Indicates whether internet access is enabled for your WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.enable_internet_access
}
output "increase_volume_size" {
  description = " – (Optional) Whether WorkSpaces directory users can increase the volume size of the drives on their workspace. Default false."
  value       = aws_workspaces_directory.aws_workspaces_directory.increase_volume_size
}
output "switch_running_mode" {
  description = " – (Optional) Whether WorkSpaces directory users can switch the running mode of their workspace. Default false.workspace_access_properties"
  value       = aws_workspaces_directory.aws_workspaces_directory.switch_running_mode
}
output "directory_name" {
  description = "The name of the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.directory_name
}
output "enable_maintenance_mode" {
  description = " – (Optional) Indicates whether maintenance mode is enabled for your WorkSpaces. For more information, see WorkSpace Maintenance.."
  value       = aws_workspaces_directory.aws_workspaces_directory.enable_maintenance_mode
}
output "restart_workspace" {
  description = " – (Optional) Whether WorkSpaces directory users can restart their workspace. Default true."
  value       = aws_workspaces_directory.aws_workspaces_directory.restart_workspace
}
output "self_service_permissions" {
  description = " – (Optional) Permissions to enable or disable self-service capabilities. Defined below."
  value       = aws_workspaces_directory.aws_workspaces_directory.self_service_permissions
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_workspaces_directory.aws_workspaces_directory.tags_all
}
output "device_type_android" {
  description = " – (Optional) Indicates whether users can use Android devices to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_android
}
output "subnet_ids" {
  description = "(Optional) The identifiers of the subnets where the directory resides."
  value       = aws_workspaces_directory.aws_workspaces_directory.subnet_ids
}
output "device_type_ios" {
  description = " – (Optional) Indicates whether users can use iOS devices to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_ios
}
output "device_type_zeroclient" {
  description = " – (Optional) Indicates whether users can use zero client devices to access their WorkSpaces.workspace_creation_properties-> strongNote: Once you specified custom_security_group_id or default_ou, there is no way to delete these attributes. If you cleanup them from the configuration, they still be present in state."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_zeroclient
}
output "default_ou" {
  description = " – (Optional) The default organizational unit (OU) for your WorkSpace directories. Should conform \"OU=<value>,DC=<value>,...,DC=<value>\" pattern."
  value       = aws_workspaces_directory.aws_workspaces_directory.default_ou
}
output "directory_type" {
  description = "The directory type."
  value       = aws_workspaces_directory.aws_workspaces_directory.directory_type
}
output "rebuild_workspace" {
  description = " – (Optional) Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state. Default false."
  value       = aws_workspaces_directory.aws_workspaces_directory.rebuild_workspace
}
output "registration_code" {
  description = "The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.registration_code
}
output "change_compute_type" {
  description = " – (Optional) Whether WorkSpaces directory users can change the compute type (bundle) for their workspace. Default false."
  value       = aws_workspaces_directory.aws_workspaces_directory.change_compute_type
}
output "device_type_chromeos" {
  description = " – (Optional) Indicates whether users can use Chromebooks to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_chromeos
}
output "device_type_web" {
  description = " – (Optional) Indicates whether users can access their WorkSpaces through a web browser."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_web
}
output "device_type_windows" {
  description = " – (Optional) Indicates whether users can use Windows clients to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_windows
}
output "id" {
  description = "The WorkSpaces directory identifier."
  value       = aws_workspaces_directory.aws_workspaces_directory.id
}
output "dns_ip_addresses" {
  description = "The IP addresses of the DNS servers for the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.dns_ip_addresses
}
output "iam_role_id" {
  description = "The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf."
  value       = aws_workspaces_directory.aws_workspaces_directory.iam_role_id
}
output "ip_group_ids" {
  description = "The identifiers of the IP access control groups associated with the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.ip_group_ids
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_workspaces_directory.aws_workspaces_directory.tags_all
}
output "alias" {
  description = "The directory alias."
  value       = aws_workspaces_directory.aws_workspaces_directory.alias
}
output "directory_name" {
  description = "The name of the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.directory_name
}
output "directory_type" {
  description = "The directory type."
  value       = aws_workspaces_directory.aws_workspaces_directory.directory_type
}
output "id" {
  description = "The WorkSpaces directory identifier."
  value       = aws_workspaces_directory.aws_workspaces_directory.id
}
output "registration_code" {
  description = "The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.registration_code
}
output "workspace_security_group_id" {
  description = "The identifier of the security group that is assigned to new WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.workspace_security_group_id
}
output "customer_user_name" {
  description = "The user name for the service account."
  value       = aws_workspaces_directory.aws_workspaces_directory.customer_user_name
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
      "kind/name"                   = "aws_workspaces_directory"
      "kind/version"                = "v0.1.0"
    }
  }
}
