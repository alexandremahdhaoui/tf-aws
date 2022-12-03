resource "aws_fsx_ontap_file_system" "aws_fsx_ontap_file_system" {
  create                            = var.create
  endpoints                         = var.endpoints
  management                        = var.management
  network_interface_ids             = var.network_interface_ids
  preferred_subnet_id               = var.preferred_subnet_id
  route_table_ids                   = var.route_table_ids
  intercluster                      = var.intercluster
  arn                               = var.arn
  automatic_backup_retention_days   = var.automatic_backup_retention_days
  fsx_admin_password                = var.fsx_admin_password
  owner_id                          = var.owner_id
  tags_all                          = var.tags_all
  vpc_id                            = var.vpc_id
  weekly_maintenance_start_time     = var.weekly_maintenance_start_time
  deployment_type                   = var.deployment_type
  ip_addresses                      = var.ip_addresses
  mode                              = var.mode
  subnet_ids                        = var.subnet_ids
  throughput_capacity               = var.throughput_capacity
  disk_iops_configuration           = var.disk_iops_configuration
  security_group_ids                = var.security_group_ids
  storage_capacity                  = var.storage_capacity
  update                            = var.update
  daily_automatic_backup_start_time = var.daily_automatic_backup_start_time
  endpoint_ip_address_range         = var.endpoint_ip_address_range
  kms_key_id                        = var.kms_key_id
  storage_type                      = var.storage_type
  tags                              = var.tags
  dns_name                          = var.dns_name
  id                                = var.id
  iops                              = var.iops
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "dns_name" {
  description = "The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name."
  type        = string
}
variable "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  type        = string
}
variable "iops" {
  description = "(Optional) - The total number of SSD IOPS provisioned for the file system."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "endpoints" {
  description = "The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below."
  type        = string
}
variable "management" {
  description = "An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.Endpoint"
  type        = string
}
variable "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface."
  type        = string
}
variable "preferred_subnet_id" {
  description = "(Required) The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC)."
  type        = string
}
variable "route_table_ids" {
  description = "(Optional) Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table."
  type        = string
  default     = ""
}
variable "intercluster" {
  description = "An endpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See Endpoint."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days."
  type        = string
  default     = ""
}
variable "fsx_admin_password" {
  description = "(Optional) The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "AWS account identifier that created the file system."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.Endpoints"
  type        = string
}
variable "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  type        = string
  default     = ""
}
variable "deployment_type" {
  description = "(Optional) - The filesystem deployment type. Supports MULTI_AZ_1 and SINGLE_AZ_1."
  type        = string
  default     = ""
}
variable "ip_addresses" {
  description = "IP addresses of the file system endpoint.TimeoutsConfiguration options:"
  type        = string
}
variable "mode" {
  description = "(Optional) - Specifies whether the number of IOPS for the file system is using the system. Valid values are AUTOMATIC and USER_PROVISIONED. Default value is AUTOMATIC.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. Upto 2 subnets can be provided."
  type        = string
}
variable "throughput_capacity" {
  description = "(Required) Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are 128, 256, 512, 1024, and 2048.Disk Iops Configuration"
  type        = string
}
variable "disk_iops_configuration" {
  description = "(Optional) The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration Below."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  type        = string
  default     = ""
}
variable "storage_capacity" {
  description = "(Optional) The storage capacity (GiB) of the file system. Valid values between 1024 and 196608."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 60m)"
  type        = string
}
variable "daily_automatic_backup_start_time" {
  description = "(Optional) A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires automatic_backup_retention_days to be set."
  type        = string
  default     = ""
}
variable "endpoint_ip_address_range" {
  description = "(Optional) Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key."
  type        = string
  default     = ""
}
variable "storage_type" {
  description = "(Optional) - The filesystem storage type. defaults to SSD."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "management" {
  description = "An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.Endpoint"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.management
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.network_interface_ids
}
output "preferred_subnet_id" {
  description = "(Required) The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC)."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.preferred_subnet_id
}
output "route_table_ids" {
  description = "(Optional) Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.route_table_ids
}
output "create" {
  description = "(Default 60m)"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.create
}
output "endpoints" {
  description = "The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.endpoints
}
output "intercluster" {
  description = "An endpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See Endpoint."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.intercluster
}
output "fsx_admin_password" {
  description = "(Optional) The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.fsx_admin_password
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.tags_all
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.Endpoints"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.vpc_id
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.arn
}
output "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.automatic_backup_retention_days
}
output "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.weekly_maintenance_start_time
}
output "mode" {
  description = "(Optional) - Specifies whether the number of IOPS for the file system is using the system. Valid values are AUTOMATIC and USER_PROVISIONED. Default value is AUTOMATIC.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.mode
}
output "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. Upto 2 subnets can be provided."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.subnet_ids
}
output "throughput_capacity" {
  description = "(Required) Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are 128, 256, 512, 1024, and 2048.Disk Iops Configuration"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.throughput_capacity
}
output "deployment_type" {
  description = "(Optional) - The filesystem deployment type. Supports MULTI_AZ_1 and SINGLE_AZ_1."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.deployment_type
}
output "ip_addresses" {
  description = "IP addresses of the file system endpoint.TimeoutsConfiguration options:"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.ip_addresses
}
output "storage_capacity" {
  description = "(Optional) The storage capacity (GiB) of the file system. Valid values between 1024 and 196608."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.storage_capacity
}
output "update" {
  description = "(Default 60m)"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.update
}
output "disk_iops_configuration" {
  description = "(Optional) The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration Below."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.disk_iops_configuration
}
output "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.security_group_ids
}
output "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.kms_key_id
}
output "storage_type" {
  description = "(Optional) - The filesystem storage type. defaults to SSD."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.storage_type
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.tags
}
output "daily_automatic_backup_start_time" {
  description = "(Optional) A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires automatic_backup_retention_days to be set."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.daily_automatic_backup_start_time
}
output "endpoint_ip_address_range" {
  description = "(Optional) Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.endpoint_ip_address_range
}
output "iops" {
  description = "(Optional) - The total number of SSD IOPS provisioned for the file system."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.iops
}
output "dns_name" {
  description = "The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.dns_name
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.id
}
output "intercluster" {
  description = "An endpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See Endpoint."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.intercluster
}
output "update" {
  description = "(Default 60m)"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.update
}
output "create" {
  description = "(Default 60m)"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.create
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.delete
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.network_interface_ids
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.tags_all
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.Endpoints"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.vpc_id
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.arn
}
output "endpoints" {
  description = "The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.endpoints
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.id
}
output "ip_addresses" {
  description = "IP addresses of the file system endpoint.TimeoutsConfiguration options:"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.ip_addresses
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.owner_id
}
output "dns_name" {
  description = "The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name."
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.dns_name
}
output "management" {
  description = "An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.Endpoint"
  value       = aws_fsx_ontap_file_system.aws_fsx_ontap_file_system.management
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
      "kind/name"                   = "aws_fsx_ontap_file_system"
      "kind/version"                = "v0.1.0"
    }
  }
}
