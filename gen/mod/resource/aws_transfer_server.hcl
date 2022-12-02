resource "aws_transfer_server" "aws_transfer_server" {
  post_authentication_login_banner = var.post_authentication_login_banner
  subnet_ids                       = var.subnet_ids
  tags                             = var.tags
  address_allocation_ids           = var.address_allocation_ids
  host_key                         = var.host_key
  on_upload                        = var.on_upload
  certificate                      = var.certificate
  domain                           = var.domain
  security_policy_name             = var.security_policy_name
  workflow_id                      = var.workflow_id
  FTP                              = var.FTP
  directory_id                     = var.directory_id
  endpoint                         = var.endpoint
  FTPS                             = var.FTPS
  arn                              = var.arn
  invocation_role                  = var.invocation_role
  vpc_id                           = var.vpc_id
  endpoint_details                 = var.endpoint_details
  endpoint_type                    = var.endpoint_type
  host_key_fingerprint             = var.host_key_fingerprint
  id                               = var.id
  logging_role                     = var.logging_role
  security_group_ids               = var.security_group_ids
  workflow_details                 = var.workflow_details
  AS2                              = var.AS2
  execution_role                   = var.execution_role
  function                         = var.function
  force_destroy                    = var.force_destroy
  pre_authentication_login_banner  = var.pre_authentication_login_banner
  url                              = var.url
  vpc_endpoint_id                  = var.vpc_endpoint_id
  SFTP                             = var.SFTP
  identity_provider_type           = var.identity_provider_type
  protocols                        = var.protocols
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "FTPS" {
  description = ": File transfer with TLS encryption"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of Transfer Server"
  type        = string
}
variable "host_key_fingerprint" {
  description = "This value contains the message-digest algorithm (MD5) hash of the server's host key. This value is equivalent to the output of the ssh-keygen -l -E md5 -f my-new-server-key command."
  type        = string
}
variable "invocation_role" {
  description = "(Optional) Amazon Resource Name (ARN) of the IAM role used to authenticate the user account with an identity_provider_type of API_GATEWAY."
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Optional) The VPC ID of the virtual private cloud in which the SFTP server's endpoint will be hosted. This property can only be used when endpoint_type is set to VPC.Workflow Details"
  type        = string
  default     = ""
}
variable "endpoint_details" {
  description = "(Optional) The virtual private cloud (VPC) endpoint settings that you want to configure for your SFTP server. Fields documented below."
  type        = string
  default     = ""
}
variable "endpoint_type" {
  description = "(Optional) The type of endpoint that you want your SFTP server connect to. If you connect to a VPC (or VPC_ENDPOINT), your SFTP server isn't accessible over the public internet. If you want to connect your SFTP server via public internet, set PUBLIC.  Defaults to PUBLIC."
  type        = string
  default     = ""
}
variable "function" {
  description = "(Optional) The ARN for a lambda function to use for the Identity provider."
  type        = string
  default     = ""
}
variable "id" {
  description = "  - The Server ID of the Transfer Server (e.g., s-12345678)"
  type        = string
}
variable "logging_role" {
  description = "(Optional) Amazon Resource Name (ARN) of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Optional) A list of security groups IDs that are available to attach to your server's endpoint. If no security groups are specified, the VPC's default security groups are automatically assigned to your endpoint. This property can only be used when endpoint_type is set to VPC."
  type        = string
  default     = ""
}
variable "workflow_details" {
  description = "(Optional) Specifies the workflow details. See Workflow Details below.Endpoint Details"
  type        = string
  default     = ""
}
variable "AS2" {
  description = ": File transfer over Applicability Statement 2"
  type        = string
}
variable "execution_role" {
  description = "(Required) Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can assume, so that all workflow steps can operate on the required resources."
  type        = string
}
variable "force_destroy" {
  description = "(Optional) A boolean that indicates all users associated with the server should be deleted so that the Server can be destroyed without error. The default value is false. This option only applies to servers configured with a SERVICE_MANAGED identity_provider_type."
  type        = string
  default     = ""
}
variable "pre_authentication_login_banner" {
  description = "- (Optional) Specify a string to display when users connect to a server. This string is displayed before the user authenticates."
  type        = string
  default     = ""
}
variable "protocols" {
  description = "(Optional) Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. This defaults to SFTP"
  type        = string
  default     = ""
}
variable "url" {
  description = "(Optional) - URL of the service endpoint used to authenticate users with an identity_provider_type of API_GATEWAY."
  type        = string
  default     = ""
}
variable "vpc_endpoint_id" {
  description = "(Optional) The ID of the VPC endpoint. This property can only be used when endpoint_type is set to VPC_ENDPOINT"
  type        = string
  default     = ""
}
variable "SFTP" {
  description = ": File transfer over SSH"
  type        = string
}
variable "identity_provider_type" {
  description = "(Optional) The mode of authentication enabled for this service. The default value is SERVICE_MANAGED, which allows you to store and access SFTP user credentials within the service. API_GATEWAY indicates that user authentication requires a call to an API Gateway endpoint URL provided by you to integrate an identity provider of your choice. Using AWS_DIRECTORY_SERVICE will allow for authentication against AWS Managed Active Directory or Microsoft Active Directory in your on-premises environment, or in AWS using AD Connectors. Use the AWS_LAMBDA value to directly use a Lambda function as your identity provider. If you choose this value, you must specify the ARN for the lambda function in the function argument."
  type        = string
  default     = ""
}
variable "on_upload" {
  description = "(Optional) A trigger that starts a workflow: the workflow begins to execute after a file is uploaded. See Workflow Detail below.Workflow Detail"
  type        = string
  default     = ""
}
variable "post_authentication_login_banner" {
  description = "- (Optional) Specify a string to display when users connect to a server. This string is displayed after the user authenticates. The SFTP protocol does not support post-authentication display banners."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Optional) A list of subnet IDs that are required to host your SFTP server endpoint in your VPC. This property can only be used when endpoint_type is set to VPC."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "address_allocation_ids" {
  description = "(Optional) A list of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint. This property can only be used when endpoint_type is set to VPC."
  type        = string
  default     = ""
}
variable "host_key" {
  description = "(Optional) RSA private key (e.g., as generated by the ssh-keygen -N \"\" -m PEM -f my-new-server-key command)."
  type        = string
  default     = ""
}
variable "security_policy_name" {
  description = "(Optional) Specifies the name of the security policy that is attached to the server. Possible values are TransferSecurityPolicy-2018-11, TransferSecurityPolicy-2020-06, TransferSecurityPolicy-FIPS-2020-06 and TransferSecurityPolicy-2022-03. Default value is: TransferSecurityPolicy-2018-11."
  type        = string
  default     = ""
}
variable "certificate" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. This is required when protocols is set to FTPS"
  type        = string
  default     = ""
}
variable "domain" {
  description = "(Optional) The domain of the storage system that is used for file transfers. Valid values are: S3 and EFS. The default value is S3."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "The endpoint of the Transfer Server (e.g., s-12345678.server.transfer.REGION.amazonaws.com)"
  type        = string
}
variable "workflow_id" {
  description = "(Required)  A unique identifier for the workflow.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "FTP" {
  description = ": Unencrypted file transfer"
  type        = string
}
variable "directory_id" {
  description = "(Optional) The directory service ID of the directory service you want to connect to with an identity_provider_type of AWS_DIRECTORY_SERVICE."
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
output "certificate" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. This is required when protocols is set to FTPS"
  value       = aws_transfer_server.aws_transfer_server.certificate
}
output "domain" {
  description = "(Optional) The domain of the storage system that is used for file transfers. Valid values are: S3 and EFS. The default value is S3."
  value       = aws_transfer_server.aws_transfer_server.domain
}
output "security_policy_name" {
  description = "(Optional) Specifies the name of the security policy that is attached to the server. Possible values are TransferSecurityPolicy-2018-11, TransferSecurityPolicy-2020-06, TransferSecurityPolicy-FIPS-2020-06 and TransferSecurityPolicy-2022-03. Default value is: TransferSecurityPolicy-2018-11."
  value       = aws_transfer_server.aws_transfer_server.security_policy_name
}
output "FTP" {
  description = ": Unencrypted file transfer"
  value       = aws_transfer_server.aws_transfer_server.FTP
}
output "directory_id" {
  description = "(Optional) The directory service ID of the directory service you want to connect to with an identity_provider_type of AWS_DIRECTORY_SERVICE."
  value       = aws_transfer_server.aws_transfer_server.directory_id
}
output "endpoint" {
  description = "The endpoint of the Transfer Server (e.g., s-12345678.server.transfer.REGION.amazonaws.com)"
  value       = aws_transfer_server.aws_transfer_server.endpoint
}
output "workflow_id" {
  description = "(Required)  A unique identifier for the workflow.In addition to all arguments above, the following attributes are exported:"
  value       = aws_transfer_server.aws_transfer_server.workflow_id
}
output "FTPS" {
  description = ": File transfer with TLS encryption"
  value       = aws_transfer_server.aws_transfer_server.FTPS
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Transfer Server"
  value       = aws_transfer_server.aws_transfer_server.arn
}
output "endpoint_details" {
  description = "(Optional) The virtual private cloud (VPC) endpoint settings that you want to configure for your SFTP server. Fields documented below."
  value       = aws_transfer_server.aws_transfer_server.endpoint_details
}
output "endpoint_type" {
  description = "(Optional) The type of endpoint that you want your SFTP server connect to. If you connect to a VPC (or VPC_ENDPOINT), your SFTP server isn't accessible over the public internet. If you want to connect your SFTP server via public internet, set PUBLIC.  Defaults to PUBLIC."
  value       = aws_transfer_server.aws_transfer_server.endpoint_type
}
output "host_key_fingerprint" {
  description = "This value contains the message-digest algorithm (MD5) hash of the server's host key. This value is equivalent to the output of the ssh-keygen -l -E md5 -f my-new-server-key command."
  value       = aws_transfer_server.aws_transfer_server.host_key_fingerprint
}
output "invocation_role" {
  description = "(Optional) Amazon Resource Name (ARN) of the IAM role used to authenticate the user account with an identity_provider_type of API_GATEWAY."
  value       = aws_transfer_server.aws_transfer_server.invocation_role
}
output "vpc_id" {
  description = "(Optional) The VPC ID of the virtual private cloud in which the SFTP server's endpoint will be hosted. This property can only be used when endpoint_type is set to VPC.Workflow Details"
  value       = aws_transfer_server.aws_transfer_server.vpc_id
}
output "AS2" {
  description = ": File transfer over Applicability Statement 2"
  value       = aws_transfer_server.aws_transfer_server.AS2
}
output "execution_role" {
  description = "(Required) Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can assume, so that all workflow steps can operate on the required resources."
  value       = aws_transfer_server.aws_transfer_server.execution_role
}
output "function" {
  description = "(Optional) The ARN for a lambda function to use for the Identity provider."
  value       = aws_transfer_server.aws_transfer_server.function
}
output "id" {
  description = "  - The Server ID of the Transfer Server (e.g., s-12345678)"
  value       = aws_transfer_server.aws_transfer_server.id
}
output "logging_role" {
  description = "(Optional) Amazon Resource Name (ARN) of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes."
  value       = aws_transfer_server.aws_transfer_server.logging_role
}
output "security_group_ids" {
  description = "(Optional) A list of security groups IDs that are available to attach to your server's endpoint. If no security groups are specified, the VPC's default security groups are automatically assigned to your endpoint. This property can only be used when endpoint_type is set to VPC."
  value       = aws_transfer_server.aws_transfer_server.security_group_ids
}
output "workflow_details" {
  description = "(Optional) Specifies the workflow details. See Workflow Details below.Endpoint Details"
  value       = aws_transfer_server.aws_transfer_server.workflow_details
}
output "force_destroy" {
  description = "(Optional) A boolean that indicates all users associated with the server should be deleted so that the Server can be destroyed without error. The default value is false. This option only applies to servers configured with a SERVICE_MANAGED identity_provider_type."
  value       = aws_transfer_server.aws_transfer_server.force_destroy
}
output "pre_authentication_login_banner" {
  description = "- (Optional) Specify a string to display when users connect to a server. This string is displayed before the user authenticates."
  value       = aws_transfer_server.aws_transfer_server.pre_authentication_login_banner
}
output "SFTP" {
  description = ": File transfer over SSH"
  value       = aws_transfer_server.aws_transfer_server.SFTP
}
output "identity_provider_type" {
  description = "(Optional) The mode of authentication enabled for this service. The default value is SERVICE_MANAGED, which allows you to store and access SFTP user credentials within the service. API_GATEWAY indicates that user authentication requires a call to an API Gateway endpoint URL provided by you to integrate an identity provider of your choice. Using AWS_DIRECTORY_SERVICE will allow for authentication against AWS Managed Active Directory or Microsoft Active Directory in your on-premises environment, or in AWS using AD Connectors. Use the AWS_LAMBDA value to directly use a Lambda function as your identity provider. If you choose this value, you must specify the ARN for the lambda function in the function argument."
  value       = aws_transfer_server.aws_transfer_server.identity_provider_type
}
output "protocols" {
  description = "(Optional) Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. This defaults to SFTP"
  value       = aws_transfer_server.aws_transfer_server.protocols
}
output "url" {
  description = "(Optional) - URL of the service endpoint used to authenticate users with an identity_provider_type of API_GATEWAY."
  value       = aws_transfer_server.aws_transfer_server.url
}
output "vpc_endpoint_id" {
  description = "(Optional) The ID of the VPC endpoint. This property can only be used when endpoint_type is set to VPC_ENDPOINT"
  value       = aws_transfer_server.aws_transfer_server.vpc_endpoint_id
}
output "address_allocation_ids" {
  description = "(Optional) A list of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint. This property can only be used when endpoint_type is set to VPC."
  value       = aws_transfer_server.aws_transfer_server.address_allocation_ids
}
output "host_key" {
  description = "(Optional) RSA private key (e.g., as generated by the ssh-keygen -N \"\" -m PEM -f my-new-server-key command)."
  value       = aws_transfer_server.aws_transfer_server.host_key
}
output "on_upload" {
  description = "(Optional) A trigger that starts a workflow: the workflow begins to execute after a file is uploaded. See Workflow Detail below.Workflow Detail"
  value       = aws_transfer_server.aws_transfer_server.on_upload
}
output "post_authentication_login_banner" {
  description = "- (Optional) Specify a string to display when users connect to a server. This string is displayed after the user authenticates. The SFTP protocol does not support post-authentication display banners."
  value       = aws_transfer_server.aws_transfer_server.post_authentication_login_banner
}
output "subnet_ids" {
  description = "(Optional) A list of subnet IDs that are required to host your SFTP server endpoint in your VPC. This property can only be used when endpoint_type is set to VPC."
  value       = aws_transfer_server.aws_transfer_server.subnet_ids
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_transfer_server.aws_transfer_server.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Transfer Server"
  value       = aws_transfer_server.aws_transfer_server.arn
}
output "endpoint" {
  description = "The endpoint of the Transfer Server (e.g., s-12345678.server.transfer.REGION.amazonaws.com)"
  value       = aws_transfer_server.aws_transfer_server.endpoint
}
output "host_key_fingerprint" {
  description = "This value contains the message-digest algorithm (MD5) hash of the server's host key. This value is equivalent to the output of the ssh-keygen -l -E md5 -f my-new-server-key command."
  value       = aws_transfer_server.aws_transfer_server.host_key_fingerprint
}
output "id" {
  description = "  - The Server ID of the Transfer Server (e.g., s-12345678)"
  value       = aws_transfer_server.aws_transfer_server.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_transfer_server.aws_transfer_server.tags_all
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
      "kind/name"                   = "aws_transfer_server"
      "kind/version"                = "v0.1.0"
    }
  }
}
