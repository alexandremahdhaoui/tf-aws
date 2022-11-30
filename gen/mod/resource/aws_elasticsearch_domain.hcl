resource "aws_elasticsearch_domain" "aws_elasticsearch_domain" {
  cluster_config                   = var.cluster_config
  cognito_options                  = var.cognito_options
  ebs_options                      = var.ebs_options
  warm_enabled                     = var.warm_enabled
  ebs_enabled                      = var.ebs_enabled
  user_pool_id                     = var.user_pool_id
  volume_size                      = var.volume_size
  vpc_options.0.availability_zones = var.vpc_options.0.availability_zones
  role_arn                         = var.role_arn
  volume_type                      = var.volume_type
  vpc_options.0.vpc_id             = var.vpc_options.0.vpc_id
  tls_security_policy              = var.tls_security_policy
  custom_endpoint_certificate_arn  = var.custom_endpoint_certificate_arn
  dedicated_master_enabled         = var.dedicated_master_enabled
  identity_pool_id                 = var.identity_pool_id
  instance_type                    = var.instance_type
  internal_user_database_enabled   = var.internal_user_database_enabled
  iops                             = var.iops
  kms_key_id                       = var.kms_key_id
  zone_awareness_config            = var.zone_awareness_config
  enabled                          = var.enabled
  enforce_https                    = var.enforce_https
  access_policies                  = var.access_policies
  auto_tune_options                = var.auto_tune_options
  delete                           = var.delete
  subnet_ids                       = var.subnet_ids
  unit                             = var.unit
  custom_endpoint_enabled          = var.custom_endpoint_enabled
  domain_endpoint_options          = var.domain_endpoint_options
  duration                         = var.duration
  elasticsearch_version            = var.elasticsearch_version
  security_group_ids               = var.security_group_ids
  snapshot_options                 = var.snapshot_options
  start_at                         = var.start_at
  value                            = var.value
  automated_snapshot_start_hour    = var.automated_snapshot_start_hour
  create                           = var.create
  dedicated_master_type            = var.dedicated_master_type
  master_user_name                 = var.master_user_name
  update                           = var.update
  vpc_options                      = var.vpc_options
  warm_count                       = var.warm_count
  advanced_options                 = var.advanced_options
  arn                              = var.arn
  desired_state                    = var.desired_state
  log_type                         = var.log_type
  warm_type                        = var.warm_type
  availability_zone_count          = var.availability_zone_count
  domain_id                        = var.domain_id
  log_publishing_options           = var.log_publishing_options
  node_to_node_encryption          = var.node_to_node_encryption
  throughput                       = var.throughput
  cloudwatch_log_group_arn         = var.cloudwatch_log_group_arn
  master_user_password             = var.master_user_password
  rollback_on_disable              = var.rollback_on_disable
  custom_endpoint                  = var.custom_endpoint
  master_user_arn                  = var.master_user_arn
  advanced_security_options        = var.advanced_security_options
  domain_name                      = var.domain_name
  encrypt_at_rest                  = var.encrypt_at_rest
  maintenance_schedule             = var.maintenance_schedule
  dedicated_master_count           = var.dedicated_master_count
  endpoint                         = var.endpoint
  kibana_endpoint                  = var.kibana_endpoint
  tags                             = var.tags
  cron_expression_for_recurrence   = var.cron_expression_for_recurrence
  instance_count                   = var.instance_count
  master_user_options              = var.master_user_options
  zone_awareness_enabled           = var.zone_awareness_enabled
  cold_storage_options             = var.cold_storage_options
  tags_all                         = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "log_publishing_options" {
  description = "(Optional) Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below."
  type        = string
}
variable "node_to_node_encryption" {
  description = "(Optional) Configuration block for node-to-node encryption options. Detailed below."
  type        = string
}
variable "throughput" {
  description = "(Required if volume_type is set to gp3) Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the gp3 volume type. Valid values are between 125 and 1000."
  type        = string
}
variable "availability_zone_count" {
  description = "(Optional) Number of Availability Zones for the domain to use with zone_awareness_enabled. Defaults to 2. Valid values: 2 or 3.cognito_optionsAWS documentation: Amazon Cognito Authentication for Kibana"
  type        = string
}
variable "domain_id" {
  description = "Unique identifier for the domain."
  type        = string
}
variable "rollback_on_disable" {
  description = "(Optional) Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: DEFAULT_ROLLBACK or NO_ROLLBACK.maintenance_schedule"
  type        = string
}
variable "cloudwatch_log_group_arn" {
  description = "(Required) ARN of the Cloudwatch log group to which log needs to be published."
  type        = string
}
variable "master_user_password" {
  description = "(Optional) Main user's password, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true.auto_tune_options"
  type        = string
}
variable "custom_endpoint" {
  description = "(Optional) Fully qualified domain for your custom endpoint."
  type        = string
}
variable "master_user_arn" {
  description = "(Optional) ARN for the main user. Only specify if internal_user_database_enabled is not set or set to false."
  type        = string
}
variable "encrypt_at_rest" {
  description = "(Optional) Configuration block for encrypt at rest options. Only available for certain instance types. Detailed below."
  type        = string
}
variable "maintenance_schedule" {
  description = "(Required if rollback_on_disable is set to DEFAULT_ROLLBACK) Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below."
  type        = string
}
variable "advanced_security_options" {
  description = "(Optional) Configuration block for fine-grained access control. Detailed below."
  type        = string
}
variable "domain_name" {
  description = "Name of the Elasticsearch domain."
  type        = string
}
variable "kibana_endpoint" {
  description = "Domain-specific endpoint for kibana without https scheme."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "dedicated_master_count" {
  description = "(Optional) Number of dedicated main nodes in the cluster."
  type        = string
}
variable "endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests."
  type        = string
}
variable "master_user_options" {
  description = "(Optional) Configuration block for the main user. Detailed below.master_user_options"
  type        = string
}
variable "zone_awareness_enabled" {
  description = "(Optional) Whether zone awareness is enabled, set to true for multi-az deployment. To enable awareness with three Availability Zones, the availability_zone_count within the zone_awareness_config must be set to 3.cold_storage_options"
  type        = string
}
variable "cron_expression_for_recurrence" {
  description = "(Required) A cron expression specifying the recurrence pattern for an Auto-Tune maintenance schedule.duration"
  type        = string
}
variable "instance_count" {
  description = "(Optional) Number of instances in the cluster."
  type        = string
}
variable "cold_storage_options" {
  description = "(Optional) Configuration block containing cold storage configuration. Detailed below."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "ebs_options" {
  description = "(Optional) Configuration block for EBS related options, may be required based on chosen instance size. Detailed below."
  type        = string
}
variable "warm_enabled" {
  description = "(Optional) Whether to enable warm storage."
  type        = string
}
variable "cluster_config" {
  description = "(Optional) Configuration block for the cluster of the domain. Detailed below."
  type        = string
}
variable "cognito_options" {
  description = "(Optional) Configuration block for authenticating Kibana with Cognito. Detailed below."
  type        = string
}
variable "volume_size" {
  description = "(Required if ebs_enabled is set to true.) Size of EBS volumes attached to data nodes (in GiB)."
  type        = string
}
variable "vpc_options.0.availability_zones" {
  description = "If the domain was created inside a VPC, the names of the availability zones the configured subnet_ids were created inside."
  type        = string
}
variable "ebs_enabled" {
  description = "(Required) Whether EBS volumes are attached to data nodes in the domain."
  type        = string
}
variable "user_pool_id" {
  description = "(Required) ID of the Cognito User Pool to use.domain_endpoint_options"
  type        = string
}
variable "vpc_options.0.vpc_id" {
  description = "If the domain was created inside a VPC, the ID of the VPC.TimeoutsConfiguration options:"
  type        = string
}
variable "role_arn" {
  description = "(Required) ARN of the IAM role that has the AmazonESCognitoAccess policy attached."
  type        = string
}
variable "volume_type" {
  description = "(Optional) Type of EBS volumes attached to data nodes.encrypt_at_rest~> strongNote: You can enable encrypt_at_rest emin place for an existing, unencrypted domain only if your Elasticsearch version is 6.7 or greater. For lower versions, if you enable encrypt_at_rest, Terraform with recreate the domain, potentially causing data loss. For any version, if you disable encrypt_at_rest for an existing, encrypted domain, Terraform will recreate the domain, potentially causing data loss. If you change the kms_key_id, Terraform will also recreate the domain, potentially causing data loss."
  type        = string
}
variable "identity_pool_id" {
  description = "(Required) ID of the Cognito Identity Pool to use."
  type        = string
}
variable "instance_type" {
  description = "(Optional) Instance type of data nodes in the cluster."
  type        = string
}
variable "internal_user_database_enabled" {
  description = "(Optional, Default: false) Whether the internal user database is enabled. If not set, defaults to false by the AWS API."
  type        = string
}
variable "iops" {
  description = "(Optional) Baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the GP3 and Provisioned IOPS EBS volume types."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) KMS key ARN to encrypt the Elasticsearch domain with. If not specified then it defaults to using the aws/es service KMS key. Note that KMS will accept a KMS key ID but will return the key ARN. To prevent Terraform detecting unwanted changes, use the key ARN instead.log_publishing_options"
  type        = string
}
variable "tls_security_policy" {
  description = "(Optional) Name of the TLS security policy that needs to be applied to the HTTPS endpoint. Valid values:  Policy-Min-TLS-1-0-2019-07 and Policy-Min-TLS-1-2-2019-07. Terraform will only perform drift detection if a configuration value is provided.ebs_options"
  type        = string
}
variable "custom_endpoint_certificate_arn" {
  description = "(Optional) ACM certificate ARN for your custom endpoint."
  type        = string
}
variable "dedicated_master_enabled" {
  description = "(Optional) Whether dedicated main nodes are enabled for the cluster."
  type        = string
}
variable "zone_awareness_config" {
  description = "(Optional) Configuration block containing zone awareness settings. Detailed below."
  type        = string
}
variable "enabled" {
  description = "(Required) Whether to enable node-to-node encryption. If the node_to_node_encryption block is not provided then this defaults to false. Enabling node-to-node encryption of a new domain requires an elasticsearch_version of 6.0 or greater.snapshot_options"
  type        = string
}
variable "enforce_https" {
  description = "(Optional) Whether or not to require HTTPS. Defaults to true."
  type        = string
}
variable "delete" {
  description = "(Default 90m)"
  type        = string
}
variable "subnet_ids" {
  description = "(Required) List of VPC Subnet IDs for the Elasticsearch domain endpoints to be created in.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "access_policies" {
  description = "(Optional) IAM policy document specifying the access policies for the domain."
  type        = string
}
variable "auto_tune_options" {
  description = "(Optional) Configuration block for the Auto-Tune options of the domain. Detailed below."
  type        = string
}
variable "duration" {
  description = "(Required) Configuration block for the duration of the Auto-Tune maintenance window. Detailed below."
  type        = string
}
variable "elasticsearch_version" {
  description = "(Optional) Version of Elasticsearch to deploy. Defaults to 1.5."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) List of VPC Security Group IDs to be applied to the Elasticsearch domain endpoints. If omitted, the default Security Group for the VPC will be used."
  type        = string
}
variable "snapshot_options" {
  description = "(Optional) Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots."
  type        = string
}
variable "start_at" {
  description = "(Required) Date and time at which to start the Auto-Tune maintenance schedule in RFC3339 format."
  type        = string
}
variable "unit" {
  description = "(Required) The unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: HOURS.cluster_config"
  type        = string
}
variable "custom_endpoint_enabled" {
  description = "(Optional) Whether to enable custom endpoint for the Elasticsearch domain."
  type        = string
}
variable "domain_endpoint_options" {
  description = "(Optional) Configuration block for domain endpoint HTTP(S) related options. Detailed below."
  type        = string
}
variable "value" {
  description = "(Required) An integer specifying the value of the duration of an Auto-Tune maintenance window."
  type        = string
}
variable "dedicated_master_type" {
  description = "(Optional) Instance type of the dedicated main nodes in the cluster."
  type        = string
}
variable "master_user_name" {
  description = "(Optional) Main user's username, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true."
  type        = string
}
variable "update" {
  description = "(Default 60m)"
  type        = string
}
variable "vpc_options" {
  description = "(Optional) Configuration block for VPC related options. Adding or removing this configuration forces a new resource (documentation). Detailed below.advanced_security_options"
  type        = string
}
variable "warm_count" {
  description = "(Optional) Number of warm nodes in the cluster. Valid values are between 2 and 150. warm_count can be only and must be set when warm_enabled is set to true."
  type        = string
}
variable "automated_snapshot_start_hour" {
  description = "(Required) Hour during which the service takes an automated daily snapshot of the indices in the domain.vpc_optionsAWS documentation: VPC Support for Amazon Elasticsearch Service Domains~> strongNote: You must have created the service linked role for the Elasticsearch service to use vpc_options. If you need to create the service linked role at the same time as the Elasticsearch domain then you must use depends_on to make sure that the role is created before the Elasticsearch domain. See the VPC based ES domain example above.-> Security Groups and Subnets referenced in these attributes must all be within the same VPC. This determines what VPC the endpoints are created in."
  type        = string
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "desired_state" {
  description = "(Required) The Auto-Tune desired state for the domain. Valid values: ENABLED or DISABLED."
  type        = string
}
variable "log_type" {
  description = "(Required) Type of Elasticsearch log. Valid values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, AUDIT_LOGS.node_to_node_encryption~> strongNote: You can enable node_to_node_encryption emin place for an existing, unencrypted domain only if your Elasticsearch version is 6.7 or greater. For lower versions, if you enable node_to_node_encryption, Terraform will recreate the domain, potentially causing data loss. For any version, if you disable node_to_node_encryption for an existing, node-to-node encrypted domain, Terraform will recreate the domain, potentially causing data loss."
  type        = string
}
variable "warm_type" {
  description = "(Optional) Instance type for the Elasticsearch cluster's warm nodes. Valid values are ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch and ultrawarm1.xlarge.elasticsearch. warm_type can be only and must be set when warm_enabled is set to true."
  type        = string
}
variable "advanced_options" {
  description = "(Optional) Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing Terraform to want to recreate your Elasticsearch domain on every apply."
  type        = string
}
variable "arn" {
  description = "ARN of the domain."
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
output "ebs_enabled" {
  description = "(Required) Whether EBS volumes are attached to data nodes in the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_pool_id" {
  description = "(Required) ID of the Cognito User Pool to use.domain_endpoint_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.user_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "(Required if ebs_enabled is set to true.) Size of EBS volumes attached to data nodes (in GiB)."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_options.0.availability_zones" {
  description = "If the domain was created inside a VPC, the names of the availability zones the configured subnet_ids were created inside."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options.0.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) ARN of the IAM role that has the AmazonESCognitoAccess policy attached."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "(Optional) Type of EBS volumes attached to data nodes.encrypt_at_rest~> strongNote: You can enable encrypt_at_rest emin place for an existing, unencrypted domain only if your Elasticsearch version is 6.7 or greater. For lower versions, if you enable encrypt_at_rest, Terraform with recreate the domain, potentially causing data loss. For any version, if you disable encrypt_at_rest for an existing, encrypted domain, Terraform will recreate the domain, potentially causing data loss. If you change the kms_key_id, Terraform will also recreate the domain, potentially causing data loss."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_options.0.vpc_id" {
  description = "If the domain was created inside a VPC, the ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options.0.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "(Optional) Baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the GP3 and Provisioned IOPS EBS volume types."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) KMS key ARN to encrypt the Elasticsearch domain with. If not specified then it defaults to using the aws/es service KMS key. Note that KMS will accept a KMS key ID but will return the key ARN. To prevent Terraform detecting unwanted changes, use the key ARN instead.log_publishing_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tls_security_policy" {
  description = "(Optional) Name of the TLS security policy that needs to be applied to the HTTPS endpoint. Valid values:  Policy-Min-TLS-1-0-2019-07 and Policy-Min-TLS-1-2-2019-07. Terraform will only perform drift detection if a configuration value is provided.ebs_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tls_security_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_endpoint_certificate_arn" {
  description = "(Optional) ACM certificate ARN for your custom endpoint."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.custom_endpoint_certificate_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_enabled" {
  description = "(Optional) Whether dedicated main nodes are enabled for the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity_pool_id" {
  description = "(Required) ID of the Cognito Identity Pool to use."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.identity_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Optional) Instance type of data nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "internal_user_database_enabled" {
  description = "(Optional, Default: false) Whether the internal user database is enabled. If not set, defaults to false by the AWS API."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.internal_user_database_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_awareness_config" {
  description = "(Optional) Configuration block containing zone awareness settings. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Required) Whether to enable node-to-node encryption. If the node_to_node_encryption block is not provided then this defaults to false. Enabling node-to-node encryption of a new domain requires an elasticsearch_version of 6.0 or greater.snapshot_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enforce_https" {
  description = "(Optional) Whether or not to require HTTPS. Defaults to true."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.enforce_https
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_policies" {
  description = "(Optional) IAM policy document specifying the access policies for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.access_policies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_tune_options" {
  description = "(Optional) Configuration block for the Auto-Tune options of the domain. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.auto_tune_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Required) List of VPC Subnet IDs for the Elasticsearch domain endpoints to be created in.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_options" {
  description = "(Optional) Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.snapshot_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_at" {
  description = "(Required) Date and time at which to start the Auto-Tune maintenance schedule in RFC3339 format."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.start_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unit" {
  description = "(Required) The unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: HOURS.cluster_config"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_endpoint_enabled" {
  description = "(Optional) Whether to enable custom endpoint for the Elasticsearch domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.custom_endpoint_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_endpoint_options" {
  description = "(Optional) Configuration block for domain endpoint HTTP(S) related options. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_endpoint_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "duration" {
  description = "(Required) Configuration block for the duration of the Auto-Tune maintenance window. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "elasticsearch_version" {
  description = "(Optional) Version of Elasticsearch to deploy. Defaults to 1.5."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.elasticsearch_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) List of VPC Security Group IDs to be applied to the Elasticsearch domain endpoints. If omitted, the default Security Group for the VPC will be used."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) An integer specifying the value of the duration of an Auto-Tune maintenance window."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_options" {
  description = "(Optional) Configuration block for VPC related options. Adding or removing this configuration forces a new resource (documentation). Detailed below.advanced_security_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_count" {
  description = "(Optional) Number of warm nodes in the cluster. Valid values are between 2 and 150. warm_count can be only and must be set when warm_enabled is set to true."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "automated_snapshot_start_hour" {
  description = "(Required) Hour during which the service takes an automated daily snapshot of the indices in the domain.vpc_optionsAWS documentation: VPC Support for Amazon Elasticsearch Service Domains~> strongNote: You must have created the service linked role for the Elasticsearch service to use vpc_options. If you need to create the service linked role at the same time as the Elasticsearch domain then you must use depends_on to make sure that the role is created before the Elasticsearch domain. See the VPC based ES domain example above.-> Security Groups and Subnets referenced in these attributes must all be within the same VPC. This determines what VPC the endpoints are created in."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.automated_snapshot_start_hour
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_type" {
  description = "(Optional) Instance type of the dedicated main nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "master_user_name" {
  description = "(Optional) Main user's username, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.master_user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 60m)"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_options" {
  description = "(Optional) Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing Terraform to want to recreate your Elasticsearch domain on every apply."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "desired_state" {
  description = "(Required) The Auto-Tune desired state for the domain. Valid values: ENABLED or DISABLED."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.desired_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_type" {
  description = "(Required) Type of Elasticsearch log. Valid values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, AUDIT_LOGS.node_to_node_encryption~> strongNote: You can enable node_to_node_encryption emin place for an existing, unencrypted domain only if your Elasticsearch version is 6.7 or greater. For lower versions, if you enable node_to_node_encryption, Terraform will recreate the domain, potentially causing data loss. For any version, if you disable node_to_node_encryption for an existing, node-to-node encrypted domain, Terraform will recreate the domain, potentially causing data loss."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_type" {
  description = "(Optional) Instance type for the Elasticsearch cluster's warm nodes. Valid values are ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch and ultrawarm1.xlarge.elasticsearch. warm_type can be only and must be set when warm_enabled is set to true."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone_count" {
  description = "(Optional) Number of Availability Zones for the domain to use with zone_awareness_enabled. Defaults to 2. Valid values: 2 or 3.cognito_optionsAWS documentation: Amazon Cognito Authentication for Kibana"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.availability_zone_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_id" {
  description = "Unique identifier for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_publishing_options" {
  description = "(Optional) Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.log_publishing_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_to_node_encryption" {
  description = "(Optional) Configuration block for node-to-node encryption options. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.node_to_node_encryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "(Required if volume_type is set to gp3) Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the gp3 volume type. Valid values are between 125 and 1000."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_log_group_arn" {
  description = "(Required) ARN of the Cloudwatch log group to which log needs to be published."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cloudwatch_log_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "master_user_password" {
  description = "(Optional) Main user's password, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true.auto_tune_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.master_user_password
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rollback_on_disable" {
  description = "(Optional) Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: DEFAULT_ROLLBACK or NO_ROLLBACK.maintenance_schedule"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.rollback_on_disable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_endpoint" {
  description = "(Optional) Fully qualified domain for your custom endpoint."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.custom_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "master_user_arn" {
  description = "(Optional) ARN for the main user. Only specify if internal_user_database_enabled is not set or set to false."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.master_user_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "advanced_security_options" {
  description = "(Optional) Configuration block for fine-grained access control. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.advanced_security_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "Name of the Elasticsearch domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypt_at_rest" {
  description = "(Optional) Configuration block for encrypt at rest options. Only available for certain instance types. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.encrypt_at_rest
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_schedule" {
  description = "(Required if rollback_on_disable is set to DEFAULT_ROLLBACK) Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.maintenance_schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_master_count" {
  description = "(Optional) Number of dedicated main nodes in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.dedicated_master_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint for kibana without https scheme."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kibana_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cron_expression_for_recurrence" {
  description = "(Required) A cron expression specifying the recurrence pattern for an Auto-Tune maintenance schedule.duration"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cron_expression_for_recurrence
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_count" {
  description = "(Optional) Number of instances in the cluster."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.instance_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "master_user_options" {
  description = "(Optional) Configuration block for the main user. Detailed below.master_user_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.master_user_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_awareness_enabled" {
  description = "(Optional) Whether zone awareness is enabled, set to true for multi-az deployment. To enable awareness with three Availability Zones, the availability_zone_count within the zone_awareness_config must be set to 3.cold_storage_options"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.zone_awareness_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cold_storage_options" {
  description = "(Optional) Configuration block containing cold storage configuration. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cold_storage_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_config" {
  description = "(Optional) Configuration block for the cluster of the domain. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cluster_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cognito_options" {
  description = "(Optional) Configuration block for authenticating Kibana with Cognito. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.cognito_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_options" {
  description = "(Optional) Configuration block for EBS related options, may be required based on chosen instance size. Detailed below."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.ebs_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warm_enabled" {
  description = "(Optional) Whether to enable warm storage."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.warm_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_id" {
  description = "Unique identifier for the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 60m)"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_options.0.availability_zones" {
  description = "If the domain was created inside a VPC, the names of the availability zones the configured subnet_ids were created inside."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options.0.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kibana_endpoint" {
  description = "Domain-specific endpoint for kibana without https scheme."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.kibana_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_options.0.vpc_id" {
  description = "If the domain was created inside a VPC, the ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.vpc_options.0.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "Name of the Elasticsearch domain."
  value       = aws_elasticsearch_domain.aws_elasticsearch_domain.domain_name
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
      "kind/name"                   = "aws_elasticsearch_domain"
      "kind/version"                = "v0.1.0"
    }
  }
}
