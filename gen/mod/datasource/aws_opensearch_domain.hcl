datasource "aws_opensearch_domain" "aws_opensearch_domain" {
  kms_key_id                     = var.kms_key_id
  subnet_ids                     = var.subnet_ids
  cold_storage_options           = var.cold_storage_options
  warm_type                      = var.warm_type
  auto_tune_options              = var.auto_tune_options
  cluster_config                 = var.cluster_config
  deleted                        = var.deleted
  ebs_enabled                    = var.ebs_enabled
  security_group_ids             = var.security_group_ids
  tags                           = var.tags
  vpc_options                    = var.vpc_options
  desired_state                  = var.desired_state
  ebs_options                    = var.ebs_options
  domain_name                    = var.domain_name
  snapshot_options               = var.snapshot_options
  warm_enabled                   = var.warm_enabled
  unit                           = var.unit
  arn                            = var.arn
  cognito_options                = var.cognito_options
  maintenance_schedule           = var.maintenance_schedule
  start_at                       = var.start_at
  zone_awareness_enabled         = var.zone_awareness_enabled
  dedicated_master_enabled       = var.dedicated_master_enabled
  duration                       = var.duration
  kibana_endpoint                = var.kibana_endpoint
  processing                     = var.processing
  volume_size                    = var.volume_size
  zone_awareness_config          = var.zone_awareness_config
  access_policies                = var.access_policies
  availability_zone_count        = var.availability_zone_count
  availability_zones             = var.availability_zones
  dedicated_master_count         = var.dedicated_master_count
  enabled                        = var.enabled
  advanced_security_options      = var.advanced_security_options
  domain_id                      = var.domain_id
  encryption_at_rest             = var.encryption_at_rest
  advanced_options               = var.advanced_options
  log_publishing_options         = var.log_publishing_options
  log_type                       = var.log_type
  cron_expression_for_recurrence = var.cron_expression_for_recurrence
  internal_user_database_enabled = var.internal_user_database_enabled
  node_to_node_encryption        = var.node_to_node_encryption
  rollback_on_disable            = var.rollback_on_disable
  throughput                     = var.throughput
  cloudwatch_log_group_arn       = var.cloudwatch_log_group_arn
  endpoint                       = var.endpoint
  identity_pool_id               = var.identity_pool_id
  instance_count                 = var.instance_count
  role_arn                       = var.role_arn
  created                        = var.created
  user_pool_id                   = var.user_pool_id
  value                          = var.value
  volume_type                    = var.volume_type
  warm_count                     = var.warm_count
  automated_snapshot_start_hour  = var.automated_snapshot_start_hour
  dedicated_master_type          = var.dedicated_master_type
  engine_version                 = var.engine_version
  instance_type                  = var.instance_type
  iops                           = var.iops
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "unit" {
  description = "Unit of time."
  type        = string
}
variable "arn" {
  description = " – ARN of the domain."
  type        = string
}
variable "cognito_options" {
  description = ""
  type        = string
}
variable "maintenance_schedule" {
  description = ""
  type        = string
}
variable "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  type        = string
}
variable "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  type        = string
}
variable "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  type        = string
}
variable "duration" {
  description = ""
  type        = string
}
variable "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  type        = string
}
variable "processing" {
  description = " – Status of a configuration change in the domain."
  type        = string
}
variable "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  type        = string
}
variable "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  type        = string
}
variable "access_policies" {
  description = " – Policy document attached to the domain."
  type        = string
}
variable "availability_zone_count" {
  description = "Number of availability zones used."
  type        = string
}
variable "availability_zones" {
  description = "Availability zones used by the domain."
  type        = string
}
variable "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  type        = string
}
variable "enabled" {
  description = "Whether node to node encryption is enabled."
  type        = string
}
variable "advanced_security_options" {
  description = ""
  type        = string
}
variable "domain_id" {
  description = " – Unique identifier for the domain."
  type        = string
}
variable "encryption_at_rest" {
  description = ""
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
variable "log_type" {
  description = "Type of OpenSearch log being published."
  type        = string
}
variable "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  type        = string
}
variable "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  type        = string
}
variable "node_to_node_encryption" {
  description = ""
  type        = string
}
variable "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  type        = string
}
variable "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  type        = string
}
variable "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  type        = string
}
variable "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  type        = string
}
variable "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  type        = string
}
variable "instance_count" {
  description = "Number of instances in the cluster."
  type        = string
}
variable "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  type        = string
}
variable "created" {
  description = " – Status of the creation of the domain."
  type        = string
}
variable "user_pool_id" {
  description = "Cognito User pool used by the domain."
  type        = string
}
variable "value" {
  description = "Duration of an Auto-Tune maintenance window."
  type        = string
}
variable "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  type        = string
}
variable "warm_count" {
  description = "Number of warm nodes in the cluster."
  type        = string
}
variable "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  type        = string
}
variable "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  type        = string
}
variable "engine_version" {
  description = " – OpenSearch version for the domain."
  type        = string
}
variable "instance_type" {
  description = "Instance type of data nodes in the cluster."
  type        = string
}
variable "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  type        = string
}
variable "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  type        = string
}
variable "subnet_ids" {
  description = "Subnets used by the domain."
  type        = string
}
variable "cold_storage_options" {
  description = ""
  type        = string
}
variable "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  type        = string
}
variable "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  type        = string
}
variable "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  type        = string
}
variable "deleted" {
  description = " – Status of the deletion of the domain."
  type        = string
}
variable "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  type        = string
}
variable "security_group_ids" {
  description = "Security groups used by the domain."
  type        = string
}
variable "tags" {
  description = "Tags assigned to the domain."
  type        = string
}
variable "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  type        = string
}
variable "desired_state" {
  description = "Auto-Tune desired state for the domain."
  type        = string
}
variable "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  type        = string
}
variable "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  type        = string
}
variable "snapshot_options" {
  description = ""
  type        = string
}
variable "warm_enabled" {
  description = "Warm storage is enabled."
  type        = string
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.automated_snapshot_start_hour
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = " – OpenSearch version for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  value       = aws_opensearch_domain.aws_opensearch_domain.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Subnets used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cold_storage_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cold_storage_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.auto_tune_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cluster_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.deleted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "Security groups used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.vpc_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "desired_state" {
  description = "Auto-Tune desired state for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.desired_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.snapshot_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unit" {
  description = "Unit of time."
  value       = aws_opensearch_domain.aws_opensearch_domain.unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " – ARN of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cognito_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cognito_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_schedule" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.maintenance_schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_opensearch_domain.aws_opensearch_domain.start_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "duration" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_opensearch_domain.aws_opensearch_domain.kibana_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.processing
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_policies" {
  description = " – Policy document attached to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.access_policies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zone_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zones" {
  description = "Availability zones used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_security_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_security_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_at_rest" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.encryption_at_rest
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.log_publishing_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_type" {
  description = "Type of OpenSearch log being published."
  value       = aws_opensearch_domain.aws_opensearch_domain.log_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_opensearch_domain.aws_opensearch_domain.cron_expression_for_recurrence
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.internal_user_database_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_to_node_encryption" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.node_to_node_encryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_opensearch_domain.aws_opensearch_domain.rollback_on_disable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  value       = aws_opensearch_domain.aws_opensearch_domain.cloudwatch_log_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_opensearch_domain.aws_opensearch_domain.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.identity_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  value       = aws_opensearch_domain.aws_opensearch_domain.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_pool_id" {
  description = "Cognito User pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.user_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_opensearch_domain.aws_opensearch_domain.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_count" {
  description = "Number of warm nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.internal_user_database_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_to_node_encryption" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.node_to_node_encryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "Security groups used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.automated_snapshot_start_hour
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  value       = aws_opensearch_domain.aws_opensearch_domain.cloudwatch_log_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "duration" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.identity_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_opensearch_domain.aws_opensearch_domain.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_opensearch_domain.aws_opensearch_domain.kibana_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  value       = aws_opensearch_domain.aws_opensearch_domain.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_opensearch_domain.aws_opensearch_domain.rollback_on_disable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Subnets used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_security_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_security_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.auto_tune_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_policies" {
  description = " – Policy document attached to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.access_policies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_pool_id" {
  description = "Cognito User pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.user_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_count" {
  description = "Number of warm nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_opensearch_domain.aws_opensearch_domain.cron_expression_for_recurrence
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = " – OpenSearch version for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cold_storage_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cold_storage_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_at_rest" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.encryption_at_rest
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "desired_state" {
  description = "Auto-Tune desired state for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.desired_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.log_publishing_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_opensearch_domain.aws_opensearch_domain.start_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zones" {
  description = "Availability zones used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_schedule" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.maintenance_schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_opensearch_domain.aws_opensearch_domain.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unit" {
  description = "Unit of time."
  value       = aws_opensearch_domain.aws_opensearch_domain.unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " – ARN of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zone_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cluster_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.processing
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_type" {
  description = "Type of OpenSearch log being published."
  value       = aws_opensearch_domain.aws_opensearch_domain.log_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.snapshot_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  value       = aws_opensearch_domain.aws_opensearch_domain.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.vpc_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cognito_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.cognito_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.deleted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_count
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
}
