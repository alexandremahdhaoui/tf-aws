datasource "aws_opensearch_domain" "aws_opensearch_domain" {
  cold_storage_options           = var.cold_storage_options
  processing                     = var.processing
  warm_type                      = var.warm_type
  availability_zone_count        = var.availability_zone_count
  instance_count                 = var.instance_count
  unit                           = var.unit
  identity_pool_id               = var.identity_pool_id
  node_to_node_encryption        = var.node_to_node_encryption
  snapshot_options               = var.snapshot_options
  start_at                       = var.start_at
  iops                           = var.iops
  duration                       = var.duration
  tags                           = var.tags
  volume_type                    = var.volume_type
  warm_count                     = var.warm_count
  warm_enabled                   = var.warm_enabled
  zone_awareness_config          = var.zone_awareness_config
  domain_id                      = var.domain_id
  value                          = var.value
  availability_zones             = var.availability_zones
  cluster_config                 = var.cluster_config
  ebs_options                    = var.ebs_options
  advanced_security_options      = var.advanced_security_options
  encryption_at_rest             = var.encryption_at_rest
  log_type                       = var.log_type
  enabled                        = var.enabled
  log_publishing_options         = var.log_publishing_options
  role_arn                       = var.role_arn
  subnet_ids                     = var.subnet_ids
  endpoint                       = var.endpoint
  dedicated_master_type          = var.dedicated_master_type
  deleted                        = var.deleted
  rollback_on_disable            = var.rollback_on_disable
  security_group_ids             = var.security_group_ids
  vpc_options                    = var.vpc_options
  dedicated_master_count         = var.dedicated_master_count
  zone_awareness_enabled         = var.zone_awareness_enabled
  automated_snapshot_start_hour  = var.automated_snapshot_start_hour
  cognito_options                = var.cognito_options
  domain_name                    = var.domain_name
  maintenance_schedule           = var.maintenance_schedule
  access_policies                = var.access_policies
  cloudwatch_log_group_arn       = var.cloudwatch_log_group_arn
  cron_expression_for_recurrence = var.cron_expression_for_recurrence
  desired_state                  = var.desired_state
  engine_version                 = var.engine_version
  kms_key_id                     = var.kms_key_id
  advanced_options               = var.advanced_options
  dedicated_master_enabled       = var.dedicated_master_enabled
  volume_size                    = var.volume_size
  arn                            = var.arn
  auto_tune_options              = var.auto_tune_options
  ebs_enabled                    = var.ebs_enabled
  internal_user_database_enabled = var.internal_user_database_enabled
  throughput                     = var.throughput
  created                        = var.created
  kibana_endpoint                = var.kibana_endpoint
  user_pool_id                   = var.user_pool_id
  instance_type                  = var.instance_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
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
variable "engine_version" {
  description = " – OpenSearch version for the domain."
  type        = string
}
variable "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  type        = string
}
variable "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  type        = string
}
variable "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  type        = string
}
variable "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  type        = string
}
variable "arn" {
  description = " – ARN of the domain."
  type        = string
}
variable "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  type        = string
}
variable "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  type        = string
}
variable "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  type        = string
}
variable "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  type        = string
}
variable "created" {
  description = " – Status of the creation of the domain."
  type        = string
}
variable "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  type        = string
}
variable "user_pool_id" {
  description = "Cognito User pool used by the domain."
  type        = string
}
variable "instance_type" {
  description = "Instance type of data nodes in the cluster."
  type        = string
}
variable "cold_storage_options" {
  description = "Configuration block containing cold storage configuration.\n"
  type        = string
}
variable "processing" {
  description = " – Status of a configuration change in the domain."
  type        = string
}
variable "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  type        = string
}
variable "availability_zone_count" {
  description = "Number of availability zones used."
  type        = string
}
variable "instance_count" {
  description = "Number of instances in the cluster."
  type        = string
}
variable "unit" {
  description = "Unit of time."
  type        = string
}
variable "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  type        = string
}
variable "node_to_node_encryption" {
  description = "Domain in transit encryption related options.\n"
  type        = string
}
variable "snapshot_options" {
  description = ""
  type        = string
}
variable "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  type        = string
}
variable "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  type        = string
}
variable "duration" {
  description = "Configuration block for the duration of the Auto-Tune maintenance window.\n"
  type        = string
}
variable "tags" {
  description = "Tags assigned to the domain."
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
variable "warm_enabled" {
  description = "Warm storage is enabled."
  type        = string
}
variable "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  type        = string
}
variable "domain_id" {
  description = " – Unique identifier for the domain."
  type        = string
}
variable "value" {
  description = "Duration of an Auto-Tune maintenance window."
  type        = string
}
variable "availability_zones" {
  description = "Availability zones used by the domain."
  type        = string
}
variable "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  type        = string
}
variable "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  type        = string
}
variable "advanced_security_options" {
  description = "Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:\n"
  type        = string
}
variable "encryption_at_rest" {
  description = ""
  type        = string
}
variable "log_type" {
  description = "Type of OpenSearch log being published."
  type        = string
}
variable "enabled" {
  description = "Whether node to node encryption is enabled."
  type        = string
}
variable "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  type        = string
}
variable "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  type        = string
}
variable "subnet_ids" {
  description = "Subnets used by the domain."
  type        = string
}
variable "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  type        = string
}
variable "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  type        = string
}
variable "deleted" {
  description = " – Status of the deletion of the domain."
  type        = string
}
variable "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  type        = string
}
variable "security_group_ids" {
  description = "Security groups used by the domain."
  type        = string
}
variable "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  type        = string
}
variable "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  type        = string
}
variable "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  type        = string
}
variable "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  type        = string
}
variable "cognito_options" {
  description = "Domain Amazon Cognito Authentication options for Kibana.\n"
  type        = string
}
variable "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  type        = string
}
variable "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  type        = string
}
variable "access_policies" {
  description = " – Policy document attached to the domain."
  type        = string
}
output "advanced_options" {
  description = "Key-value string pairs to specify advanced configuration options."
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_options
}
output "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  value       = aws_opensearch_domain.aws_opensearch_domain.cloudwatch_log_group_arn
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_opensearch_domain.aws_opensearch_domain.cron_expression_for_recurrence
}
output "desired_state" {
  description = "Auto-Tune desired state for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.desired_state
}
output "engine_version" {
  description = " – OpenSearch version for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.engine_version
}
output "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  value       = aws_opensearch_domain.aws_opensearch_domain.kms_key_id
}
output "arn" {
  description = " – ARN of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.arn
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_enabled
}
output "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_size
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.auto_tune_options
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.created
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_enabled
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.internal_user_database_enabled
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.throughput
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_type
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_opensearch_domain.aws_opensearch_domain.kibana_endpoint
}
output "user_pool_id" {
  description = "Cognito User pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.user_pool_id
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zone_count
}
output "cold_storage_options" {
  description = "Configuration block containing cold storage configuration.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cold_storage_options
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.processing
}
output "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_type
}
output "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.identity_pool_id
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_count
}
output "unit" {
  description = "Unit of time."
  value       = aws_opensearch_domain.aws_opensearch_domain.unit
}
output "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.iops
}
output "node_to_node_encryption" {
  description = "Domain in transit encryption related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.node_to_node_encryption
}
output "snapshot_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.snapshot_options
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_opensearch_domain.aws_opensearch_domain.start_at
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_id
}
output "duration" {
  description = "Configuration block for the duration of the Auto-Tune maintenance window.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.duration
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.tags
}
output "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_type
}
output "warm_count" {
  description = "Number of warm nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_count
}
output "warm_enabled" {
  description = "Warm storage is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_enabled
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_config
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_opensearch_domain.aws_opensearch_domain.value
}
output "advanced_security_options" {
  description = "Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_security_options
}
output "availability_zones" {
  description = "Availability zones used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zones
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cluster_config
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_options
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.enabled
}
output "encryption_at_rest" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.encryption_at_rest
}
output "log_type" {
  description = "Type of OpenSearch log being published."
  value       = aws_opensearch_domain.aws_opensearch_domain.log_type
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_opensearch_domain.aws_opensearch_domain.endpoint
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.log_publishing_options
}
output "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  value       = aws_opensearch_domain.aws_opensearch_domain.role_arn
}
output "subnet_ids" {
  description = "Subnets used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.subnet_ids
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_count
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_type
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.deleted
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_opensearch_domain.aws_opensearch_domain.rollback_on_disable
}
output "security_group_ids" {
  description = "Security groups used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.security_group_ids
}
output "vpc_options" {
  description = "VPC Options for private OpenSearch domains.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.vpc_options
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.automated_snapshot_start_hour
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_enabled
}
output "access_policies" {
  description = " – Policy document attached to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.access_policies
}
output "cognito_options" {
  description = "Domain Amazon Cognito Authentication options for Kibana.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cognito_options
}
output "domain_name" {
  description = " – (Required) Name of the domain.The following attributes are exported:"
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_name
}
output "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.maintenance_schedule
}
output "auto_tune_options" {
  description = "Configuration of the Auto-Tune options of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.auto_tune_options
}
output "warm_type" {
  description = "Instance type for the OpenSearch cluster's warm nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_type
}
output "log_publishing_options" {
  description = "Domain log publishing related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.log_publishing_options
}
output "node_to_node_encryption" {
  description = "Domain in transit encryption related options.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.node_to_node_encryption
}
output "subnet_ids" {
  description = "Subnets used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.subnet_ids
}
output "value" {
  description = "Duration of an Auto-Tune maintenance window."
  value       = aws_opensearch_domain.aws_opensearch_domain.value
}
output "arn" {
  description = " – ARN of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.arn
}
output "cluster_config" {
  description = "Cluster configuration of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cluster_config
}
output "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_enabled
}
output "enabled" {
  description = "Whether node to node encryption is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.enabled
}
output "duration" {
  description = "Configuration block for the duration of the Auto-Tune maintenance window.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.duration
}
output "volume_size" {
  description = "Size of EBS volumes attached to data nodes (in GB)."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_size
}
output "advanced_security_options" {
  description = "Status of the OpenSearch domain's advanced security options. The block consists of the following attributes:\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.advanced_security_options
}
output "availability_zone_count" {
  description = "Number of availability zones used."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zone_count
}
output "instance_count" {
  description = "Number of instances in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_count
}
output "kms_key_id" {
  description = "KMS key id used to encrypt data at rest."
  value       = aws_opensearch_domain.aws_opensearch_domain.kms_key_id
}
output "processing" {
  description = " – Status of a configuration change in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.processing
}
output "role_arn" {
  description = "IAM Role with the AmazonOpenSearchServiceCognitoAccess policy attached."
  value       = aws_opensearch_domain.aws_opensearch_domain.role_arn
}
output "security_group_ids" {
  description = "Security groups used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.security_group_ids
}
output "zone_awareness_config" {
  description = "Configuration block containing zone awareness settings.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_config
}
output "cognito_options" {
  description = "Domain Amazon Cognito Authentication options for Kibana.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cognito_options
}
output "dedicated_master_enabled" {
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_enabled
}
output "throughput" {
  description = "The throughput (in MiB/s) of the EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.throughput
}
output "deleted" {
  description = " – Status of the deletion of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.deleted
}
output "instance_type" {
  description = "Instance type of data nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.instance_type
}
output "internal_user_database_enabled" {
  description = "Whether the internal user database is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.internal_user_database_enabled
}
output "snapshot_options" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.snapshot_options
}
output "unit" {
  description = "Unit of time."
  value       = aws_opensearch_domain.aws_opensearch_domain.unit
}
output "zone_awareness_enabled" {
  description = "Indicates whether zone awareness is enabled."
  value       = aws_opensearch_domain.aws_opensearch_domain.zone_awareness_enabled
}
output "domain_id" {
  description = " – Unique identifier for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.domain_id
}
output "volume_type" {
  description = "Type of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.volume_type
}
output "automated_snapshot_start_hour" {
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.automated_snapshot_start_hour
}
output "dedicated_master_count" {
  description = "Number of dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_count
}
output "start_at" {
  description = "Date and time at which the Auto-Tune maintenance schedule starts in RFC3339 format."
  value       = aws_opensearch_domain.aws_opensearch_domain.start_at
}
output "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group where the logs are published."
  value       = aws_opensearch_domain.aws_opensearch_domain.cloudwatch_log_group_arn
}
output "created" {
  description = " – Status of the creation of the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.created
}
output "cron_expression_for_recurrence" {
  description = "Cron expression for an Auto-Tune maintenance schedule."
  value       = aws_opensearch_domain.aws_opensearch_domain.cron_expression_for_recurrence
}
output "identity_pool_id" {
  description = "Cognito Identity pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.identity_pool_id
}
output "rollback_on_disable" {
  description = "Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune."
  value       = aws_opensearch_domain.aws_opensearch_domain.rollback_on_disable
}
output "warm_count" {
  description = "Number of warm nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.warm_count
}
output "cold_storage_options" {
  description = "Configuration block containing cold storage configuration.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.cold_storage_options
}
output "dedicated_master_type" {
  description = "Instance type of the dedicated master nodes in the cluster."
  value       = aws_opensearch_domain.aws_opensearch_domain.dedicated_master_type
}
output "encryption_at_rest" {
  description = ""
  value       = aws_opensearch_domain.aws_opensearch_domain.encryption_at_rest
}
output "availability_zones" {
  description = "Availability zones used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.availability_zones
}
output "desired_state" {
  description = "Auto-Tune desired state for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.desired_state
}
output "ebs_options" {
  description = "EBS Options for the instances in the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.ebs_options
}
output "endpoint" {
  description = " – Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_opensearch_domain.aws_opensearch_domain.endpoint
}
output "access_policies" {
  description = " – Policy document attached to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.access_policies
}
output "log_type" {
  description = "Type of OpenSearch log being published."
  value       = aws_opensearch_domain.aws_opensearch_domain.log_type
}
output "user_pool_id" {
  description = "Cognito User pool used by the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.user_pool_id
}
output "iops" {
  description = "Baseline input/output (I/O) performance of EBS volumes attached to data nodes."
  value       = aws_opensearch_domain.aws_opensearch_domain.iops
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint used to access the Kibana application."
  value       = aws_opensearch_domain.aws_opensearch_domain.kibana_endpoint
}
output "tags" {
  description = "Tags assigned to the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.tags
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
output "engine_version" {
  description = " – OpenSearch version for the domain."
  value       = aws_opensearch_domain.aws_opensearch_domain.engine_version
}
output "maintenance_schedule" {
  description = "A list of the nested configurations for the Auto-Tune maintenance windows of the domain.\n"
  value       = aws_opensearch_domain.aws_opensearch_domain.maintenance_schedule
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
