datasource "aws_opensearch_domain" "aws_opensearch_domain" {
  domain_name                    = var.domain_name
  security_group_ids             = var.security_group_ids
  user_pool_id                   = var.user_pool_id
  vpc_options                    = var.vpc_options
  dedicated_master_count         = var.dedicated_master_count
  log_publishing_options         = var.log_publishing_options
  subnet_ids                     = var.subnet_ids
  tags                           = var.tags
  zone_awareness_config          = var.zone_awareness_config
  cognito_options                = var.cognito_options
  created                        = var.created
  role_arn                       = var.role_arn
  advanced_options               = var.advanced_options
  duration                       = var.duration
  instance_type                  = var.instance_type
  rollback_on_disable            = var.rollback_on_disable
  value                          = var.value
  log_type                       = var.log_type
  warm_type                      = var.warm_type
  cron_expression_for_recurrence = var.cron_expression_for_recurrence
  desired_state                  = var.desired_state
  availability_zones             = var.availability_zones
  dedicated_master_type          = var.dedicated_master_type
  ebs_options                    = var.ebs_options
  iops                           = var.iops
  node_to_node_encryption        = var.node_to_node_encryption
  unit                           = var.unit
  volume_type                    = var.volume_type
  availability_zone_count        = var.availability_zone_count
  cloudwatch_log_group_arn       = var.cloudwatch_log_group_arn
  cluster_config                 = var.cluster_config
  enabled                        = var.enabled
  processing                     = var.processing
  encryption_at_rest             = var.encryption_at_rest
  kibana_endpoint                = var.kibana_endpoint
  cold_storage_options           = var.cold_storage_options
  domain_id                      = var.domain_id
  identity_pool_id               = var.identity_pool_id
  ebs_enabled                    = var.ebs_enabled
  snapshot_options               = var.snapshot_options
  throughput                     = var.throughput
  volume_size                    = var.volume_size
  warm_enabled                   = var.warm_enabled
  zone_awareness_enabled         = var.zone_awareness_enabled
  access_policies                = var.access_policies
  advanced_security_options      = var.advanced_security_options
  auto_tune_options              = var.auto_tune_options
  automated_snapshot_start_hour  = var.automated_snapshot_start_hour
  dedicated_master_enabled       = var.dedicated_master_enabled
  endpoint                       = var.endpoint
  instance_count                 = var.instance_count
  internal_user_database_enabled = var.internal_user_database_enabled
  maintenance_schedule           = var.maintenance_schedule
  start_at                       = var.start_at
  engine_version                 = var.engine_version
  kms_key_id                     = var.kms_key_id
  arn                            = var.arn
  deleted                        = var.deleted
  warm_count                     = var.warm_count
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "log_type" {
  description = "Type of OpenSearch log being published."
  type        = string
}
variable "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  type        = string
}
variable "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  type        = string
}
variable "desired_state" {
  description = "Auto-Tune desired state for the domain."
  type        = string
}
variable "node_to_node_encryption" {
  description = ""
  type        = string
}
variable "unit" {
  description = "Unit of time."
  type        = string
}
variable "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  type        = string
}
variable "availability_zones" {
  description = "Availability zones used by the domain."
  type        = string
}
variable "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  type        = string
}
variable "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  type        = string
}
variable "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  type        = string
}
variable "availability_zone_count" {
  description = "Number of availability zones used."
  type        = string
}
variable "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  type        = string
}
variable "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  type        = string
}
variable "enabled" {
  description = "Whether node to node encryption is enabled."
  type        = string
}
variable "processing" {
  description = " – Status of a configuration change in the domain."
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
variable "cold_storage_options" {
  description = ""
  type        = string
}
variable "domain_id" {
  description = " – Unique identifier for the domain."
  type        = string
}
variable "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  type        = string
}
variable "warm_enabled" {
  description = "Warm storage is enabled."
  type        = string
}
variable "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  type        = string
}
variable "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  type        = string
}
variable "snapshot_options" {
  description = ""
  type        = string
}
variable "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  type        = string
}
variable "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  type        = string
}
variable "access_policies" {
  description = " – Policy document attached to the domain."
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
variable "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  type        = string
}
variable "maintenance_schedule" {
  description = ""
  type        = string
}
variable "advanced_security_options" {
  description = ""
  type        = string
}
variable "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  type        = string
}
variable "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  type        = string
}
variable "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  type        = string
}
variable "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  type        = string
}
variable "engine_version" {
  description = " – OpenSearch version for the domain."
  type        = string
}
variable "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  type        = string
}
variable "arn" {
  description = " – ARN of the domain."
  type        = string
}
variable "deleted" {
  description = " – Status of the deletion of the domain."
  type        = string
}
variable "warm_count" {
  description = "Number of warm nodes in the cluster."
  type        = string
}
variable "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  type        = string
}
variable "security_group_ids" {
  description = "Security groups used by the domain."
  type        = string
}
variable "user_pool_id" {
  description = "Cognito User pool used by the domain."
  type        = string
}
variable "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  type        = string
}
variable "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  type        = string
}
variable "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  type        = string
}
variable "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  type        = string
}
variable "subnet_ids" {
  description = "Subnets used by the domain."
  type        = string
}
variable "tags" {
  description = "Tags assigned to the domain."
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
variable "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  type        = string
}
variable "value" {
  description = "Duration of an Auto-Tune maintenance window."
  type        = string
}
variable "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  type        = string
}
variable "duration" {
  description = ""
  type        = string
}
variable "instance_type" {
  description = "Instance type of data nodes in the cluster."
  type        = string
}
variable "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  type        = string
}
output "warm_count" {
  description = "Number of warm nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_count
}
output "arn" {
  description = " – ARN of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.arn
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.deleted
}
output "user_pool_id" {
  description = "Cognito User pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.user_pool_id
}
output "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.vpc_options
}
output "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_name
}
output "security_group_ids" {
  description = "Security groups used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.security_group_ids
}
output "subnet_ids" {
  description = "Subnets used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.subnet_ids
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.tags
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_config
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_count
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.log_publishing_options
}
output "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  value       = aws_opensearch_domain.aws_opensearch_domain.role_arn
}
output "cognito_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cognito_options
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.created
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_type
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_opensearch_domain.aws_opensearch_domain.rollback_on_disable
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_opensearch_domain.aws_opensearch_domain.value
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_options
}
output "duration" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.duration
}
output "log_type" {
  description = "Type of OpenSearch log being published."
  value       = aws_opensearch_domain.aws_opensearch_domain.log_type
}
output "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_type
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_opensearch_domain.aws_opensearch_domain.cron_expression_for_recurrence
}
output "desired_state" {
  description = "Auto-Tune desired state for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.desired_state
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_options
}
output "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.iops
}
output "node_to_node_encryption" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.node_to_node_encryption
}
output "unit" {
  description = "Unit of time."
  value       = aws_opensearch_domain.aws_opensearch_domain.unit
}
output "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_type
}
output "availability_zones" {
  description = "Availability zones used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zones
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_type
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cluster_config
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zone_count
}
output "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  value       = aws_opensearch_domain.aws_opensearch_domain.cloudwatch_log_group_arn
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.enabled
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.processing
}
output "encryption_at_rest" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.encryption_at_rest
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_opensearch_domain.aws_opensearch_domain.kibana_endpoint
}
output "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.identity_pool_id
}
output "cold_storage_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cold_storage_options
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_id
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.throughput
}
output "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_size
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_enabled
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_enabled
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_enabled
}
output "snapshot_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.snapshot_options
}
output "access_policies" {
  description = " – Policy document attached to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.access_policies
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.automated_snapshot_start_hour
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_enabled
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_opensearch_domain.aws_opensearch_domain.endpoint
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_count
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.internal_user_database_enabled
}
output "maintenance_schedule" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.maintenance_schedule
}
output "advanced_security_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_security_options
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.auto_tune_options
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_opensearch_domain.aws_opensearch_domain.start_at
}
output "engine_version" {
  description = " – OpenSearch version for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.engine_version
}
output "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  value       = aws_opensearch_domain.aws_opensearch_domain.kms_key_id
}
output "access_policies" {
  description = " – Policy document attached to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.access_policies
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.auto_tune_options
}
output "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.identity_pool_id
}
output "maintenance_schedule" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.maintenance_schedule
}
output "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_size
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_enabled
}
output "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.iops
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_opensearch_domain.aws_opensearch_domain.start_at
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cluster_config
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.created
}
output "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  value       = aws_opensearch_domain.aws_opensearch_domain.role_arn
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.automated_snapshot_start_hour
}
output "desired_state" {
  description = "Auto-Tune desired state for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.desired_state
}
output "node_to_node_encryption" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.node_to_node_encryption
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_opensearch_domain.aws_opensearch_domain.value
}
output "arn" {
  description = " – ARN of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.arn
}
output "security_group_ids" {
  description = "Security groups used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.security_group_ids
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.tags
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_id
}
output "encryption_at_rest" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.encryption_at_rest
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_type
}
output "user_pool_id" {
  description = "Cognito User pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.user_pool_id
}
output "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_type
}
output "advanced_security_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_security_options
}
output "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  value       = aws_opensearch_domain.aws_opensearch_domain.cloudwatch_log_group_arn
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_type
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_opensearch_domain.aws_opensearch_domain.rollback_on_disable
}
output "cognito_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cognito_options
}
output "cold_storage_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cold_storage_options
}
output "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.vpc_options
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_enabled
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_options
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_opensearch_domain.aws_opensearch_domain.cron_expression_for_recurrence
}
output "engine_version" {
  description = " – OpenSearch version for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.engine_version
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.log_publishing_options
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.processing
}
output "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  value       = aws_opensearch_domain.aws_opensearch_domain.kms_key_id
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.throughput
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_config
}
output "unit" {
  description = "Unit of time."
  value       = aws_opensearch_domain.aws_opensearch_domain.unit
}
output "availability_zones" {
  description = "Availability zones used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zones
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_enabled
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_count
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.internal_user_database_enabled
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zone_count
}
output "log_type" {
  description = "Type of OpenSearch log being published."
  value       = aws_opensearch_domain.aws_opensearch_domain.log_type
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_count
}
output "warm_count" {
  description = "Number of warm nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_count
}
output "duration" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.duration
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_enabled
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_opensearch_domain.aws_opensearch_domain.endpoint
}
output "subnet_ids" {
  description = "Subnets used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.subnet_ids
}
output "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_type
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.deleted
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_options
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.enabled
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_opensearch_domain.aws_opensearch_domain.kibana_endpoint
}
output "snapshot_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.snapshot_options
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
