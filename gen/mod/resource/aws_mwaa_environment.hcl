resource "aws_mwaa_environment" "aws_mwaa_environment" {
  plugins_s3_object_version                                                      = var.plugins_s3_object_version
  update                                                                         = var.update
  webserver_url                                                                  = var.webserver_url
  arn                                                                            = var.arn
  logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn = var.logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn
  name                                                                           = var.name
  status                                                                         = var.status
  subnet_ids                                                                     = var.subnet_ids
  weekly_maintenance_window_start                                                = var.weekly_maintenance_window_start
  dag_processing_logs                                                            = var.dag_processing_logs
  logging_configuration                                                          = var.logging_configuration
  log_level                                                                      = var.log_level
  task_logs                                                                      = var.task_logs
  webserver_access_mode                                                          = var.webserver_access_mode
  airflow_configuration_options                                                  = var.airflow_configuration_options
  create                                                                         = var.create
  environment_class                                                              = var.environment_class
  max_workers                                                                    = var.max_workers
  min_workers                                                                    = var.min_workers
  tags_all                                                                       = var.tags_all
  security_group_ids                                                             = var.security_group_ids
  source_bucket_arn                                                              = var.source_bucket_arn
  airflow_version                                                                = var.airflow_version
  created_at                                                                     = var.created_at
  dag_s3_path                                                                    = var.dag_s3_path
  execution_role_arn                                                             = var.execution_role_arn
  kms_key                                                                        = var.kms_key
  schedulers                                                                     = var.schedulers
  enabled                                                                        = var.enabled
  plugins_s3_path                                                                = var.plugins_s3_path
  requirements_s3_object_version                                                 = var.requirements_s3_object_version
  requirements_s3_path                                                           = var.requirements_s3_path
  service_role_arn                                                               = var.service_role_arn
  worker_logs                                                                    = var.worker_logs
  network_configuration                                                          = var.network_configuration
  scheduler_logs                                                                 = var.scheduler_logs
  tags                                                                           = var.tags
  webserver_logs                                                                 = var.webserver_logs
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "logging_configuration" {
  description = "(Optional) The Apache Airflow logs you want to send to Amazon CloudWatch Logs."
  type        = string
  default     = ""
}
variable "dag_processing_logs" {
  description = "(Optional) (Optional) Log configuration options for processing DAGs. See Module logging configuration for more information. Disabled by default."
  type        = string
  default     = ""
}
variable "log_level" {
  description = "(Optional) Logging level. Valid values: CRITICAL, ERROR, WARNING, INFO, DEBUG. Will be INFO by default.Network configurationThe network_configuration block supports the following arguments. More information about the required subnet and security group settings can be found in the official AWS documentation."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "environment_class" {
  description = "(Optional) Environment class for the cluster. Possible options are mw1.small, mw1.medium, mw1.large. Will be set by default to mw1.small. Please check the AWS Pricing for more information about the environment classes."
  type        = string
  default     = ""
}
variable "max_workers" {
  description = "(Optional) The maximum number of workers that can be automatically scaled up. Value need to be between 1 and 25. Will be 10 by default."
  type        = string
  default     = ""
}
variable "min_workers" {
  description = "(Optional) The minimum number of workers that you want to run in your environment. Will be 1 by default."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "task_logs" {
  description = "(Optional) Log configuration options for DAG tasks. See Module logging configuration for more information. Enabled by default with INFO log level."
  type        = string
  default     = ""
}
variable "webserver_access_mode" {
  description = "(Optional) Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: PRIVATE_ONLY (default) and PUBLIC_ONLY."
  type        = string
  default     = ""
}
variable "airflow_configuration_options" {
  description = "(Optional) The airflow_configuration_options parameter specifies airflow override options. Check the Official documentation for all possible configuration options."
  type        = string
  default     = ""
}
variable "created_at" {
  description = "The Created At date of the MWAA Environment"
  type        = string
}
variable "dag_s3_path" {
  description = "(Required) The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see Importing DAGs on Amazon MWAA."
  type        = string
}
variable "execution_role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the official AWS documentation for the detailed role specification."
  type        = string
}
variable "kms_key" {
  description = "(Optional) The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key aws/airflow by default. Please check the Official Documentation for more information."
  type        = string
  default     = ""
}
variable "schedulers" {
  description = "(Optional) The number of schedulers that you want to run in your environment. v2.0.2 and above accepts 25, default 2. v1.10.12 accepts 1."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Required) Security groups IDs for the environment. At least one of the security group needs to allow MWAA resources to talk to each other, otherwise MWAA cannot be provisioned."
  type        = string
}
variable "source_bucket_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname."
  type        = string
}
variable "airflow_version" {
  description = "(Optional) Airflow version of your environment, will be set by default to the latest version that MWAA supports."
  type        = string
  default     = ""
}
variable "plugins_s3_path" {
  description = "(Optional) The relative path to the plugins.zip file on your Amazon S3 storage bucket. For example, plugins.zip. If a relative path is provided in the request, then plugins_s3_object_version is required. For more information, see Importing DAGs on Amazon MWAA."
  type        = string
  default     = ""
}
variable "requirements_s3_object_version" {
  description = "(Optional) The requirements.txt file version you want to use."
  type        = string
  default     = ""
}
variable "requirements_s3_path" {
  description = "(Optional) The relative path to the requirements.txt file on your Amazon S3 storage bucket. For example, requirements.txt. If a relative path is provided in the request, then requirements_s3_object_version is required. For more information, see Importing DAGs on Amazon MWAA."
  type        = string
  default     = ""
}
variable "service_role_arn" {
  description = "The Service Role ARN of the Amazon MWAA Environment"
  type        = string
}
variable "worker_logs" {
  description = "(Optional) Log configuration options for the workers. See Module logging configuration for more information. Disabled by default.Module logging configurationA configuration block to use for logging with respect to the various Apache Airflow services: DagProcessingLogs, SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs. It supports the following arguments."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Required) Enabling or disabling the collection of logs"
  type        = string
}
variable "scheduler_logs" {
  description = "(Optional) Log configuration options for the schedulers. See Module logging configuration for more information. Disabled by default."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of resource tags to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Logging configurationsThe logging_configuration block supports the following arguments."
  type        = string
  default     = ""
}
variable "webserver_logs" {
  description = "(Optional) Log configuration options for the webservers. See Module logging configuration for more information. Disabled by default."
  type        = string
  default     = ""
}
variable "network_configuration" {
  description = "(Required) Specifies the network configuration for your Apache Airflow Environment. This includes two private subnets as well as security groups for the Airflow environment. Each subnet requires internet connection, otherwise the deployment will fail. See Network configuration below for details."
  type        = string
}
variable "update" {
  description = "(Default 90m)"
  type        = string
}
variable "webserver_url" {
  description = "The webserver URL of the MWAA EnvironmentTimeoutsConfiguration options:"
  type        = string
}
variable "plugins_s3_object_version" {
  description = "(Optional) The plugins.zip file version you want to use."
  type        = string
  default     = ""
}
variable "logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn" {
  description = "Provides the ARN for the CloudWatch group where the logs will be published"
  type        = string
}
variable "name" {
  description = "(Required) The name of the Apache Airflow Environment"
  type        = string
}
variable "status" {
  description = "The status of the Amazon MWAA Environment"
  type        = string
}
variable "subnet_ids" {
  description = "(Required)  The private subnet IDs in which the environment should be created. MWAA requires two subnets.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "weekly_maintenance_window_start" {
  description = "(Optional) Specifies the start date for the weekly maintenance window."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the MWAA Environment"
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
output "plugins_s3_path" {
  description = "(Optional) The relative path to the plugins.zip file on your Amazon S3 storage bucket. For example, plugins.zip. If a relative path is provided in the request, then plugins_s3_object_version is required. For more information, see Importing DAGs on Amazon MWAA."
  value       = aws_mwaa_environment.aws_mwaa_environment.plugins_s3_path
}
output "requirements_s3_object_version" {
  description = "(Optional) The requirements.txt file version you want to use."
  value       = aws_mwaa_environment.aws_mwaa_environment.requirements_s3_object_version
}
output "requirements_s3_path" {
  description = "(Optional) The relative path to the requirements.txt file on your Amazon S3 storage bucket. For example, requirements.txt. If a relative path is provided in the request, then requirements_s3_object_version is required. For more information, see Importing DAGs on Amazon MWAA."
  value       = aws_mwaa_environment.aws_mwaa_environment.requirements_s3_path
}
output "service_role_arn" {
  description = "The Service Role ARN of the Amazon MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.service_role_arn
}
output "worker_logs" {
  description = "(Optional) Log configuration options for the workers. See Module logging configuration for more information. Disabled by default.Module logging configurationA configuration block to use for logging with respect to the various Apache Airflow services: DagProcessingLogs, SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs. It supports the following arguments."
  value       = aws_mwaa_environment.aws_mwaa_environment.worker_logs
}
output "enabled" {
  description = "(Required) Enabling or disabling the collection of logs"
  value       = aws_mwaa_environment.aws_mwaa_environment.enabled
}
output "scheduler_logs" {
  description = "(Optional) Log configuration options for the schedulers. See Module logging configuration for more information. Disabled by default."
  value       = aws_mwaa_environment.aws_mwaa_environment.scheduler_logs
}
output "tags" {
  description = "(Optional) A map of resource tags to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Logging configurationsThe logging_configuration block supports the following arguments."
  value       = aws_mwaa_environment.aws_mwaa_environment.tags
}
output "webserver_logs" {
  description = "(Optional) Log configuration options for the webservers. See Module logging configuration for more information. Disabled by default."
  value       = aws_mwaa_environment.aws_mwaa_environment.webserver_logs
}
output "network_configuration" {
  description = "(Required) Specifies the network configuration for your Apache Airflow Environment. This includes two private subnets as well as security groups for the Airflow environment. Each subnet requires internet connection, otherwise the deployment will fail. See Network configuration below for details."
  value       = aws_mwaa_environment.aws_mwaa_environment.network_configuration
}
output "update" {
  description = "(Default 90m)"
  value       = aws_mwaa_environment.aws_mwaa_environment.update
}
output "webserver_url" {
  description = "The webserver URL of the MWAA EnvironmentTimeoutsConfiguration options:"
  value       = aws_mwaa_environment.aws_mwaa_environment.webserver_url
}
output "plugins_s3_object_version" {
  description = "(Optional) The plugins.zip file version you want to use."
  value       = aws_mwaa_environment.aws_mwaa_environment.plugins_s3_object_version
}
output "logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn" {
  description = "Provides the ARN for the CloudWatch group where the logs will be published"
  value       = aws_mwaa_environment.aws_mwaa_environment.logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn
}
output "name" {
  description = "(Required) The name of the Apache Airflow Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.name
}
output "status" {
  description = "The status of the Amazon MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.status
}
output "subnet_ids" {
  description = "(Required)  The private subnet IDs in which the environment should be created. MWAA requires two subnets.In addition to all arguments above, the following attributes are exported:"
  value       = aws_mwaa_environment.aws_mwaa_environment.subnet_ids
}
output "weekly_maintenance_window_start" {
  description = "(Optional) Specifies the start date for the weekly maintenance window."
  value       = aws_mwaa_environment.aws_mwaa_environment.weekly_maintenance_window_start
}
output "arn" {
  description = "The ARN of the MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.arn
}
output "logging_configuration" {
  description = "(Optional) The Apache Airflow logs you want to send to Amazon CloudWatch Logs."
  value       = aws_mwaa_environment.aws_mwaa_environment.logging_configuration
}
output "dag_processing_logs" {
  description = "(Optional) (Optional) Log configuration options for processing DAGs. See Module logging configuration for more information. Disabled by default."
  value       = aws_mwaa_environment.aws_mwaa_environment.dag_processing_logs
}
output "log_level" {
  description = "(Optional) Logging level. Valid values: CRITICAL, ERROR, WARNING, INFO, DEBUG. Will be INFO by default.Network configurationThe network_configuration block supports the following arguments. More information about the required subnet and security group settings can be found in the official AWS documentation."
  value       = aws_mwaa_environment.aws_mwaa_environment.log_level
}
output "create" {
  description = "(Default 120m)"
  value       = aws_mwaa_environment.aws_mwaa_environment.create
}
output "environment_class" {
  description = "(Optional) Environment class for the cluster. Possible options are mw1.small, mw1.medium, mw1.large. Will be set by default to mw1.small. Please check the AWS Pricing for more information about the environment classes."
  value       = aws_mwaa_environment.aws_mwaa_environment.environment_class
}
output "max_workers" {
  description = "(Optional) The maximum number of workers that can be automatically scaled up. Value need to be between 1 and 25. Will be 10 by default."
  value       = aws_mwaa_environment.aws_mwaa_environment.max_workers
}
output "min_workers" {
  description = "(Optional) The minimum number of workers that you want to run in your environment. Will be 1 by default."
  value       = aws_mwaa_environment.aws_mwaa_environment.min_workers
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_mwaa_environment.aws_mwaa_environment.tags_all
}
output "task_logs" {
  description = "(Optional) Log configuration options for DAG tasks. See Module logging configuration for more information. Enabled by default with INFO log level."
  value       = aws_mwaa_environment.aws_mwaa_environment.task_logs
}
output "webserver_access_mode" {
  description = "(Optional) Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: PRIVATE_ONLY (default) and PUBLIC_ONLY."
  value       = aws_mwaa_environment.aws_mwaa_environment.webserver_access_mode
}
output "airflow_configuration_options" {
  description = "(Optional) The airflow_configuration_options parameter specifies airflow override options. Check the Official documentation for all possible configuration options."
  value       = aws_mwaa_environment.aws_mwaa_environment.airflow_configuration_options
}
output "created_at" {
  description = "The Created At date of the MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.created_at
}
output "dag_s3_path" {
  description = "(Required) The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see Importing DAGs on Amazon MWAA."
  value       = aws_mwaa_environment.aws_mwaa_environment.dag_s3_path
}
output "execution_role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the official AWS documentation for the detailed role specification."
  value       = aws_mwaa_environment.aws_mwaa_environment.execution_role_arn
}
output "kms_key" {
  description = "(Optional) The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key aws/airflow by default. Please check the Official Documentation for more information."
  value       = aws_mwaa_environment.aws_mwaa_environment.kms_key
}
output "schedulers" {
  description = "(Optional) The number of schedulers that you want to run in your environment. v2.0.2 and above accepts 25, default 2. v1.10.12 accepts 1."
  value       = aws_mwaa_environment.aws_mwaa_environment.schedulers
}
output "security_group_ids" {
  description = "(Required) Security groups IDs for the environment. At least one of the security group needs to allow MWAA resources to talk to each other, otherwise MWAA cannot be provisioned."
  value       = aws_mwaa_environment.aws_mwaa_environment.security_group_ids
}
output "source_bucket_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname."
  value       = aws_mwaa_environment.aws_mwaa_environment.source_bucket_arn
}
output "airflow_version" {
  description = "(Optional) Airflow version of your environment, will be set by default to the latest version that MWAA supports."
  value       = aws_mwaa_environment.aws_mwaa_environment.airflow_version
}
output "create" {
  description = "(Default 120m)"
  value       = aws_mwaa_environment.aws_mwaa_environment.create
}
output "created_at" {
  description = "The Created At date of the MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.created_at
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_mwaa_environment.aws_mwaa_environment.delete
}
output "status" {
  description = "The status of the Amazon MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.status
}
output "update" {
  description = "(Default 90m)"
  value       = aws_mwaa_environment.aws_mwaa_environment.update
}
output "webserver_url" {
  description = "The webserver URL of the MWAA EnvironmentTimeoutsConfiguration options:"
  value       = aws_mwaa_environment.aws_mwaa_environment.webserver_url
}
output "arn" {
  description = "The ARN of the MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.arn
}
output "logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn" {
  description = "Provides the ARN for the CloudWatch group where the logs will be published"
  value       = aws_mwaa_environment.aws_mwaa_environment.logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn
}
output "service_role_arn" {
  description = "The Service Role ARN of the Amazon MWAA Environment"
  value       = aws_mwaa_environment.aws_mwaa_environment.service_role_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_mwaa_environment.aws_mwaa_environment.tags_all
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
      "kind/name"                   = "aws_mwaa_environment"
      "kind/version"                = "v0.1.0"
    }
  }
}
