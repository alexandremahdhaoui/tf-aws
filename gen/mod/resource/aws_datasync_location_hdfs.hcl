resource "aws_datasync_location_hdfs" "aws_datasync_location_hdfs" {
  authentication_type      = var.authentication_type
  name_node                = var.name_node
  replication_factor       = var.replication_factor
  rpc_protection           = var.rpc_protection
  block_size               = var.block_size
  kerberos_krb5_conf       = var.kerberos_krb5_conf
  kms_key_provider_uri     = var.kms_key_provider_uri
  simple_user              = var.simple_user
  tags                     = var.tags
  agent_arns               = var.agent_arns
  kerberos_keytab          = var.kerberos_keytab
  kerberos_principal       = var.kerberos_principal
  qop_configuration        = var.qop_configuration
  subdirectory             = var.subdirectory
  arn                      = var.arn
  data_transfer_protection = var.data_transfer_protection
  hostname                 = var.hostname
  port                     = var.port
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "data_transfer_protection" {
  description = "(Optional) The data transfer protection setting configured on the HDFS cluster. This setting corresponds to your dfs.data.transfer.protection setting in the hdfs-site.xml file on your Hadoop cluster. Valid values are DISABLED, AUTHENTICATION, INTEGRITY and PRIVACY."
  type        = string
  default     = ""
}
variable "hostname" {
  description = "(Required) The hostname of the NameNode in the HDFS cluster. This value is the IP address or Domain Name Service (DNS) name of the NameNode. An agent that's installed on-premises uses this hostname to communicate with the NameNode in the network."
  type        = string
}
variable "port" {
  description = "(Required) The port that the NameNode uses to listen to client requests.qop_configuration Argument Reference"
  type        = string
}
variable "authentication_type" {
  description = "(Required) The type of authentication used to determine the identity of the user. Valid values are SIMPLE and KERBEROS."
  type        = string
}
variable "name_node" {
  description = "(Required)  The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below."
  type        = string
}
variable "replication_factor" {
  description = "(Optional) The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes."
  type        = string
  default     = ""
}
variable "rpc_protection" {
  description = "(Optional)The RPC protection setting configured on the HDFS cluster. This setting corresponds to your hadoop.rpc.protection setting in your core-site.xml file on your Hadoop cluster. Valid values are DISABLED, AUTHENTICATION, INTEGRITY and PRIVACY.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.name_node Argument Reference"
  type        = string
  default     = ""
}
variable "block_size" {
  description = "(Optional) The size of data blocks to write into the HDFS cluster. The block size must be a multiple of 512 bytes. The default block size is 128 mebibytes (MiB)."
  type        = string
  default     = ""
}
variable "kerberos_krb5_conf" {
  description = "(Optional) The krb5.conf file that contains the Kerberos configuration information. If KERBEROS is specified for authentication_type, this parameter is required."
  type        = string
  default     = ""
}
variable "kms_key_provider_uri" {
  description = "(Optional) The URI of the HDFS cluster's Key Management Server (KMS)."
  type        = string
  default     = ""
}
variable "simple_user" {
  description = "(Optional) The user name used to identify the client on the host operating system. If SIMPLE is specified for authentication_type, this parameter is required."
  type        = string
  default     = ""
}
variable "subdirectory" {
  description = "(Optional) A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /."
  type        = string
  default     = ""
}
variable "agent_arns" {
  description = "(Required) A list of DataSync Agent ARNs with which this location will be associated."
  type        = string
}
variable "kerberos_keytab" {
  description = "(Optional) The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. If KERBEROS is specified for authentication_type, this parameter is required."
  type        = string
  default     = ""
}
variable "kerberos_principal" {
  description = "(Optional) The Kerberos principal with access to the files and folders on the HDFS cluster. If KERBEROS is specified for authentication_type, this parameter is required."
  type        = string
  default     = ""
}
variable "qop_configuration" {
  description = "(Optional) The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If qop_configuration isn't specified, rpc_protection and data_transfer_protection default to PRIVACY. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below."
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
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.arn
}
output "data_transfer_protection" {
  description = "(Optional) The data transfer protection setting configured on the HDFS cluster. This setting corresponds to your dfs.data.transfer.protection setting in the hdfs-site.xml file on your Hadoop cluster. Valid values are DISABLED, AUTHENTICATION, INTEGRITY and PRIVACY."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.data_transfer_protection
}
output "hostname" {
  description = "(Required) The hostname of the NameNode in the HDFS cluster. This value is the IP address or Domain Name Service (DNS) name of the NameNode. An agent that's installed on-premises uses this hostname to communicate with the NameNode in the network."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.hostname
}
output "port" {
  description = "(Required) The port that the NameNode uses to listen to client requests.qop_configuration Argument Reference"
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.port
}
output "authentication_type" {
  description = "(Required) The type of authentication used to determine the identity of the user. Valid values are SIMPLE and KERBEROS."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.authentication_type
}
output "name_node" {
  description = "(Required)  The NameNode that manages the HDFS namespace. The NameNode performs operations such as opening, closing, and renaming files and directories. The NameNode contains the information to map blocks of data to the DataNodes. You can use only one NameNode. See configuration below."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.name_node
}
output "replication_factor" {
  description = "(Optional) The number of DataNodes to replicate the data to when writing to the HDFS cluster. By default, data is replicated to three DataNodes."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.replication_factor
}
output "rpc_protection" {
  description = "(Optional)The RPC protection setting configured on the HDFS cluster. This setting corresponds to your hadoop.rpc.protection setting in your core-site.xml file on your Hadoop cluster. Valid values are DISABLED, AUTHENTICATION, INTEGRITY and PRIVACY.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.rpc_protection
}
output "block_size" {
  description = "(Optional) The size of data blocks to write into the HDFS cluster. The block size must be a multiple of 512 bytes. The default block size is 128 mebibytes (MiB)."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.block_size
}
output "kerberos_krb5_conf" {
  description = "(Optional) The krb5.conf file that contains the Kerberos configuration information. If KERBEROS is specified for authentication_type, this parameter is required."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.kerberos_krb5_conf
}
output "kms_key_provider_uri" {
  description = "(Optional) The URI of the HDFS cluster's Key Management Server (KMS)."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.kms_key_provider_uri
}
output "simple_user" {
  description = "(Optional) The user name used to identify the client on the host operating system. If SIMPLE is specified for authentication_type, this parameter is required."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.simple_user
}
output "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.name_node Argument Reference"
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.tags
}
output "agent_arns" {
  description = "(Required) A list of DataSync Agent ARNs with which this location will be associated."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.agent_arns
}
output "kerberos_keytab" {
  description = "(Optional) The Kerberos key table (keytab) that contains mappings between the defined Kerberos principal and the encrypted keys. If KERBEROS is specified for authentication_type, this parameter is required."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.kerberos_keytab
}
output "kerberos_principal" {
  description = "(Optional) The Kerberos principal with access to the files and folders on the HDFS cluster. If KERBEROS is specified for authentication_type, this parameter is required."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.kerberos_principal
}
output "qop_configuration" {
  description = "(Optional) The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC) and data transfer protection settings configured on the Hadoop Distributed File System (HDFS) cluster. If qop_configuration isn't specified, rpc_protection and data_transfer_protection default to PRIVACY. If you set RpcProtection or DataTransferProtection, the other parameter assumes the same value.  See configuration below."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.qop_configuration
}
output "subdirectory" {
  description = "(Optional) A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.subdirectory
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_datasync_location_hdfs.aws_datasync_location_hdfs.tags_all
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
      "kind/name"                   = "aws_datasync_location_hdfs"
      "kind/version"                = "v0.1.0"
    }
  }
}
