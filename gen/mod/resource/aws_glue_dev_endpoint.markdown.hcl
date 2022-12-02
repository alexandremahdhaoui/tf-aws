resource "aws_glue_dev_endpoint.markdown" "aws_glue_dev_endpoint.markdown" {
  name                                   = var.name
  number_of_workers                      = var.number_of_workers
  security_configuration                 = var.security_configuration
  status                                 = var.status
  yarn_endpoint_address                  = var.yarn_endpoint_address
  arguments                              = var.arguments
  arn                                    = var.arn
  glue_version                           = var.glue_version
  subnet_id                              = var.subnet_id
  zeppelin_remote_spark_interpreter_port = var.zeppelin_remote_spark_interpreter_port
  number_of_nodes                        = var.number_of_nodes
  public_keys                            = var.public_keys
  role_arn                               = var.role_arn
  vpc_id                                 = var.vpc_id
  worker_type                            = var.worker_type
  availability_zone                      = var.availability_zone
  extra_jars_s3_path                     = var.extra_jars_s3_path
  failure_reason                         = var.failure_reason
  public_key                             = var.public_key
  security_group_ids                     = var.security_group_ids
  tags                                   = var.tags
  extra_python_libs_s3_path              = var.extra_python_libs_s3_path
  private_address                        = var.private_address
  public_address                         = var.public_address
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "yarn_endpoint_address" {
  description = "The YARN endpoint address used by this endpoint."
  type        = string
}
variable "arguments" {
  description = "(Optional) A map of arguments used to configure the endpoint."
  type        = string
}
variable "arn" {
  description = "The ARN of the endpoint."
  type        = string
}
variable "glue_version" {
  description = "(Optional) -  Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9."
  type        = string
}
variable "name" {
  description = "The name of the new endpoint."
  type        = string
}
variable "number_of_workers" {
  description = "(Optional) The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X."
  type        = string
}
variable "security_configuration" {
  description = "(Optional) The name of the Security Configuration structure to be used with this endpoint."
  type        = string
}
variable "status" {
  description = "The current status of this endpoint."
  type        = string
}
variable "number_of_nodes" {
  description = "(Optional) The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with worker_type."
  type        = string
}
variable "public_keys" {
  description = "(Optional) A list of public keys to be used by this endpoint for authentication."
  type        = string
}
variable "role_arn" {
  description = "(Required) The IAM role for this endpoint."
  type        = string
}
variable "subnet_id" {
  description = "(Optional) The subnet ID for the new endpoint to use."
  type        = string
}
variable "zeppelin_remote_spark_interpreter_port" {
  description = "The Apache Zeppelin port for the remote Apache Spark interpreter."
  type        = string
}
variable "availability_zone" {
  description = "The AWS availability zone where this endpoint is located."
  type        = string
}
variable "extra_jars_s3_path" {
  description = "(Optional) Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint."
  type        = string
}
variable "failure_reason" {
  description = "The reason for a current failure in this endpoint."
  type        = string
}
variable "vpc_id" {
  description = "he ID of the VPC used by this endpoint."
  type        = string
}
variable "worker_type" {
  description = "(Optional) The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "extra_python_libs_s3_path" {
  description = "(Optional) Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma."
  type        = string
}
variable "private_address" {
  description = "A private IP address to access the endpoint within a VPC, if this endpoint is created within one."
  type        = string
}
variable "public_address" {
  description = "The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint."
  type        = string
}
variable "public_key" {
  description = "(Optional) The public key to be used by this endpoint for authentication."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) Security group IDs for the security groups to be used by this endpoint."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "arguments" {
  description = "(Optional) A map of arguments used to configure the endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.arguments
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "glue_version" {
  description = "(Optional) -  Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.glue_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the new endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_of_workers" {
  description = "(Optional) The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.number_of_workers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_configuration" {
  description = "(Optional) The name of the Security Configuration structure to be used with this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.security_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "yarn_endpoint_address" {
  description = "The YARN endpoint address used by this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.yarn_endpoint_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_of_nodes" {
  description = "(Optional) The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with worker_type."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.number_of_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_keys" {
  description = "(Optional) A list of public keys to be used by this endpoint for authentication."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.public_keys
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) The IAM role for this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "(Optional) The subnet ID for the new endpoint to use."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zeppelin_remote_spark_interpreter_port" {
  description = "The Apache Zeppelin port for the remote Apache Spark interpreter."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.zeppelin_remote_spark_interpreter_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The AWS availability zone where this endpoint is located."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "extra_jars_s3_path" {
  description = "(Optional) Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.extra_jars_s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "failure_reason" {
  description = "The reason for a current failure in this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.failure_reason
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "he ID of the VPC used by this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "worker_type" {
  description = "(Optional) The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.worker_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "extra_python_libs_s3_path" {
  description = "(Optional) Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.extra_python_libs_s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_address" {
  description = "A private IP address to access the endpoint within a VPC, if this endpoint is created within one."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.private_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_address" {
  description = "The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.public_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_key" {
  description = "(Optional) The public key to be used by this endpoint for authentication."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.public_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) Security group IDs for the security groups to be used by this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "failure_reason" {
  description = "The reason for a current failure in this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.failure_reason
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zeppelin_remote_spark_interpreter_port" {
  description = "The Apache Zeppelin port for the remote Apache Spark interpreter."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.zeppelin_remote_spark_interpreter_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The AWS availability zone where this endpoint is located."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the new endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_address" {
  description = "A private IP address to access the endpoint within a VPC, if this endpoint is created within one."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.private_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_address" {
  description = "The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.public_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "he ID of the VPC used by this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "yarn_endpoint_address" {
  description = "The YARN endpoint address used by this endpoint."
  value       = aws_glue_dev_endpoint.markdown.aws_glue_dev_endpoint.markdown.yarn_endpoint_address
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
      "kind/name"                   = "aws_glue_dev_endpoint.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}