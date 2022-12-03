resource "aws_storagegateway_gateway" "aws_storagegateway_gateway" {
  ipv4_address                                = var.ipv4_address
  smb_security_strategy                       = var.smb_security_strategy
  arn                                         = var.arn
  gateway_name                                = var.gateway_name
  gateway_timezone                            = var.gateway_timezone
  gateway_vpc_endpoint                        = var.gateway_vpc_endpoint
  gateway_type                                = var.gateway_type
  id                                          = var.id
  maintenance_start_time                      = var.maintenance_start_time
  smb_guest_password                          = var.smb_guest_password
  average_upload_rate_limit_in_bits_per_sec   = var.average_upload_rate_limit_in_bits_per_sec
  cloudwatch_log_group_arn                    = var.cloudwatch_log_group_arn
  domain_controllers                          = var.domain_controllers
  ec2_instance_id                             = var.ec2_instance_id
  timeout_in_seconds                          = var.timeout_in_seconds
  domain_name                                 = var.domain_name
  minute_of_hour                              = var.minute_of_hour
  tags_all                                    = var.tags_all
  username                                    = var.username
  day_of_week                                 = var.day_of_week
  gateway_id                                  = var.gateway_id
  gateway_ip_address                          = var.gateway_ip_address
  organizational_unit                         = var.organizational_unit
  tape_drive_type                             = var.tape_drive_type
  gateway_network_interface                   = var.gateway_network_interface
  hour_of_day                                 = var.hour_of_day
  password                                    = var.password
  smb_active_directory_settings               = var.smb_active_directory_settings
  average_download_rate_limit_in_bits_per_sec = var.average_download_rate_limit_in_bits_per_sec
  medium_changer_type                         = var.medium_changer_type
  smb_file_share_visibility                   = var.smb_file_share_visibility
  tags                                        = var.tags
  activation_key                              = var.activation_key
  day_of_month                                = var.day_of_month
  endpoint_type                               = var.endpoint_type
  host_environment                            = var.host_environment
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "day_of_week" {
  description = "(Optional) The day of the week component of the maintenance start time week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday."
  type        = string
  default     = ""
}
variable "gateway_ip_address" {
  description = "(Optional) Gateway IP address to retrieve activation key during resource creation. Conflicts with activation_key. Gateway must be accessible on port 80 from where Terraform is running. Additional information is available in the Storage Gateway User Guide."
  type        = string
  default     = ""
}
variable "organizational_unit" {
  description = ""
  type        = string
}
variable "tape_drive_type" {
  description = "(Optional) Type of tape drive to use for tape gateway. Terraform cannot detect drift of this argument. Valid values: IBM-ULT3580-TD5."
  type        = string
  default     = ""
}
variable "gateway_id" {
  description = "Identifier of the gateway."
  type        = string
}
variable "hour_of_day" {
  description = "(Required) The hour component of the maintenance start time represented as emhh, where emhh is the hour (00 to 23). The hour of the day is in the time zone of the gateway."
  type        = string
}
variable "password" {
  description = "(Required) The password of the user who has permission to add the gateway to the Active Directory domain."
  type        = string
}
variable "smb_active_directory_settings" {
  description = "(Optional) Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for FILE_S3 and FILE_FSX_SMB gateway types. Must be set before creating ActiveDirectory authentication SMB file shares. More details below."
  type        = string
  default     = ""
}
variable "gateway_network_interface" {
  description = "An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface."
  type        = string
}
variable "average_download_rate_limit_in_bits_per_sec" {
  description = "(Optional) The average download bandwidth rate limit in bits per second. This is supported for the CACHED, STORED, and VTL gateway types."
  type        = string
  default     = ""
}
variable "day_of_month" {
  description = "(Optional) The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month."
  type        = string
  default     = ""
}
variable "endpoint_type" {
  description = "The type of endpoint for your gateway."
  type        = string
}
variable "host_environment" {
  description = "The type of hypervisor environment used by the host."
  type        = string
}
variable "medium_changer_type" {
  description = "(Optional) Type of medium changer to use for tape gateway. Terraform cannot detect drift of this argument. Valid values: STK-L700, AWS-Gateway-VTL, IBM-03584L32-0402."
  type        = string
  default     = ""
}
variable "smb_file_share_visibility" {
  description = "(Optional) Specifies whether the shares on this gateway appear when listing shares."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.maintenance_start_time"
  type        = string
  default     = ""
}
variable "activation_key" {
  description = "(Optional) Gateway activation key during resource creation. Conflicts with gateway_ip_address. Additional information is available in the Storage Gateway User Guide."
  type        = string
  default     = ""
}
variable "gateway_name" {
  description = "(Required) Name of the gateway."
  type        = string
}
variable "gateway_timezone" {
  description = "(Required) Time zone for the gateway. The time zone is of the format \"GMT\", \"GMT-hr:mm\", or \"GMT+hr:mm\". For example, GMT-4:00 indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule."
  type        = string
}
variable "gateway_vpc_endpoint" {
  description = "(Optional) VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running terraform. More info on what ports are required by your VPC Endpoint Security group in Activating a Gateway in a Virtual Private Cloud."
  type        = string
  default     = ""
}
variable "ipv4_address" {
  description = "The Internet Protocol version 4 (IPv4) address of the interface.TimeoutsConfiguration options:"
  type        = string
}
variable "smb_security_strategy" {
  description = "(Optional) Specifies the type of security strategy. Valid values are: ClientSpecified, MandatorySigning, and MandatoryEncryption. See Setting a Security Level for Your Gateway for more information."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the gateway."
  type        = string
}
variable "cloudwatch_log_group_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway."
  type        = string
  default     = ""
}
variable "domain_controllers" {
  description = "mydc.mydomain.com:389.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "ec2_instance_id" {
  description = "The ID of the Amazon EC2 instance that was used to launch the gateway."
  type        = string
}
variable "gateway_type" {
  description = "(Optional) Type of the gateway. The default value is STORED. Valid values: CACHED, FILE_FSX_SMB, FILE_S3, STORED, VTL."
  type        = string
  default     = ""
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the gateway."
  type        = string
}
variable "maintenance_start_time" {
  description = "(Optional) The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below."
  type        = string
  default     = ""
}
variable "smb_guest_password" {
  description = "(Optional) Guest password for Server Message Block (SMB) file shares. Only valid for FILE_S3 and FILE_FSX_SMB gateway types. Must be set before creating GuestAccess authentication SMB file shares. Terraform can only detect drift of the existence of a guest password, not its actual value from the gateway. Terraform can however update the password with changing the argument."
  type        = string
  default     = ""
}
variable "average_upload_rate_limit_in_bits_per_sec" {
  description = "(Optional) The average upload bandwidth rate limit in bits per second. This is supported for the CACHED, STORED, and VTL gateway types."
  type        = string
  default     = ""
}
variable "timeout_in_seconds" {
  description = "(Optional) Specifies the time in seconds, in which the JoinDomain operation must complete. The default is 20 seconds."
  type        = string
  default     = ""
}
variable "minute_of_hour" {
  description = "(Required) The minute component of the maintenance start time represented as emmm, where emmm is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.smb_active_directory_settingsInformation to join the gateway to an Active Directory domain for Server Message Block (SMB) file shares.~> strongNOTE It is not possible to unconfigure this setting without recreating the gateway. Also, Terraform can only detect drift of the domain_name argument from the gateway.~> strongNOTE: The Storage Gateway needs to be able to resolve the name of your Active Directory Domain Controller. If the gateway is hosted on EC2, ensure that DNS/DHCP is configured prior to creating the EC2 instance. If you are receiving NETWORK_ERROR errors during resource creation (gateway joining the domain), ensure your gateway instance meets the FSx File Gateway requirements."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Gateway Network Interface"
  type        = string
}
variable "username" {
  description = "(Required) The user name of user who has permission to add the gateway to the Active Directory domain."
  type        = string
}
variable "domain_name" {
  description = "(Required) The name of the domain that you want the gateway to join."
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
output "username" {
  description = "(Required) The user name of user who has permission to add the gateway to the Active Directory domain."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.username
}
output "domain_name" {
  description = "(Required) The name of the domain that you want the gateway to join."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.domain_name
}
output "minute_of_hour" {
  description = "(Required) The minute component of the maintenance start time represented as emmm, where emmm is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.smb_active_directory_settingsInformation to join the gateway to an Active Directory domain for Server Message Block (SMB) file shares.~> strongNOTE It is not possible to unconfigure this setting without recreating the gateway. Also, Terraform can only detect drift of the domain_name argument from the gateway.~> strongNOTE: The Storage Gateway needs to be able to resolve the name of your Active Directory Domain Controller. If the gateway is hosted on EC2, ensure that DNS/DHCP is configured prior to creating the EC2 instance. If you are receiving NETWORK_ERROR errors during resource creation (gateway joining the domain), ensure your gateway instance meets the FSx File Gateway requirements."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.minute_of_hour
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Gateway Network Interface"
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.tags_all
}
output "day_of_week" {
  description = "(Optional) The day of the week component of the maintenance start time week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.day_of_week
}
output "tape_drive_type" {
  description = "(Optional) Type of tape drive to use for tape gateway. Terraform cannot detect drift of this argument. Valid values: IBM-ULT3580-TD5."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.tape_drive_type
}
output "gateway_id" {
  description = "Identifier of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_id
}
output "gateway_ip_address" {
  description = "(Optional) Gateway IP address to retrieve activation key during resource creation. Conflicts with activation_key. Gateway must be accessible on port 80 from where Terraform is running. Additional information is available in the Storage Gateway User Guide."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_ip_address
}
output "organizational_unit" {
  description = ""
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.organizational_unit
}
output "smb_active_directory_settings" {
  description = "(Optional) Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for FILE_S3 and FILE_FSX_SMB gateway types. Must be set before creating ActiveDirectory authentication SMB file shares. More details below."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.smb_active_directory_settings
}
output "gateway_network_interface" {
  description = "An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_network_interface
}
output "hour_of_day" {
  description = "(Required) The hour component of the maintenance start time represented as emhh, where emhh is the hour (00 to 23). The hour of the day is in the time zone of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.hour_of_day
}
output "password" {
  description = "(Required) The password of the user who has permission to add the gateway to the Active Directory domain."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.password
}
output "average_download_rate_limit_in_bits_per_sec" {
  description = "(Optional) The average download bandwidth rate limit in bits per second. This is supported for the CACHED, STORED, and VTL gateway types."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.average_download_rate_limit_in_bits_per_sec
}
output "host_environment" {
  description = "The type of hypervisor environment used by the host."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.host_environment
}
output "medium_changer_type" {
  description = "(Optional) Type of medium changer to use for tape gateway. Terraform cannot detect drift of this argument. Valid values: STK-L700, AWS-Gateway-VTL, IBM-03584L32-0402."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.medium_changer_type
}
output "smb_file_share_visibility" {
  description = "(Optional) Specifies whether the shares on this gateway appear when listing shares."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.smb_file_share_visibility
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.maintenance_start_time"
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.tags
}
output "activation_key" {
  description = "(Optional) Gateway activation key during resource creation. Conflicts with gateway_ip_address. Additional information is available in the Storage Gateway User Guide."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.activation_key
}
output "day_of_month" {
  description = "(Optional) The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.day_of_month
}
output "endpoint_type" {
  description = "The type of endpoint for your gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.endpoint_type
}
output "gateway_vpc_endpoint" {
  description = "(Optional) VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running terraform. More info on what ports are required by your VPC Endpoint Security group in Activating a Gateway in a Virtual Private Cloud."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_vpc_endpoint
}
output "ipv4_address" {
  description = "The Internet Protocol version 4 (IPv4) address of the interface.TimeoutsConfiguration options:"
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.ipv4_address
}
output "smb_security_strategy" {
  description = "(Optional) Specifies the type of security strategy. Valid values are: ClientSpecified, MandatorySigning, and MandatoryEncryption. See Setting a Security Level for Your Gateway for more information."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.smb_security_strategy
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.arn
}
output "gateway_name" {
  description = "(Required) Name of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_name
}
output "gateway_timezone" {
  description = "(Required) Time zone for the gateway. The time zone is of the format \"GMT\", \"GMT-hr:mm\", or \"GMT+hr:mm\". For example, GMT-4:00 indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_timezone
}
output "ec2_instance_id" {
  description = "The ID of the Amazon EC2 instance that was used to launch the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.ec2_instance_id
}
output "gateway_type" {
  description = "(Optional) Type of the gateway. The default value is STORED. Valid values: CACHED, FILE_FSX_SMB, FILE_S3, STORED, VTL."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_type
}
output "id" {
  description = "Amazon Resource Name (ARN) of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.id
}
output "maintenance_start_time" {
  description = "(Optional) The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.maintenance_start_time
}
output "smb_guest_password" {
  description = "(Optional) Guest password for Server Message Block (SMB) file shares. Only valid for FILE_S3 and FILE_FSX_SMB gateway types. Must be set before creating GuestAccess authentication SMB file shares. Terraform can only detect drift of the existence of a guest password, not its actual value from the gateway. Terraform can however update the password with changing the argument."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.smb_guest_password
}
output "average_upload_rate_limit_in_bits_per_sec" {
  description = "(Optional) The average upload bandwidth rate limit in bits per second. This is supported for the CACHED, STORED, and VTL gateway types."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.average_upload_rate_limit_in_bits_per_sec
}
output "cloudwatch_log_group_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.cloudwatch_log_group_arn
}
output "domain_controllers" {
  description = "mydc.mydomain.com:389.In addition to all arguments above, the following attributes are exported:"
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.domain_controllers
}
output "timeout_in_seconds" {
  description = "(Optional) Specifies the time in seconds, in which the JoinDomain operation must complete. The default is 20 seconds."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.timeout_in_seconds
}
output "ec2_instance_id" {
  description = "The ID of the Amazon EC2 instance that was used to launch the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.ec2_instance_id
}
output "endpoint_type" {
  description = "The type of endpoint for your gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.endpoint_type
}
output "gateway_id" {
  description = "Identifier of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_id
}
output "gateway_network_interface" {
  description = "An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.gateway_network_interface
}
output "id" {
  description = "Amazon Resource Name (ARN) of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.id
}
output "ipv4_address" {
  description = "The Internet Protocol version 4 (IPv4) address of the interface.TimeoutsConfiguration options:"
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.ipv4_address
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the gateway."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.create
}
output "host_environment" {
  description = "The type of hypervisor environment used by the host."
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.host_environment
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Gateway Network Interface"
  value       = aws_storagegateway_gateway.aws_storagegateway_gateway.tags_all
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
      "kind/name"                   = "aws_storagegateway_gateway"
      "kind/version"                = "v0.1.0"
    }
  }
}
