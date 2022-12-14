datasource "aws_workspaces_directory" "aws_workspaces_directory" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_type_osx" {
  description = " – (Optional) Indicates whether users can use macOS clients to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_osx
}
output "directory_name" {
  description = "Name of the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.directory_name
}
output "increase_volume_size" {
  description = " – Whether WorkSpaces directory users can increase the volume size of the drives on their workspace."
  value       = aws_workspaces_directory.aws_workspaces_directory.increase_volume_size
}
output "ip_group_ids" {
  description = "Identifiers of the IP access control groups associated with the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.ip_group_ids
}
output "registration_code" {
  description = "Registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.registration_code
}
output "device_type_chromeos" {
  description = " – (Optional) Indicates whether users can use Chromebooks to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_chromeos
}
output "directory_type" {
  description = "Directory type."
  value       = aws_workspaces_directory.aws_workspaces_directory.directory_type
}
output "enable_maintenance_mode" {
  description = " – Indicates whether maintenance mode is enabled for your WorkSpaces. For more information, see WorkSpace Maintenance."
  value       = aws_workspaces_directory.aws_workspaces_directory.enable_maintenance_mode
}
output "workspace_access_properties" {
  description = " – (Optional) Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below."
  value       = aws_workspaces_directory.aws_workspaces_directory.workspace_access_properties
}
output "custom_security_group_id" {
  description = " – The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in."
  value       = aws_workspaces_directory.aws_workspaces_directory.custom_security_group_id
}
output "device_type_android" {
  description = " – (Optional) Indicates whether users can use Android devices to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_android
}
output "device_type_ios" {
  description = " – (Optional) Indicates whether users can use iOS devices to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_ios
}
output "device_type_zeroclient" {
  description = " – (Optional) Indicates whether users can use zero client devices to access their WorkSpaces.workspace_creation_properties"
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_zeroclient
}
output "workspace_security_group_id" {
  description = "The identifier of the security group that is assigned to new WorkSpaces. Defined below.self_service_permissions"
  value       = aws_workspaces_directory.aws_workspaces_directory.workspace_security_group_id
}
output "customer_user_name" {
  description = "User name for the service account."
  value       = aws_workspaces_directory.aws_workspaces_directory.customer_user_name
}
output "device_type_linux" {
  description = " – (Optional) Indicates whether users can use Linux clients to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_linux
}
output "restart_workspace" {
  description = " – Whether WorkSpaces directory users can restart their workspace."
  value       = aws_workspaces_directory.aws_workspaces_directory.restart_workspace
}
output "device_type_windows" {
  description = " – (Optional) Indicates whether users can use Windows clients to access their WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_windows
}
output "switch_running_mode" {
  description = " – Whether WorkSpaces directory users can switch the running mode of their workspace.workspace_access_properties"
  value       = aws_workspaces_directory.aws_workspaces_directory.switch_running_mode
}
output "tags" {
  description = " – A map of tags assigned to the WorkSpaces directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.tags
}
output "iam_role_id" {
  description = "Identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf."
  value       = aws_workspaces_directory.aws_workspaces_directory.iam_role_id
}
output "id" {
  description = "WorkSpaces directory identifier."
  value       = aws_workspaces_directory.aws_workspaces_directory.id
}
output "alias" {
  description = "Directory alias."
  value       = aws_workspaces_directory.aws_workspaces_directory.alias
}
output "change_compute_type" {
  description = " – Whether WorkSpaces directory users can change the compute type (bundle) for their workspace."
  value       = aws_workspaces_directory.aws_workspaces_directory.change_compute_type
}
output "default_ou" {
  description = " – The default organizational unit (OU) for your WorkSpace directories."
  value       = aws_workspaces_directory.aws_workspaces_directory.default_ou
}
output "device_type_web" {
  description = " – (Optional) Indicates whether users can access their WorkSpaces through a web browser."
  value       = aws_workspaces_directory.aws_workspaces_directory.device_type_web
}
output "dns_ip_addresses" {
  description = "IP addresses of the DNS servers for the directory."
  value       = aws_workspaces_directory.aws_workspaces_directory.dns_ip_addresses
}
output "enable_internet_access" {
  description = " – Indicates whether internet access is enabled for your WorkSpaces."
  value       = aws_workspaces_directory.aws_workspaces_directory.enable_internet_access
}
output "self_service_permissions" {
  description = " – The permissions to enable or disable self-service capabilities."
  value       = aws_workspaces_directory.aws_workspaces_directory.self_service_permissions
}
output "subnet_ids" {
  description = "Identifiers of the subnets where the directory resides."
  value       = aws_workspaces_directory.aws_workspaces_directory.subnet_ids
}
output "rebuild_workspace" {
  description = " – Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state."
  value       = aws_workspaces_directory.aws_workspaces_directory.rebuild_workspace
}
output "workspace_creation_properties" {
  description = " – The default properties that are used for creating WorkSpaces. Defined below."
  value       = aws_workspaces_directory.aws_workspaces_directory.workspace_creation_properties
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
