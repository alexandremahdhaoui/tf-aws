resource "aws_ec2_client_vpn_endpoint" "aws_ec2_client_vpn_endpoint" {
  status                         = var.status
  tags                           = var.tags
  type                           = var.type
  vpn_port                       = var.vpn_port
  security_group_ids             = var.security_group_ids
  client_cidr_block              = var.client_cidr_block
  authentication_options         = var.authentication_options
  root_certificate_chain_arn     = var.root_certificate_chain_arn
  transport_protocol             = var.transport_protocol
  description                    = var.description
  split_tunnel                   = var.split_tunnel
  cloudwatch_log_group           = var.cloudwatch_log_group
  enabled                        = var.enabled
  saml_provider_arn              = var.saml_provider_arn
  dns_servers                    = var.dns_servers
  client_connect_options         = var.client_connect_options
  client_login_banner_options    = var.client_login_banner_options
  id                             = var.id
  lambda_function_arn            = var.lambda_function_arn
  banner_text                    = var.banner_text
  cloudwatch_log_stream          = var.cloudwatch_log_stream
  connection_log_options         = var.connection_log_options
  dns_name                       = var.dns_name
  arn                            = var.arn
  self_service_portal            = var.self_service_portal
  self_service_saml_provider_arn = var.self_service_saml_provider_arn
  server_certificate_arn         = var.server_certificate_arn
  session_timeout_hours          = var.session_timeout_hours
  vpc_id                         = var.vpc_id
  active_directory_id            = var.active_directory_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the Client VPN endpoint."
  type        = string
}
variable "cloudwatch_log_stream" {
  description = "(Optional) The name of the CloudWatch Logs log stream to which the connection data is published."
  type        = string
  default     = ""
}
variable "connection_log_options" {
  description = "(Required) Information about the client connection logging options."
  type        = string
}
variable "dns_name" {
  description = "The DNS name to be used by clients when establishing their VPN session."
  type        = string
}
variable "session_timeout_hours" {
  description = "(Optional) The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is 24Valid values: 8 | 10 | 12 | 24"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Optional) The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied."
  type        = string
  default     = ""
}
variable "active_directory_id" {
  description = "(Optional) The ID of the Active Directory to be used for authentication if type is directory-service-authentication."
  type        = string
  default     = ""
}
variable "self_service_portal" {
  description = "(Optional) Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be enabled or disabled. Default value is disabled."
  type        = string
  default     = ""
}
variable "self_service_saml_provider_arn" {
  description = "(Optional) The ARN of the IAM SAML identity provider for the self service portal if type is federated-authentication."
  type        = string
  default     = ""
}
variable "server_certificate_arn" {
  description = "(Required) The ARN of the ACM server certificate."
  type        = string
}
variable "vpn_port" {
  description = "(Optional) The port number for the Client VPN endpoint. Valid values are 443 and 1194. Default value is 443.authentication_options Argument ReferenceOne of the following arguments must be supplied:"
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Optional) The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups."
  type        = string
  default     = ""
}
variable "status" {
  description = "strongDeprecated The current state of the Client VPN endpoint."
  type        = string
}
variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) The type of client authentication to be used. Specify certificate-authentication to use certificate-based authentication, directory-service-authentication to use Active Directory authentication, or federated-authentication to use Federated Authentication via SAML 2.0.client_connect_options Argument reference"
  type        = string
}
variable "authentication_options" {
  description = "(Required) Information about the authentication method to be used to authenticate clients."
  type        = string
}
variable "client_cidr_block" {
  description = "(Required) The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater."
  type        = string
}
variable "description" {
  description = "(Optional) A brief description of the Client VPN endpoint."
  type        = string
  default     = ""
}
variable "root_certificate_chain_arn" {
  description = "(Optional) The ARN of the client certificate. The certificate must be signed by a certificate authority (CA) and it must be provisioned in AWS Certificate Manager (ACM). Only necessary when type is set to certificate-authentication."
  type        = string
  default     = ""
}
variable "transport_protocol" {
  description = "(Optional) The transport protocol to be used by the VPN session. Default value is udp."
  type        = string
  default     = ""
}
variable "cloudwatch_log_group" {
  description = "(Optional) The name of the CloudWatch Logs log group."
  type        = string
  default     = ""
}
variable "split_tunnel" {
  description = "(Optional) Indicates whether split-tunnel is enabled on VPN endpoint. Default value is false."
  type        = string
  default     = ""
}
variable "dns_servers" {
  description = "(Optional) Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Required) Indicates whether connection logging is enabled.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "saml_provider_arn" {
  description = "(Optional) The ARN of the IAM SAML identity provider if type is federated-authentication."
  type        = string
  default     = ""
}
variable "lambda_function_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.client_login_banner_options Argument reference"
  type        = string
  default     = ""
}
variable "banner_text" {
  description = "(Optional) Customizable text that will be displayed in a banner on AWS provided clients when a VPN session is established. UTF-8 encoded characters only. Maximum of 1400 characters."
  type        = string
  default     = ""
}
variable "client_connect_options" {
  description = "(Optional) The options for managing connection authorization for new client connections."
  type        = string
  default     = ""
}
variable "client_login_banner_options" {
  description = "(Optional) Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the Client VPN endpoint."
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
output "security_group_ids" {
  description = "(Optional) The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.security_group_ids
}
output "status" {
  description = "strongDeprecated The current state of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.status
}
output "tags" {
  description = "(Optional) A mapping of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.tags
}
output "type" {
  description = "(Required) The type of client authentication to be used. Specify certificate-authentication to use certificate-based authentication, directory-service-authentication to use Active Directory authentication, or federated-authentication to use Federated Authentication via SAML 2.0.client_connect_options Argument reference"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.type
}
output "vpn_port" {
  description = "(Optional) The port number for the Client VPN endpoint. Valid values are 443 and 1194. Default value is 443.authentication_options Argument ReferenceOne of the following arguments must be supplied:"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.vpn_port
}
output "authentication_options" {
  description = "(Required) Information about the authentication method to be used to authenticate clients."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.authentication_options
}
output "client_cidr_block" {
  description = "(Required) The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_cidr_block
}
output "description" {
  description = "(Optional) A brief description of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.description
}
output "root_certificate_chain_arn" {
  description = "(Optional) The ARN of the client certificate. The certificate must be signed by a certificate authority (CA) and it must be provisioned in AWS Certificate Manager (ACM). Only necessary when type is set to certificate-authentication."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.root_certificate_chain_arn
}
output "transport_protocol" {
  description = "(Optional) The transport protocol to be used by the VPN session. Default value is udp."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.transport_protocol
}
output "cloudwatch_log_group" {
  description = "(Optional) The name of the CloudWatch Logs log group."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.cloudwatch_log_group
}
output "split_tunnel" {
  description = "(Optional) Indicates whether split-tunnel is enabled on VPN endpoint. Default value is false."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.split_tunnel
}
output "dns_servers" {
  description = "(Optional) Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.dns_servers
}
output "enabled" {
  description = "(Required) Indicates whether connection logging is enabled.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.enabled
}
output "saml_provider_arn" {
  description = "(Optional) The ARN of the IAM SAML identity provider if type is federated-authentication."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.saml_provider_arn
}
output "banner_text" {
  description = "(Optional) Customizable text that will be displayed in a banner on AWS provided clients when a VPN session is established. UTF-8 encoded characters only. Maximum of 1400 characters."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.banner_text
}
output "client_connect_options" {
  description = "(Optional) The options for managing connection authorization for new client connections."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_connect_options
}
output "client_login_banner_options" {
  description = "(Optional) Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.client_login_banner_options
}
output "id" {
  description = "The ID of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.id
}
output "lambda_function_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.client_login_banner_options Argument reference"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.lambda_function_arn
}
output "arn" {
  description = "The ARN of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.arn
}
output "cloudwatch_log_stream" {
  description = "(Optional) The name of the CloudWatch Logs log stream to which the connection data is published."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.cloudwatch_log_stream
}
output "connection_log_options" {
  description = "(Required) Information about the client connection logging options."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.connection_log_options
}
output "dns_name" {
  description = "The DNS name to be used by clients when establishing their VPN session."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.dns_name
}
output "active_directory_id" {
  description = "(Optional) The ID of the Active Directory to be used for authentication if type is directory-service-authentication."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.active_directory_id
}
output "self_service_portal" {
  description = "(Optional) Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be enabled or disabled. Default value is disabled."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.self_service_portal
}
output "self_service_saml_provider_arn" {
  description = "(Optional) The ARN of the IAM SAML identity provider for the self service portal if type is federated-authentication."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.self_service_saml_provider_arn
}
output "server_certificate_arn" {
  description = "(Required) The ARN of the ACM server certificate."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.server_certificate_arn
}
output "session_timeout_hours" {
  description = "(Optional) The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is 24Valid values: 8 | 10 | 12 | 24"
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.session_timeout_hours
}
output "vpc_id" {
  description = "(Optional) The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.vpc_id
}
output "arn" {
  description = "The ARN of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.arn
}
output "dns_name" {
  description = "The DNS name to be used by clients when establishing their VPN session."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.dns_name
}
output "id" {
  description = "The ID of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.id
}
output "status" {
  description = "strongDeprecated The current state of the Client VPN endpoint."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_client_vpn_endpoint.aws_ec2_client_vpn_endpoint.tags_all
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
      "kind/name"                   = "aws_ec2_client_vpn_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
