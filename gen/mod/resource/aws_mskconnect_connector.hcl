resource "aws_mskconnect_connector" "aws_mskconnect_connector" {
  kafka_cluster                       = var.kafka_cluster
  plugin                              = var.plugin
  revision                            = var.revision
  service_execution_role_arn          = var.service_execution_role_arn
  apache_kafka_cluster                = var.apache_kafka_cluster
  autoscaling                         = var.autoscaling
  delivery_stream                     = var.delivery_stream
  firehose                            = var.firehose
  worker_configuration                = var.worker_configuration
  subnets                             = var.subnets
  vpc                                 = var.vpc
  kafka_cluster_client_authentication = var.kafka_cluster_client_authentication
  max_worker_count                    = var.max_worker_count
  name                                = var.name
  security_groups                     = var.security_groups
  capacity                            = var.capacity
  description                         = var.description
  provisioned_capacity                = var.provisioned_capacity
  enabled                             = var.enabled
  encryption_type                     = var.encryption_type
  kafka_cluster_encryption_in_transit = var.kafka_cluster_encryption_in_transit
  kafkaconnect_version                = var.kafkaconnect_version
  bucket                              = var.bucket
  cloudwatch_logs                     = var.cloudwatch_logs
  cpu_utilization_percentage          = var.cpu_utilization_percentage
  custom_plugin                       = var.custom_plugin
  scale_out_policy                    = var.scale_out_policy
  mcu_count                           = var.mcu_count
  scale_in_policy                     = var.scale_in_policy
  arn                                 = var.arn
  bootstrap_servers                   = var.bootstrap_servers
  create                              = var.create
  log_group                           = var.log_group
  prefix                              = var.prefix
  update                              = var.update
  connector_configuration             = var.connector_configuration
  log_delivery                        = var.log_delivery
  s3                                  = var.s3
  worker_log_delivery                 = var.worker_log_delivery
  authentication_type                 = var.authentication_type
  min_worker_count                    = var.min_worker_count
  version                             = var.version
  worker_count                        = var.worker_count
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) The name of the connector."
  type        = string
}
variable "security_groups" {
  description = "(Required) The security groups for the connector."
  type        = string
}
variable "subnets" {
  description = "(Required) The subnets for the connector.kafka_cluster_client_authentication Configuration Block"
  type        = string
}
variable "vpc" {
  description = "(Required) Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.vpc Configuration Block"
  type        = string
}
variable "kafka_cluster_client_authentication" {
  description = "(Required) Details of the client authentication used by the Apache Kafka cluster. See below."
  type        = string
}
variable "max_worker_count" {
  description = "(Required) The maximum number of workers allocated to the connector."
  type        = string
}
variable "provisioned_capacity" {
  description = "(Optional) Details about a fixed capacity allocated to a connector. See below.autoscaling Configuration Block"
  type        = string
  default     = ""
}
variable "capacity" {
  description = "(Required) Information about the capacity allocated to the connector. See below."
  type        = string
}
variable "description" {
  description = "(Optional) A summary description of the connector."
  type        = string
  default     = ""
}
variable "cpu_utilization_percentage" {
  description = "(Required) The CPU utilization percentage threshold at which you want connector scale out to be triggered.provisioned_capacity Configuration Block"
  type        = string
}
variable "custom_plugin" {
  description = "(Required) Details about a custom plugin. See below.custom_plugin Configuration Block"
  type        = string
}
variable "enabled" {
  description = "(Required) Specifies whether connector logs get sent to the specified Amazon S3 destination."
  type        = string
}
variable "encryption_type" {
  description = "(Optional) The type of encryption in transit to the Apache Kafka cluster. Valid values: PLAINTEXT, TLS. The default values is PLAINTEXT.log_delivery Configuration Block"
  type        = string
  default     = ""
}
variable "kafka_cluster_encryption_in_transit" {
  description = "(Required) Details of encryption in transit to the Apache Kafka cluster. See below."
  type        = string
}
variable "kafkaconnect_version" {
  description = "(Required) The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins."
  type        = string
}
variable "bucket" {
  description = "(Optional) The name of the S3 bucket that is the destination for log delivery."
  type        = string
  default     = ""
}
variable "cloudwatch_logs" {
  description = "(Optional) Details about delivering logs to Amazon CloudWatch Logs. See below."
  type        = string
  default     = ""
}
variable "scale_out_policy" {
  description = "(Optional) The scale-out policy for the connector. See below.scale_in_policy Configuration Block"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 20m)"
  type        = string
}
variable "log_group" {
  description = "(Required) The name of the CloudWatch log group that is the destination for log delivery.firehose Configuration Block"
  type        = string
}
variable "mcu_count" {
  description = "(Optional) The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: 1, 2, 4, 8. The default value is 1."
  type        = string
  default     = ""
}
variable "scale_in_policy" {
  description = "(Optional) The scale-in policy for the connector. See below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the connector."
  type        = string
}
variable "bootstrap_servers" {
  description = "(Required) The bootstrap servers of the cluster."
  type        = string
}
variable "prefix" {
  description = "(Optional) The S3 prefix that is the destination for log delivery.plugin Configuration Block"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 20m)"
  type        = string
}
variable "s3" {
  description = "(Optional) Details about delivering logs to Amazon S3. See below.cloudwatch_logs Configuration Block"
  type        = string
  default     = ""
}
variable "worker_log_delivery" {
  description = "(Required) The workers can send worker logs to different destination types. This configuration specifies the details of these destinations. See below.worker_log_delivery Configuration Block"
  type        = string
}
variable "connector_configuration" {
  description = "(Required) A map of keys to values that represent the configuration for the connector."
  type        = string
}
variable "log_delivery" {
  description = "(Optional) Details about log delivery. See below."
  type        = string
  default     = ""
}
variable "version" {
  description = "The current version of the connector.TimeoutsConfiguration options:"
  type        = string
}
variable "worker_count" {
  description = "(Required) The number of workers that are allocated to the connector.kafka_cluster Configuration Block"
  type        = string
}
variable "authentication_type" {
  description = "(Optional) The type of client authentication used to connect to the Apache Kafka cluster. Valid values: IAM, NONE. A value of NONE means that no client authentication is used. The default value is NONE.kafka_cluster_encryption_in_transit Configuration Block"
  type        = string
  default     = ""
}
variable "min_worker_count" {
  description = "(Required) The minimum number of workers allocated to the connector."
  type        = string
}
variable "delivery_stream" {
  description = "(Optional) The name of the Kinesis Data Firehose delivery stream that is the destination for log delivery."
  type        = string
  default     = ""
}
variable "firehose" {
  description = "(Optional) Details about delivering logs to Amazon Kinesis Data Firehose. See below."
  type        = string
  default     = ""
}
variable "kafka_cluster" {
  description = "(Required) Specifies which Apache Kafka cluster to connect to. See below."
  type        = string
}
variable "plugin" {
  description = "(Required) Specifies which plugins to use for the connector. See below."
  type        = string
}
variable "revision" {
  description = "(Required) The revision of the worker configuration.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "service_execution_role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket."
  type        = string
}
variable "apache_kafka_cluster" {
  description = "(Required) The Apache Kafka cluster to which the connector is connected.apache_kafka_cluster Configuration Block"
  type        = string
}
variable "autoscaling" {
  description = "(Optional) Information about the auto scaling parameters for the connector. See below."
  type        = string
  default     = ""
}
variable "worker_configuration" {
  description = "(Optional) Specifies which worker configuration to use with the connector. See below.capacity Configuration Block"
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
output "service_execution_role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.service_execution_role_arn
}
output "apache_kafka_cluster" {
  description = "(Required) The Apache Kafka cluster to which the connector is connected.apache_kafka_cluster Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.apache_kafka_cluster
}
output "autoscaling" {
  description = "(Optional) Information about the auto scaling parameters for the connector. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.autoscaling
}
output "delivery_stream" {
  description = "(Optional) The name of the Kinesis Data Firehose delivery stream that is the destination for log delivery."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.delivery_stream
}
output "firehose" {
  description = "(Optional) Details about delivering logs to Amazon Kinesis Data Firehose. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.firehose
}
output "kafka_cluster" {
  description = "(Required) Specifies which Apache Kafka cluster to connect to. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.kafka_cluster
}
output "plugin" {
  description = "(Required) Specifies which plugins to use for the connector. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.plugin
}
output "revision" {
  description = "(Required) The revision of the worker configuration.In addition to all arguments above, the following attributes are exported:"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.revision
}
output "worker_configuration" {
  description = "(Optional) Specifies which worker configuration to use with the connector. See below.capacity Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.worker_configuration
}
output "kafka_cluster_client_authentication" {
  description = "(Required) Details of the client authentication used by the Apache Kafka cluster. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.kafka_cluster_client_authentication
}
output "max_worker_count" {
  description = "(Required) The maximum number of workers allocated to the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.max_worker_count
}
output "name" {
  description = "(Required) The name of the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.name
}
output "security_groups" {
  description = "(Required) The security groups for the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.security_groups
}
output "subnets" {
  description = "(Required) The subnets for the connector.kafka_cluster_client_authentication Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.subnets
}
output "vpc" {
  description = "(Required) Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.vpc Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.vpc
}
output "capacity" {
  description = "(Required) Information about the capacity allocated to the connector. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.capacity
}
output "description" {
  description = "(Optional) A summary description of the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.description
}
output "provisioned_capacity" {
  description = "(Optional) Details about a fixed capacity allocated to a connector. See below.autoscaling Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.provisioned_capacity
}
output "kafkaconnect_version" {
  description = "(Required) The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.kafkaconnect_version
}
output "bucket" {
  description = "(Optional) The name of the S3 bucket that is the destination for log delivery."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.bucket
}
output "cloudwatch_logs" {
  description = "(Optional) Details about delivering logs to Amazon CloudWatch Logs. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.cloudwatch_logs
}
output "cpu_utilization_percentage" {
  description = "(Required) The CPU utilization percentage threshold at which you want connector scale out to be triggered.provisioned_capacity Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.cpu_utilization_percentage
}
output "custom_plugin" {
  description = "(Required) Details about a custom plugin. See below.custom_plugin Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.custom_plugin
}
output "enabled" {
  description = "(Required) Specifies whether connector logs get sent to the specified Amazon S3 destination."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.enabled
}
output "encryption_type" {
  description = "(Optional) The type of encryption in transit to the Apache Kafka cluster. Valid values: PLAINTEXT, TLS. The default values is PLAINTEXT.log_delivery Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.encryption_type
}
output "kafka_cluster_encryption_in_transit" {
  description = "(Required) Details of encryption in transit to the Apache Kafka cluster. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.kafka_cluster_encryption_in_transit
}
output "scale_out_policy" {
  description = "(Optional) The scale-out policy for the connector. See below.scale_in_policy Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.scale_out_policy
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.arn
}
output "bootstrap_servers" {
  description = "(Required) The bootstrap servers of the cluster."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.bootstrap_servers
}
output "create" {
  description = "(Default 20m)"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.create
}
output "log_group" {
  description = "(Required) The name of the CloudWatch log group that is the destination for log delivery.firehose Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.log_group
}
output "mcu_count" {
  description = "(Optional) The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: 1, 2, 4, 8. The default value is 1."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.mcu_count
}
output "scale_in_policy" {
  description = "(Optional) The scale-in policy for the connector. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.scale_in_policy
}
output "prefix" {
  description = "(Optional) The S3 prefix that is the destination for log delivery.plugin Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.prefix
}
output "update" {
  description = "(Default 20m)"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.update
}
output "connector_configuration" {
  description = "(Required) A map of keys to values that represent the configuration for the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.connector_configuration
}
output "log_delivery" {
  description = "(Optional) Details about log delivery. See below."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.log_delivery
}
output "s3" {
  description = "(Optional) Details about delivering logs to Amazon S3. See below.cloudwatch_logs Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.s3
}
output "worker_log_delivery" {
  description = "(Required) The workers can send worker logs to different destination types. This configuration specifies the details of these destinations. See below.worker_log_delivery Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.worker_log_delivery
}
output "authentication_type" {
  description = "(Optional) The type of client authentication used to connect to the Apache Kafka cluster. Valid values: IAM, NONE. A value of NONE means that no client authentication is used. The default value is NONE.kafka_cluster_encryption_in_transit Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.authentication_type
}
output "min_worker_count" {
  description = "(Required) The minimum number of workers allocated to the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.min_worker_count
}
output "version" {
  description = "The current version of the connector.TimeoutsConfiguration options:"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.version
}
output "worker_count" {
  description = "(Required) The number of workers that are allocated to the connector.kafka_cluster Configuration Block"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.worker_count
}
output "update" {
  description = "(Default 20m)"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.update
}
output "version" {
  description = "The current version of the connector.TimeoutsConfiguration options:"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.version
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.arn
}
output "create" {
  description = "(Default 20m)"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.delete
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
      "kind/name"                   = "aws_mskconnect_connector"
      "kind/version"                = "v0.1.0"
    }
  }
}
