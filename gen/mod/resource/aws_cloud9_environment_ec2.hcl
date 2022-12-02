resource "aws_cloud9_environment_ec2" "aws_cloud9_environment_ec2" {
  tags                                                      = var.tags
  tags_all                                                  = var.tags_all
  connection_type                                           = var.connection_type
  owner_arn                                                 = var.owner_arn
  resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64  = var.resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64
  subnet_id                                                 = var.subnet_id
  resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64 = var.resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64
  amazonlinux-2-x86_64                                      = var.amazonlinux-2-x86_64
  description                                               = var.description
  id                                                        = var.id
  instance_type                                             = var.instance_type
  arn                                                       = var.arn
  name                                                      = var.name
  resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64 = var.resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64
  ubuntu-18.04-x86_64                                       = var.ubuntu-18.04-x86_64
  amazonlinux-1-x86_64                                      = var.amazonlinux-1-x86_64
  automatic_stop_time_minutes                               = var.automatic_stop_time_minutes
  image_id                                                  = var.image_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "amazonlinux-2-x86_64" {
  description = ""
  type        = string
}
variable "description" {
  description = "(Optional) The description of the environment."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the environment."
  type        = string
}
variable "instance_type" {
  description = "(Required) The type of instance to connect to the environment, e.g., t2.micro."
  type        = string
}
variable "resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64" {
  description = ""
  type        = string
}
variable "arn" {
  description = "The ARN of the environment."
  type        = string
}
variable "name" {
  description = "(Required) The name of the environment."
  type        = string
}
variable "resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64" {
  description = ""
  type        = string
}
variable "ubuntu-18.04-x86_64" {
  description = ""
  type        = string
}
variable "amazonlinux-1-x86_64" {
  description = ""
  type        = string
}
variable "automatic_stop_time_minutes" {
  description = "(Optional) The number of minutes until the running instance is shut down after the environment has last been used."
  type        = string
  default     = ""
}
variable "image_id" {
  description = "(Optional) The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance. Valid values are\n"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "connection_type" {
  description = "(Optional) The connection type used for connecting to an Amazon EC2 environment. Valid values are CONNECT_SSH and CONNECT_SSM. For more information please refer AWS documentation for Cloud9."
  type        = string
  default     = ""
}
variable "owner_arn" {
  description = "(Optional) The ARN of the environment owner. This can be ARN of any AWS IAM principal. Defaults to the environment's creator."
  type        = string
  default     = ""
}
variable "resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64" {
  description = ""
  type        = string
}
variable "subnet_id" {
  description = "(Optional) The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "amazonlinux-1-x86_64" {
  description = ""
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.amazonlinux-1-x86_64
}
output "automatic_stop_time_minutes" {
  description = "(Optional) The number of minutes until the running instance is shut down after the environment has last been used."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.automatic_stop_time_minutes
}
output "image_id" {
  description = "(Optional) The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance. Valid values are\n"
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.image_id
}
output "connection_type" {
  description = "(Optional) The connection type used for connecting to an Amazon EC2 environment. Valid values are CONNECT_SSH and CONNECT_SSM. For more information please refer AWS documentation for Cloud9."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.connection_type
}
output "owner_arn" {
  description = "(Optional) The ARN of the environment owner. This can be ARN of any AWS IAM principal. Defaults to the environment's creator."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.owner_arn
}
output "resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64" {
  description = ""
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64
}
output "subnet_id" {
  description = "(Optional) The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.subnet_id
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.tags_all
}
output "amazonlinux-2-x86_64" {
  description = ""
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.amazonlinux-2-x86_64
}
output "description" {
  description = "(Optional) The description of the environment."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.description
}
output "id" {
  description = "The ID of the environment."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.id
}
output "instance_type" {
  description = "(Required) The type of instance to connect to the environment, e.g., t2.micro."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.instance_type
}
output "resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64" {
  description = ""
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64
}
output "arn" {
  description = "The ARN of the environment."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.arn
}
output "name" {
  description = "(Required) The name of the environment."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.name
}
output "resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64" {
  description = ""
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64
}
output "ubuntu-18.04-x86_64" {
  description = ""
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.ubuntu-18.04-x86_64
}
output "arn" {
  description = "The ARN of the environment."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.arn
}
output "id" {
  description = "The ID of the environment."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloud9_environment_ec2.aws_cloud9_environment_ec2.tags_all
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
      "kind/name"                   = "aws_cloud9_environment_ec2"
      "kind/version"                = "v0.1.0"
    }
  }
}
