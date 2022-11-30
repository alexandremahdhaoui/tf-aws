resource "aws_fsx_ontap_storage_virtual_machine" "aws_fsx_ontap_storage_virtual_machine" {
  tags                                   = var.tags
  username                               = var.username
  uuid                                   = var.uuid
  delete                                 = var.delete
  dns_ips                                = var.dns_ips
  file_system_administrators_group       = var.file_system_administrators_group
  arn                                    = var.arn
  endpoints                              = var.endpoints
  organizational_unit_distinguished_name = var.organizational_unit_distinguished_name
  password                               = var.password
  ip_addresses                           = var.ip_addresses
  management                             = var.management
  name                                   = var.name
  root_volume_security_style             = var.root_volume_security_style
  active_directory_configuration         = var.active_directory_configuration
  create                                 = var.create
  nfs                                    = var.nfs
  dns_name                               = var.dns_name
  file_system_id                         = var.file_system_id
  id                                     = var.id
  iscsi                                  = var.iscsi
  netbios_name                           = var.netbios_name
  subtype                                = var.subtype
  smb                                    = var.smb
  tags_all                               = var.tags_all
  domain_name                            = var.domain_name
  self_managed_active_directory          = var.self_managed_active_directory
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the storage virtual machine."
  type        = string
}
variable "endpoints" {
  description = "The endpoints that are used to access data or to manage the storage virtual machine using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below."
  type        = string
}
variable "file_system_administrators_group" {
  description = "(Optional) The name of the domain group whose members are granted administrative privileges for the SVM. The group that you specify must already exist in your domain. Defaults to Domain Admins."
  type        = string
}
variable "ip_addresses" {
  description = "IP addresses of the storage virtual machine endpoint.TimeoutsConfiguration options:"
  type        = string
}
variable "management" {
  description = "An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint."
  type        = string
}
variable "organizational_unit_distinguished_name" {
  description = "(Optional) The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, OU=FSx,DC=yourdomain,DC=corp,DC=com. Only accepts OU as the direct parent of the SVM. If none is provided, the SVM is created in the default location of your self-managed AD directory. To learn more, see RFC 2253.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "password" {
  description = "(Required) The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  type        = string
}
variable "active_directory_configuration" {
  description = "(Optional) Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "name" {
  description = "(Required) The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character."
  type        = string
}
variable "root_volume_security_style" {
  description = "(Optional) Specifies the root volume security style, Valid values are UNIX, NTFS, and MIXED. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is UNIX."
  type        = string
}
variable "dns_name" {
  description = "The Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name."
  type        = string
}
variable "file_system_id" {
  description = "(Required) The ID of the Amazon FSx ONTAP File System that this SVM will be created on."
  type        = string
}
variable "nfs" {
  description = "An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint."
  type        = string
}
variable "netbios_name" {
  description = "(Required) The NetBIOS name of the Active Directory computer object that will be created for your SVM. This is often the same as the SVM name but can be different. AWS limits to 15 characters because of standard NetBIOS naming limits."
  type        = string
}
variable "subtype" {
  description = "Describes the SVM's subtype, e.g. DEFAULT"
  type        = string
}
variable "id" {
  description = "Identifier of the storage virtual machine, e.g., svm-12345678"
  type        = string
}
variable "iscsi" {
  description = "An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint."
  type        = string
}
variable "domain_name" {
  description = "(Required) The fully qualified domain name of the self-managed AD directory. For example, corp.example.com."
  type        = string
}
variable "self_managed_active_directory" {
  description = "(Optional) Configuration block that Amazon FSx uses to join the SVM to your self-managed (including on-premises) Microsoft Active Directory (AD) directory.self_managed_active_directoryself_managed_active_directory configuration block:"
  type        = string
}
variable "smb" {
  description = "An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.Endpoint"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "dns_ips" {
  description = "(Required) A list of up to three IP addresses of DNS servers or domain controllers in the self-managed AD directory."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the storage virtual machine. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.active_directory_configurationactive_directory_configuration configuration block:"
  type        = string
}
variable "username" {
  description = "(Required) The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  type        = string
}
variable "uuid" {
  description = "The SVM's UUID (universally unique identifier).Endpoints"
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
output "dns_name" {
  description = "The Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_id" {
  description = "(Required) The ID of the Amazon FSx ONTAP File System that this SVM will be created on."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nfs" {
  description = "An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.nfs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iscsi" {
  description = "An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.iscsi
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "netbios_name" {
  description = "(Required) The NetBIOS name of the Active Directory computer object that will be created for your SVM. This is often the same as the SVM name but can be different. AWS limits to 15 characters because of standard NetBIOS naming limits."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.netbios_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subtype" {
  description = "Describes the SVM's subtype, e.g. DEFAULT"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.subtype
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the storage virtual machine, e.g., svm-12345678"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "(Required) The fully qualified domain name of the self-managed AD directory. For example, corp.example.com."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "self_managed_active_directory" {
  description = "(Optional) Configuration block that Amazon FSx uses to join the SVM to your self-managed (including on-premises) Microsoft Active Directory (AD) directory.self_managed_active_directoryself_managed_active_directory configuration block:"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.self_managed_active_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "smb" {
  description = "An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.Endpoint"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.smb
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uuid" {
  description = "The SVM's UUID (universally unique identifier).Endpoints"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.uuid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_ips" {
  description = "(Required) A list of up to three IP addresses of DNS servers or domain controllers in the self-managed AD directory."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.dns_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the storage virtual machine. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.active_directory_configurationactive_directory_configuration configuration block:"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "username" {
  description = "(Required) The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.username
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the storage virtual machine."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoints" {
  description = "The endpoints that are used to access data or to manage the storage virtual machine using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_administrators_group" {
  description = "(Optional) The name of the domain group whose members are granted administrative privileges for the SVM. The group that you specify must already exist in your domain. Defaults to Domain Admins."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.file_system_administrators_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_addresses" {
  description = "IP addresses of the storage virtual machine endpoint.TimeoutsConfiguration options:"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.ip_addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "management" {
  description = "An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.management
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organizational_unit_distinguished_name" {
  description = "(Optional) The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, OU=FSx,DC=yourdomain,DC=corp,DC=com. Only accepts OU as the direct parent of the SVM. If none is provided, the SVM is created in the default location of your self-managed AD directory. To learn more, see RFC 2253.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.organizational_unit_distinguished_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password" {
  description = "(Required) The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.password
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "active_directory_configuration" {
  description = "(Optional) Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.active_directory_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_volume_security_style" {
  description = "(Optional) Specifies the root volume security style, Valid values are UNIX, NTFS, and MIXED. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is UNIX."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.root_volume_security_style
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the storage virtual machine, e.g., svm-12345678"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_addresses" {
  description = "IP addresses of the storage virtual machine endpoint.TimeoutsConfiguration options:"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.ip_addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nfs" {
  description = "An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.nfs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uuid" {
  description = "The SVM's UUID (universally unique identifier).Endpoints"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.uuid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the storage virtual machine."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "The Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoints" {
  description = "The endpoints that are used to access data or to manage the storage virtual machine using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "management" {
  description = "An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.management
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iscsi" {
  description = "An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint."
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.iscsi
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subtype" {
  description = "Describes the SVM's subtype, e.g. DEFAULT"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.subtype
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "smb" {
  description = "An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.Endpoint"
  value       = aws_fsx_ontap_storage_virtual_machine.aws_fsx_ontap_storage_virtual_machine.smb
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
      "kind/name"                   = "aws_fsx_ontap_storage_virtual_machine"
      "kind/version"                = "v0.1.0"
    }
  }
}
