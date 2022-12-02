datasource "aws_elasticsearch_domain" "aws_elasticsearch_domain" {
  elasticsearch_version          = var.elasticsearch_version
  role_arn                       = var.role_arn
  warm_enabled                   = var.warm_enabled
  warm_type                      = var.warm_type
  advanced_security_options      = var.advanced_security_options
  cold_storage_options           = var.cold_storage_options
  cron_expression_for_recurrence = var.cron_expression_for_recurrence
  enabled                        = var.enabled
  tags                           = var.tags
  volume_size                    = var.volume_size
  automated_snapshot_start_hour  = var.automated_snapshot_start_hour
  cognito_options                = var.cognito_options
  created                        = var.created
  kms_key_id                     = var.kms_key_id
  start_at                       = var.start_at
  throughput                     = var.throughput
  availability_zones             = var.availability_zones
  desired_state                  = var.desired_state
  domain_id                      = var.domain_id
  iops                           = var.iops
  dedicated_master_enabled       = var.dedicated_master_enabled
  domain_name                    = var.domain_name
  ebs_enabled                    = var.ebs_enabled
  endpoint                       = var.endpoint
  maintenance_schedule           = var.maintenance_schedule
  zone_awareness_config          = var.zone_awareness_config
  access_policies                = var.access_policies
  arn                            = var.arn
  unit                           = var.unit
  dedicated_master_type          = var.dedicated_master_type
  internal_user_database_enabled = var.internal_user_database_enabled
  security_group_ids             = var.security_group_ids
  user_pool_id                   = var.user_pool_id
  value                          = var.value
  volume_type                    = var.volume_type
  cluster_config                 = var.cluster_config
  identity_pool_id               = var.identity_pool_id
  log_type                       = var.log_type
  vpc_options                    = var.vpc_options
  ebs_options                    = var.ebs_options
  advanced_options               = var.advanced_options
  log_publishing_options         = var.log_publishing_options
  processing                     = var.processing
  cloudwatch_log_group_arn       = var.cloudwatch_log_group_arn
  kibana_endpoint                = var.kibana_endpoint
  subnet_ids                     = var.subnet_ids
  dedicated_master_count         = var.dedicated_master_count
  deleted                        = var.deleted
  zone_awareness_enabled         = var.zone_awareness_enabled
  rollback_on_disable            = var.rollback_on_disable
  snapshot_options               = var.snapshot_options
  availability_zone_count        = var.availability_zone_count
  duration                       = var.duration
  encryption_at_rest             = var.encryption_at_rest
  node_to_node_encryption        = var.node_to_node_encryption
  warm_count                     = var.warm_count
  auto_tune_options              = var.auto_tune_options
  instance_count                 = var.instance_count
  instance_type                  = var.instance_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "availability_zones" {
  description = "The availability zones used by the domain."
  type        = string
}
variable "desired_state" {
  description = "The Auto-Tune desired state for the domain."
  type        = string
}
variable "domain_id" {
  description = " – Unique identifier for the domain."
  type        = string
}
variable "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  type        = string
}
variable "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  type        = string
}
variable "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  type        = string
}
variable "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  type        = string
}
variable "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  type        = string
}
variable "iops" {
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  type        = string
}
variable "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  type        = string
}
variable "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  type        = string
}
variable "zone_awareness_config" {
  description = ""
  type        = string
}
variable "access_policies" {
  description = " – The policy document attached to the domain."
  type        = string
}
variable "arn" {
  description = " – The ARN of the domain."
  type        = string
}
variable "unit" {
  description = "Unit of time."
  type        = string
}
variable "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  type        = string
}
variable "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  type        = string
}
variable "volume_type" {
  description = "The type of EBS volumes attached to data nodes."
  type        = string
}
variable "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  type        = string
}
variable "identity_pool_id" {
  description = "The Cognito Identity pool used by the domain."
  type        = string
}
variable "log_type" {
  description = "The type of Elasticsearch log being published."
  type        = string
}
variable "security_group_ids" {
  description = "The security groups used by the domain."
  type        = string
}
variable "user_pool_id" {
  description = "The Cognito User pool used by the domain."
  type        = string
}
variable "value" {
  description = "Duration of an Auto-Tune maintenance window."
  type        = string
}
variable "vpc_options" {
  description = ""
  type        = string
}
variable "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  type        = string
}
variable "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  type        = string
}
variable "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  type        = string
}
variable "processing" {
  description = " – Status of a configuration change in the domain."
  type        = string
}
variable "cloudwatch_log_group_arn" {
  description = "The CloudWatch Log Group where the logs are published."
  type        = string
}
variable "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  type        = string
}
variable "subnet_ids" {
  description = "The subnets used by the domain."
  type        = string
}
variable "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  type        = string
}
variable "deleted" {
  description = " – Status of the deletion of the domain."
  type        = string
}
variable "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  type        = string
}
variable "availability_zone_count" {
  description = "Number of availability zones used."
  type        = string
}
variable "duration" {
  description = ""
  type        = string
}
variable "encryption_at_rest" {
  description = "Domain encryption at rest related options.\n"
  type        = string
}
variable "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  type        = string
}
variable "snapshot_options" {
  description = ""
  type        = string
}
variable "auto_tune_options" {
  description = ""
  type        = string
}
variable "instance_count" {
  description = "Number of instances in the cluster."
  type        = string
}
variable "instance_type" {
  description = "Instance type of data nodes in the cluster."
  type        = string
}
variable "node_to_node_encryption" {
  description = "Domain in transit encryption related options.\n"
  type        = string
}
variable "warm_count" {
  description = "The number of warm nodes in the cluster."
  type        = string
}
variable "warm_type" {
  description = "The instance type for the Elasticsearch cluster's warm nodes."
  type        = string
}
variable "advanced_security_options" {
  description = ""
  type        = string
}
variable "cold_storage_options" {
  description = ""
  type        = string
}
variable "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  type        = string
}
variable "elasticsearch_version" {
  description = " – Elasticsearch version for the domain."
  type        = string
}
variable "role_arn" {
  description = "The IAM Role with the AmazonESCognitoAccess policy attached."
  type        = string
}
variable "warm_enabled" {
  description = "Warm storage is enabled."
  type        = string
}
variable "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  type        = string
}
variable "cognito_options" {
  description = ""
  type        = string
}
variable "created" {
  description = " – Status of the creation of the domain."
  type        = string
}
variable "enabled" {
  description = "Whether node to node encryption is enabled."
  type        = string
}
variable "tags" {
  description = "Tags assigned to the domain."
  type        = string
}
variable "volume_size" {
  description = "The size of EBS volumes attached to data nodes (in GB)."
  type        = string
}
variable "kms_key_id" {
  description = "The KMS key id used to encrypt data at rest."
  type        = string
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_count
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.deleted
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_enabled
}
output "snapshot_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.snapshot_options
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zone_count
}
output "duration" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.duration
}
output "encryption_at_rest" {
  description = "Domain encryption at rest related options.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.encryption_at_rest
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.rollback_on_disable
}
output "warm_count" {
  description = "The number of warm nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_count
}
output "auto_tune_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.auto_tune_options
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_count
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_type
}
output "node_to_node_encryption" {
  description = "Domain in transit encryption related options.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.node_to_node_encryption
}
output "role_arn" {
  description = "The IAM Role with the AmazonESCognitoAccess policy attached."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.role_arn
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_enabled
}
output "warm_type" {
  description = "The instance type for the Elasticsearch cluster's warm nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_type
}
output "advanced_security_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_security_options
}
output "cold_storage_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cold_storage_options
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cron_expression_for_recurrence
}
output "elasticsearch_version" {
  description = " – Elasticsearch version for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.elasticsearch_version
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tags
}
output "volume_size" {
  description = "The size of EBS volumes attached to data nodes (in GB)."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_size
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.automated_snapshot_start_hour
}
output "cognito_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cognito_options
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.created
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.enabled
}
output "kms_key_id" {
  description = "The KMS key id used to encrypt data at rest."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kms_key_id
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.throughput
}
output "availability_zones" {
  description = "The availability zones used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zones
}
output "desired_state" {
  description = "The Auto-Tune desired state for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.desired_state
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_id
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.start_at
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_enabled
}
output "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_name
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_enabled
}
output "iops" {
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.iops
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.endpoint
}
output "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.maintenance_schedule
}
output "zone_awareness_config" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_config
}
output "access_policies" {
  description = " – The policy document attached to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.access_policies
}
output "arn" {
  description = " – The ARN of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.arn
}
output "unit" {
  description = "Unit of time."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.unit
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_type
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.internal_user_database_enabled
}
output "user_pool_id" {
  description = "The Cognito User pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.user_pool_id
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.value
}
output "volume_type" {
  description = "The type of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_type
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cluster_config
}
output "identity_pool_id" {
  description = "The Cognito Identity pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.identity_pool_id
}
output "log_type" {
  description = "The type of Elasticsearch log being published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_type
}
output "security_group_ids" {
  description = "The security groups used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.security_group_ids
}
output "vpc_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_options
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_options
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_publishing_options
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.processing
}
output "cloudwatch_log_group_arn" {
  description = "The CloudWatch Log Group where the logs are published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cloudwatch_log_group_arn
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kibana_endpoint
}
output "subnet_ids" {
  description = "The subnets used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.subnet_ids
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.created
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_enabled
}
output "role_arn" {
  description = "The IAM Role with the AmazonESCognitoAccess policy attached."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.role_arn
}
output "elasticsearch_version" {
  description = " – Elasticsearch version for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.elasticsearch_version
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.rollback_on_disable
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_enabled
}
output "availability_zones" {
  description = "The availability zones used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zones
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.internal_user_database_enabled
}
output "volume_type" {
  description = "The type of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_type
}
output "cognito_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cognito_options
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.processing
}
output "unit" {
  description = "Unit of time."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.unit
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_enabled
}
output "desired_state" {
  description = "The Auto-Tune desired state for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.desired_state
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_options
}
output "iops" {
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.iops
}
output "subnet_ids" {
  description = "The subnets used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.subnet_ids
}
output "volume_size" {
  description = "The size of EBS volumes attached to data nodes (in GB)."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_size
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kibana_endpoint
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_publishing_options
}
output "user_pool_id" {
  description = "The Cognito User pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.user_pool_id
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zone_count
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cron_expression_for_recurrence
}
output "security_group_ids" {
  description = "The security groups used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.security_group_ids
}
output "warm_count" {
  description = "The number of warm nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_count
}
output "access_policies" {
  description = " – The policy document attached to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.access_policies
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_count
}
output "kms_key_id" {
  description = "The KMS key id used to encrypt data at rest."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kms_key_id
}
output "log_type" {
  description = "The type of Elasticsearch log being published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_type
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_options
}
output "advanced_security_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_security_options
}
output "cloudwatch_log_group_arn" {
  description = "The CloudWatch Log Group where the logs are published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cloudwatch_log_group_arn
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_type
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cluster_config
}
output "encryption_at_rest" {
  description = "Domain encryption at rest related options.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.encryption_at_rest
}
output "identity_pool_id" {
  description = "The Cognito Identity pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.identity_pool_id
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.value
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.deleted
}
output "zone_awareness_config" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_config
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_id
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.throughput
}
output "vpc_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options
}
output "warm_type" {
  description = "The instance type for the Elasticsearch cluster's warm nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_type
}
output "arn" {
  description = " – The ARN of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.arn
}
output "auto_tune_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.auto_tune_options
}
output "snapshot_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.snapshot_options
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.start_at
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_count
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.endpoint
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.enabled
}
output "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.maintenance_schedule
}
output "node_to_node_encryption" {
  description = "Domain in transit encryption related options.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.node_to_node_encryption
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.automated_snapshot_start_hour
}
output "cold_storage_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cold_storage_options
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_enabled
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_type
}
output "duration" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.duration
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tags
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
}
