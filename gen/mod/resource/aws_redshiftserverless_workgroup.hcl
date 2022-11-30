resource "aws_redshiftserverless_workgroup" "aws_redshiftserverless_workgroup" {
  subnet_ids           = var.subnet_ids
  config_parameter     = var.config_parameter
  private_ip_address   = var.private_ip_address
  publicly_accessible  = var.publicly_accessible
  port                 = var.port
  security_group_ids   = var.security_group_ids
  vpc_id               = var.vpc_id
  address              = var.address
  base_capacity        = var.base_capacity
  network_interface    = var.network_interface
  id                   = var.id
  parameter_value      = var.parameter_value
  vpc_endpoint_id      = var.vpc_endpoint_id
  workgroup_id         = var.workgroup_id
  availability_zone    = var.availability_zone
  endpoint             = var.endpoint
  enhanced_vpc_routing = var.enhanced_vpc_routing
  tags                 = var.tags
  tags_all             = var.tags_all
  vpc_endpoint         = var.vpc_endpoint
  workgroup_name       = var.workgroup_name
  arn                  = var.arn
  network_interface_id = var.network_interface_id
  parameter_key        = var.parameter_key
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "availability_zone" {
  description = "The availability Zone."
  type        = string
}
variable "endpoint" {
  description = "The endpoint that is created from the workgroup. See Endpoint below."
  type        = string
}
variable "enhanced_vpc_routing" {
  description = "(Optional) The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet."
  type        = string
}
variable "id" {
  description = "The Redshift Workgroup Name."
  type        = string
}
variable "parameter_value" {
  description = "(Required) The value of the parameter to set.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpc_endpoint_id" {
  description = "The DNS address of the VPC endpoint."
  type        = string
}
variable "workgroup_id" {
  description = "The Redshift Workgroup ID."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Workgroup."
  type        = string
}
variable "network_interface_id" {
  description = "The unique identifier of the network interface."
  type        = string
}
variable "parameter_key" {
  description = "(Required) The key of the parameter. The options are datestyle, enable_user_activity_logging, query_group, search_path, and max_query_execution_time."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Config Parameter"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Endpoint"
  type        = string
}
variable "vpc_endpoint" {
  description = "The VPC endpoint or the Redshift Serverless workgroup. See VPC Endpoint below.VPC Endpoint"
  type        = string
}
variable "workgroup_name" {
  description = "(Required) The name of the workgroup."
  type        = string
}
variable "config_parameter" {
  description = "(Optional) An array of parameters to set for more control over a serverless database. See Config Parameter below."
  type        = string
}
variable "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  type        = string
}
variable "publicly_accessible" {
  description = "(Optional) A value that specifies whether the workgroup can be accessed from a public network."
  type        = string
}
variable "subnet_ids" {
  description = "(Optional) An array of VPC subnet IDs to associate with the workgroup."
  type        = string
}
variable "address" {
  description = "The DNS address of the VPC endpoint."
  type        = string
}
variable "base_capacity" {
  description = "(Optional) The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs)."
  type        = string
}
variable "network_interface" {
  description = "The network interfaces of the endpoint.. See Network Interface below.Network Interface"
  type        = string
}
variable "port" {
  description = "The port that Amazon Redshift Serverless listens on."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) An array of security group IDs to associate with the workgroup."
  type        = string
}
variable "vpc_id" {
  description = "The port that Amazon Redshift Serverless listens on."
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
output "parameter_value" {
  description = "(Required) The value of the parameter to set.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.parameter_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_id" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.vpc_endpoint_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workgroup_id" {
  description = "The Redshift Workgroup ID."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.workgroup_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The availability Zone."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "The endpoint that is created from the workgroup. See Endpoint below."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enhanced_vpc_routing" {
  description = "(Optional) The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.enhanced_vpc_routing
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Redshift Workgroup Name."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Endpoint"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint" {
  description = "The VPC endpoint or the Redshift Serverless workgroup. See VPC Endpoint below.VPC Endpoint"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.vpc_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workgroup_name" {
  description = "(Required) The name of the workgroup."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.workgroup_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Workgroup."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "The unique identifier of the network interface."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_key" {
  description = "(Required) The key of the parameter. The options are datestyle, enable_user_activity_logging, query_group, search_path, and max_query_execution_time."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.parameter_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Config Parameter"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "config_parameter" {
  description = "(Optional) An array of parameters to set for more control over a serverless database. See Config Parameter below."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.config_parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.private_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "publicly_accessible" {
  description = "(Optional) A value that specifies whether the workgroup can be accessed from a public network."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.publicly_accessible
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Optional) An array of VPC subnet IDs to associate with the workgroup."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) An array of security group IDs to associate with the workgroup."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "base_capacity" {
  description = "(Optional) The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs)."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.base_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface" {
  description = "The network interfaces of the endpoint.. See Network Interface below.Network Interface"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.network_interface
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Workgroup."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Redshift Workgroup Name."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Endpoint"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint" {
  description = "The VPC endpoint or the Redshift Serverless workgroup. See VPC Endpoint below.VPC Endpoint"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.vpc_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_id" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.vpc_endpoint_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The availability Zone."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "The endpoint that is created from the workgroup. See Endpoint below."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.private_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "The unique identifier of the subnet."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workgroup_id" {
  description = "The Redshift Workgroup ID."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.workgroup_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface" {
  description = "The network interfaces of the endpoint.. See Network Interface below.Network Interface"
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.network_interface
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "The unique identifier of the network interface."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_workgroup.aws_redshiftserverless_workgroup.vpc_id
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
      "kind/name"                   = "aws_redshiftserverless_workgroup"
      "kind/version"                = "v0.1.0"
    }
  }
}
