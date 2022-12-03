datasource "aws_elasticsearch_domain" "aws_elasticsearch_domain" {
  deleted                        = var.deleted
  log_publishing_options         = var.log_publishing_options
  user_pool_id                   = var.user_pool_id
  instance_type                  = var.instance_type
  vpc_options                    = var.vpc_options
  availability_zone_count        = var.availability_zone_count
  dedicated_master_type          = var.dedicated_master_type
  endpoint                       = var.endpoint
  instance_count                 = var.instance_count
  kibana_endpoint                = var.kibana_endpoint
  tags                           = var.tags
  advanced_security_options      = var.advanced_security_options
  auto_tune_options              = var.auto_tune_options
  dedicated_master_count         = var.dedicated_master_count
  encryption_at_rest             = var.encryption_at_rest
  availability_zones             = var.availability_zones
  domain_id                      = var.domain_id
  snapshot_options               = var.snapshot_options
  subnet_ids                     = var.subnet_ids
  unit                           = var.unit
  zone_awareness_enabled         = var.zone_awareness_enabled
  cognito_options                = var.cognito_options
  desired_state                  = var.desired_state
  volume_type                    = var.volume_type
  cluster_config                 = var.cluster_config
  cron_expression_for_recurrence = var.cron_expression_for_recurrence
  zone_awareness_config          = var.zone_awareness_config
  rollback_on_disable            = var.rollback_on_disable
  security_group_ids             = var.security_group_ids
  volume_size                    = var.volume_size
  arn                            = var.arn
  identity_pool_id               = var.identity_pool_id
  maintenance_schedule           = var.maintenance_schedule
  processing                     = var.processing
  advanced_options               = var.advanced_options
  domain_name                    = var.domain_name
  value                          = var.value
  cloudwatch_log_group_arn       = var.cloudwatch_log_group_arn
  start_at                       = var.start_at
  throughput                     = var.throughput
  dedicated_master_enabled       = var.dedicated_master_enabled
  duration                       = var.duration
  kms_key_id                     = var.kms_key_id
  cold_storage_options           = var.cold_storage_options
  ebs_enabled                    = var.ebs_enabled
  warm_enabled                   = var.warm_enabled
  role_arn                       = var.role_arn
  warm_count                     = var.warm_count
  created                        = var.created
  ebs_options                    = var.ebs_options
  internal_user_database_enabled = var.internal_user_database_enabled
  log_type                       = var.log_type
  access_policies                = var.access_policies
  node_to_node_encryption        = var.node_to_node_encryption
  warm_type                      = var.warm_type
  automated_snapshot_start_hour  = var.automated_snapshot_start_hour
  elasticsearch_version          = var.elasticsearch_version
  enabled                        = var.enabled
  iops                           = var.iops
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  type        = string
}
variable "duration" {
  description = "Configuration block for the duration of the Auto-Tune maintenance window.\n"
  type        = string
}
variable "kms_key_id" {
  description = "The KMS key id used to encrypt data at rest."
  type        = string
}
variable "cold_storage_options" {
  description = "Configuration block containing cold storage configuration.\n"
  type        = string
}
variable "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  type        = string
}
variable "warm_enabled" {
  description = "Warm storage is enabled."
  type        = string
}
variable "created" {
  description = " – Status of the creation of the domain."
  type        = string
}
variable "ebs_options" {
  description = ""
  type        = string
}
variable "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  type        = string
}
variable "log_type" {
  description = "The type of Elasticsearch log being published."
  type        = string
}
variable "role_arn" {
  description = "The IAM Role with the AmazonESCognitoAccess policy attached."
  type        = string
}
variable "warm_count" {
  description = "The number of warm nodes in the cluster."
  type        = string
}
variable "access_policies" {
  description = " – The policy document attached to the domain."
  type        = string
}
variable "node_to_node_encryption" {
  description = ""
  type        = string
}
variable "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  type        = string
}
variable "elasticsearch_version" {
  description = " – Elasticsearch version for the domain."
  type        = string
}
variable "enabled" {
  description = "Whether node to node encryption is enabled."
  type        = string
}
variable "iops" {
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  type        = string
}
variable "warm_type" {
  description = "The instance type for the Elasticsearch cluster's warm nodes."
  type        = string
}
variable "deleted" {
  description = " – Status of the deletion of the domain."
  type        = string
}
variable "log_publishing_options" {
  description = ""
  type        = string
}
variable "user_pool_id" {
  description = "The Cognito User pool used by the domain."
  type        = string
}
variable "availability_zone_count" {
  description = "Number of availability zones used."
  type        = string
}
variable "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  type        = string
}
variable "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
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
variable "vpc_options" {
  description = "VPC Options for private Elasticsearch domains.\n"
  type        = string
}
variable "advanced_security_options" {
  description = "Status of the Elasticsearch domain's advanced security options. The block consists of the following attributes:\n"
  type        = string
}
variable "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  type        = string
}
variable "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  type        = string
}
variable "encryption_at_rest" {
  description = ""
  type        = string
}
variable "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  type        = string
}
variable "tags" {
  description = "Tags assigned to the domain."
  type        = string
}
variable "availability_zones" {
  description = "The availability zones used by the domain."
  type        = string
}
variable "domain_id" {
  description = " – Unique identifier for the domain."
  type        = string
}
variable "snapshot_options" {
  description = ""
  type        = string
}
variable "subnet_ids" {
  description = "The subnets used by the domain."
  type        = string
}
variable "unit" {
  description = "Unit of time."
  type        = string
}
variable "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  type        = string
}
variable "cognito_options" {
  description = "Domain Amazon Cognito Authentication options for Kibana.\n"
  type        = string
}
variable "desired_state" {
  description = "The Auto-Tune desired state for the domain."
  type        = string
}
variable "volume_type" {
  description = "The type of EBS volumes attached to data nodes."
  type        = string
}
variable "cluster_config" {
  description = ""
  type        = string
}
variable "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  type        = string
}
variable "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  type        = string
}
variable "arn" {
  description = " – The ARN of the domain."
  type        = string
}
variable "identity_pool_id" {
  description = "The Cognito Identity pool used by the domain."
  type        = string
}
variable "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  type        = string
}
variable "processing" {
  description = " – Status of a configuration change in the domain."
  type        = string
}
variable "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  type        = string
}
variable "security_group_ids" {
  description = "The security groups used by the domain."
  type        = string
}
variable "volume_size" {
  description = "The size of EBS volumes attached to data nodes (in GB)."
  type        = string
}
variable "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  type        = string
}
variable "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  type        = string
}
variable "value" {
  description = "Duration of an Auto-Tune maintenance window."
  type        = string
}
variable "cloudwatch_log_group_arn" {
  description = "The CloudWatch Log Group where the logs are published."
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
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tags
}
output "advanced_security_options" {
  description = "Status of the Elasticsearch domain's advanced security options. The block consists of the following attributes:\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_security_options
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.auto_tune_options
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_count
}
output "encryption_at_rest" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.encryption_at_rest
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kibana_endpoint
}
output "availability_zones" {
  description = "The availability zones used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zones
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_id
}
output "snapshot_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.snapshot_options
}
output "subnet_ids" {
  description = "The subnets used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.subnet_ids
}
output "unit" {
  description = "Unit of time."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.unit
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_enabled
}
output "cognito_options" {
  description = "Domain Amazon Cognito Authentication options for Kibana.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cognito_options
}
output "desired_state" {
  description = "The Auto-Tune desired state for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.desired_state
}
output "volume_type" {
  description = "The type of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_type
}
output "cluster_config" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cluster_config
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cron_expression_for_recurrence
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_config
}
output "security_group_ids" {
  description = "The security groups used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.security_group_ids
}
output "volume_size" {
  description = "The size of EBS volumes attached to data nodes (in GB)."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_size
}
output "arn" {
  description = " – The ARN of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.arn
}
output "identity_pool_id" {
  description = "The Cognito Identity pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.identity_pool_id
}
output "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.maintenance_schedule
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.processing
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.rollback_on_disable
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_options
}
output "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_name
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.value
}
output "cloudwatch_log_group_arn" {
  description = "The CloudWatch Log Group where the logs are published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cloudwatch_log_group_arn
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.start_at
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.throughput
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_enabled
}
output "duration" {
  description = "Configuration block for the duration of the Auto-Tune maintenance window.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.duration
}
output "kms_key_id" {
  description = "The KMS key id used to encrypt data at rest."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kms_key_id
}
output "cold_storage_options" {
  description = "Configuration block containing cold storage configuration.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cold_storage_options
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_enabled
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_enabled
}
output "warm_count" {
  description = "The number of warm nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_count
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.created
}
output "ebs_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_options
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.internal_user_database_enabled
}
output "log_type" {
  description = "The type of Elasticsearch log being published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_type
}
output "role_arn" {
  description = "The IAM Role with the AmazonESCognitoAccess policy attached."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.role_arn
}
output "access_policies" {
  description = " – The policy document attached to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.access_policies
}
output "node_to_node_encryption" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.node_to_node_encryption
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.automated_snapshot_start_hour
}
output "elasticsearch_version" {
  description = " – Elasticsearch version for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.elasticsearch_version
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.enabled
}
output "iops" {
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.iops
}
output "warm_type" {
  description = "The instance type for the Elasticsearch cluster's warm nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_type
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.deleted
}
output "log_publishing_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_publishing_options
}
output "user_pool_id" {
  description = "The Cognito User pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.user_pool_id
}
output "vpc_options" {
  description = "VPC Options for private Elasticsearch domains.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zone_count
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_type
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.endpoint
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_count
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_type
}
output "advanced_security_options" {
  description = "Status of the Elasticsearch domain's advanced security options. The block consists of the following attributes:\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_security_options
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_enabled
}
output "log_publishing_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_publishing_options
}
output "log_type" {
  description = "The type of Elasticsearch log being published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_type
}
output "cluster_config" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cluster_config
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.deleted
}
output "duration" {
  description = "Configuration block for the duration of the Auto-Tune maintenance window.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.duration
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.enabled
}
output "availability_zones" {
  description = "The availability zones used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zones
}
output "cold_storage_options" {
  description = "Configuration block containing cold storage configuration.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cold_storage_options
}
output "role_arn" {
  description = "The IAM Role with the AmazonESCognitoAccess policy attached."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.role_arn
}
output "volume_type" {
  description = "The type of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_type
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_type
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_enabled
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.rollback_on_disable
}
output "subnet_ids" {
  description = "The subnets used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.subnet_ids
}
output "volume_size" {
  description = "The size of EBS volumes attached to data nodes (in GB)."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_size
}
output "kms_key_id" {
  description = "The KMS key id used to encrypt data at rest."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kms_key_id
}
output "access_policies" {
  description = " – The policy document attached to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.access_policies
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.created
}
output "elasticsearch_version" {
  description = " – Elasticsearch version for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.elasticsearch_version
}
output "vpc_options" {
  description = "VPC Options for private Elasticsearch domains.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_config
}
output "cognito_options" {
  description = "Domain Amazon Cognito Authentication options for Kibana.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cognito_options
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_count
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cron_expression_for_recurrence
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_count
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_type
}
output "snapshot_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.snapshot_options
}
output "ebs_options" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_options
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zone_count
}
output "cloudwatch_log_group_arn" {
  description = "The CloudWatch Log Group where the logs are published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cloudwatch_log_group_arn
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.internal_user_database_enabled
}
output "iops" {
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.iops
}
output "warm_count" {
  description = "The number of warm nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_count
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_enabled
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_enabled
}
output "unit" {
  description = "Unit of time."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.unit
}
output "user_pool_id" {
  description = "The Cognito User pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.user_pool_id
}
output "arn" {
  description = " – The ARN of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.arn
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.auto_tune_options
}
output "identity_pool_id" {
  description = "The Cognito Identity pool used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.identity_pool_id
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.processing
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.throughput
}
output "warm_type" {
  description = "The instance type for the Elasticsearch cluster's warm nodes."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_type
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_id
}
output "encryption_at_rest" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.encryption_at_rest
}
output "node_to_node_encryption" {
  description = ""
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.node_to_node_encryption
}
output "security_group_ids" {
  description = "The security groups used by the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.security_group_ids
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tags
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.automated_snapshot_start_hour
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.endpoint
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.value
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_options
}
output "desired_state" {
  description = "The Auto-Tune desired state for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.desired_state
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kibana_endpoint
}
output "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.maintenance_schedule
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.start_at
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
