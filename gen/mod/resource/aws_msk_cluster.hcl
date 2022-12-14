resource "aws_msk_cluster" "aws_msk_cluster" {
  zookeeper_connect_string_tls                     = var.zookeeper_connect_string_tls
  broker_logs                                      = var.broker_logs
  iam                                              = var.iam
  node_exporter                                    = var.node_exporter
  open_monitoring                                  = var.open_monitoring
  volume_throughput                                = var.volume_throughput
  number_of_broker_nodes                           = var.number_of_broker_nodes
  public_access                                    = var.public_access
  bootstrap_brokers_public_sasl_iam                = var.bootstrap_brokers_public_sasl_iam
  enabled                                          = var.enabled
  enabled_in_broker                                = var.enabled_in_broker
  encryption_info                                  = var.encryption_info
  storage_info                                     = var.storage_info
  tls                                              = var.tls
  update                                           = var.update
  arn                                              = var.arn
  current_version                                  = var.current_version
  prometheus                                       = var.prometheus
  revision                                         = var.revision
  tags_all                                         = var.tags_all
  bootstrap_brokers                                = var.bootstrap_brokers
  broker_node_group_info                           = var.broker_node_group_info
  log_group                                        = var.log_group
  scram                                            = var.scram
  bootstrap_brokers_sasl_iam                       = var.bootstrap_brokers_sasl_iam
  provisioned_throughput                           = var.provisioned_throughput
  bootstrap_brokers_public_sasl_scram              = var.bootstrap_brokers_public_sasl_scram
  ebs_volume_size                                  = var.ebs_volume_size
  bootstrap_brokers_public_tls                     = var.bootstrap_brokers_public_tls
  connectivity_info                                = var.connectivity_info
  encryption_at_rest_kms_key_arn                   = var.encryption_at_rest_kms_key_arn
  encryption_info.0.encryption_at_rest_kms_key_arn = var.encryption_info.0.encryption_at_rest_kms_key_arn
  unauthenticated                                  = var.unauthenticated
  cluster_name                                     = var.cluster_name
  tags                                             = var.tags
  bootstrap_brokers_tls                            = var.bootstrap_brokers_tls
  configuration_info                               = var.configuration_info
  enhanced_monitoring                              = var.enhanced_monitoring
  in_cluster                                       = var.in_cluster
  instance_type                                    = var.instance_type
  client_authentication                            = var.client_authentication
  sasl                                             = var.sasl
  volume_size                                      = var.volume_size
  zookeeper_connect_string                         = var.zookeeper_connect_string
  client_broker                                    = var.client_broker
  jmx_exporter                                     = var.jmx_exporter
  kafka_version                                    = var.kafka_version
  prefix                                           = var.prefix
  delivery_stream                                  = var.delivery_stream
  type                                             = var.type
  az_distribution                                  = var.az_distribution
  bucket                                           = var.bucket
  create                                           = var.create
  ebs_storage_info                                 = var.ebs_storage_info
  encryption_in_transit                            = var.encryption_in_transit
  logging_info                                     = var.logging_info
  security_groups                                  = var.security_groups
  bootstrap_brokers_sasl_scram                     = var.bootstrap_brokers_sasl_scram
  certificate_authority_arns                       = var.certificate_authority_arns
  client_subnets                                   = var.client_subnets
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "client_broker" {
  description = "(Optional) Encryption setting for data in transit between clients and brokers. Valid values: TLS, TLS_PLAINTEXT, and PLAINTEXT. Default value is TLS."
  type        = string
  default     = ""
}
variable "jmx_exporter" {
  description = "(Optional) Configuration block for JMX Exporter. See below."
  type        = string
  default     = ""
}
variable "kafka_version" {
  description = "(Required) Specify the desired Kafka software version."
  type        = string
}
variable "prefix" {
  description = "(Optional) Prefix to append to the folder name.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "delivery_stream" {
  description = "(Optional) Name of the Kinesis Data Firehose delivery stream to deliver logs to.logging_info broker_logs s3 Argument Reference"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Public access type. Valida values: DISABLED, SERVICE_PROVIDED_EIPS.broker_node_group_info storage_info Argument Reference"
  type        = string
  default     = ""
}
variable "encryption_in_transit" {
  description = "(Optional) Configuration block to specify encryption in transit. See below."
  type        = string
  default     = ""
}
variable "az_distribution" {
  description = "(Optional) The distribution of broker nodes across availability zones (documentation). Currently the only valid value is DEFAULT."
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Optional) Name of the S3 bucket to deliver logs to."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "ebs_storage_info" {
  description = "(Optional) A block that contains EBS volume information. See below.storage_info ebs_storage_info Argument Reference"
  type        = string
  default     = ""
}
variable "logging_info" {
  description = "(Optional) Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See below."
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Required) A list of the security groups to associate with the elastic network interfaces to control who can communicate with the cluster."
  type        = string
}
variable "bootstrap_brokers_sasl_scram" {
  description = "One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  type        = string
}
variable "certificate_authority_arns" {
  description = "(Optional) List of ACM Certificate Authority Amazon Resource Names (ARNs).configuration_info Argument Reference"
  type        = string
  default     = ""
}
variable "client_subnets" {
  description = "(Required) A list of subnets to connect to in client VPC (documentation)."
  type        = string
}
variable "volume_throughput" {
  description = "(Optional) Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second. The minimum value is 250. The maximum value varies between broker type. You can refer to the valid values for the maximum volume throughput at the following documentation on throughput bottlenecksclient_authentication Argument Reference"
  type        = string
  default     = ""
}
variable "zookeeper_connect_string_tls" {
  description = "A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.TimeoutsConfiguration options:"
  type        = string
}
variable "broker_logs" {
  description = "(Required) Configuration block for Broker Logs settings for logging info. See below.logging_info broker_logs cloudwatch_logs Argument Reference"
  type        = string
}
variable "iam" {
  description = "(Optional) Enables IAM client authentication. Defaults to false."
  type        = string
  default     = ""
}
variable "node_exporter" {
  description = "(Optional) Configuration block for Node Exporter. See below.open_monitoring prometheus jmx_exporter Argument Reference"
  type        = string
  default     = ""
}
variable "open_monitoring" {
  description = "(Optional) Configuration block for JMX and Node monitoring for the MSK cluster. See below."
  type        = string
  default     = ""
}
variable "number_of_broker_nodes" {
  description = "(Required) The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets."
  type        = string
}
variable "public_access" {
  description = "(Optional) Access control settings for brokers. See below.connectivity_info public_access Argument Reference"
  type        = string
  default     = ""
}
variable "storage_info" {
  description = "(Optional) A block that contains information about storage volumes attached to MSK broker nodes. See below.broker_node_group_info connectivity_info Argument Reference"
  type        = string
  default     = ""
}
variable "bootstrap_brokers_public_sasl_iam" {
  description = "One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  type        = string
}
variable "enabled" {
  description = "(Optional) Indicates whether you want to enable or disable streaming broker logs to S3."
  type        = string
  default     = ""
}
variable "enabled_in_broker" {
  description = "(Required) Indicates whether you want to enable or disable the Node Exporter.logging_info Argument Reference"
  type        = string
}
variable "encryption_info" {
  description = "(Optional) Configuration block for specifying encryption. See below."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "tls" {
  description = "(Optional) Configuration block for specifying TLS client authentication. See below."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 120mupdate timeout is used separately for ebs_volume_size, instance_type, number_of_broker_nodes, configuration_info, kafka_version and monitoring and logging update timeouts."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the MSK cluster."
  type        = string
}
variable "current_version" {
  description = "Current version of the MSK Cluster used for updates, e.g., K13V1IB3VIYZZH"
  type        = string
}
variable "prometheus" {
  description = "(Required) Configuration block for Prometheus settings for open monitoring. See below.open_monitoring prometheus Argument Reference"
  type        = string
}
variable "revision" {
  description = "(Required) Revision of the MSK Configuration to use in the cluster.encryption_info Argument Reference"
  type        = string
}
variable "bootstrap_brokers" {
  description = "Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if encryption_info.0.encryption_in_transit.0.client_broker is set to PLAINTEXT or TLS_PLAINTEXT. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies."
  type        = string
}
variable "broker_node_group_info" {
  description = "(Required) Configuration block for the broker nodes of the Kafka cluster."
  type        = string
}
variable "log_group" {
  description = "(Optional) Name of the Cloudwatch Log Group to deliver logs to.logging_info broker_logs firehose Argument Reference"
  type        = string
  default     = ""
}
variable "scram" {
  description = "(Optional) Enables SCRAM client authentication via AWS Secrets Manager. Defaults to false.client_authentication tls Argument Reference"
  type        = string
  default     = ""
}
variable "bootstrap_brokers_sasl_iam" {
  description = "One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  type        = string
}
variable "provisioned_throughput" {
  description = "(Optional) A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See below."
  type        = string
  default     = ""
}
variable "bootstrap_brokers_public_sasl_scram" {
  description = "One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  type        = string
}
variable "ebs_volume_size" {
  description = "(Optional, strongDeprecated use storage_info.ebs_storage_info.volume_size instead) The size in GiB of the EBS volume for the data drive on each broker node."
  type        = string
}
variable "unauthenticated" {
  description = "(Optional) Enables unauthenticated access.client_authentication sasl Argument Reference"
  type        = string
  default     = ""
}
variable "bootstrap_brokers_public_tls" {
  description = "One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  type        = string
}
variable "connectivity_info" {
  description = "(Optional) Information about the cluster access configuration. See below. For security reasons, you can't turn on public access while creating an MSK cluster. However, you can update an existing cluster to make it publicly accessible. You can also create a new cluster and then update it to make it publicly accessible (documentation)."
  type        = string
  default     = ""
}
variable "encryption_at_rest_kms_key_arn" {
  description = "(Optional) You may specify a KMS key short ID or ARN (it will always output an ARN) to use for encrypting your data at rest.  If no key is specified, an AWS managed KMS ('aws/msk' managed service) key will be used for encrypting the data at rest.encryption_info encryption_in_transit Argument Reference"
  type        = string
  default     = ""
}
variable "encryption_info.0.encryption_at_rest_kms_key_arn" {
  description = "The ARN of the KMS key used for encryption at rest of the broker data volumes."
  type        = string
}
variable "cluster_name" {
  description = "(Required) Name of the MSK cluster."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.broker_node_group_info Argument Reference"
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Required) Specify the instance type to use for the kafka brokersE.g., kafka.m5.large. (Pricing info)"
  type        = string
}
variable "bootstrap_brokers_tls" {
  description = "One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  type        = string
}
variable "configuration_info" {
  description = "(Optional) Configuration block for specifying a MSK Configuration to attach to Kafka brokers. See below."
  type        = string
  default     = ""
}
variable "enhanced_monitoring" {
  description = "(Optional) Specify the desired enhanced MSK CloudWatch monitoring level. See Monitoring Amazon MSK with Amazon CloudWatch"
  type        = string
  default     = ""
}
variable "in_cluster" {
  description = "(Optional) Whether data communication among broker nodes is encrypted. Default value: true.open_monitoring Argument Reference"
  type        = string
  default     = ""
}
variable "client_authentication" {
  description = "(Optional) Configuration block for specifying a client authentication. See below."
  type        = string
  default     = ""
}
variable "sasl" {
  description = "(Optional) Configuration block for specifying SASL client authentication. See below."
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "(Optional) The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of 1 and maximum value of 16384.ebs_storage_info provisioned_throughput Argument Reference"
  type        = string
  default     = ""
}
variable "zookeeper_connect_string" {
  description = "A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies."
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
output "zookeeper_connect_string" {
  description = "A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.zookeeper_connect_string
}
output "client_authentication" {
  description = "(Optional) Configuration block for specifying a client authentication. See below."
  value       = aws_msk_cluster.aws_msk_cluster.client_authentication
}
output "sasl" {
  description = "(Optional) Configuration block for specifying SASL client authentication. See below."
  value       = aws_msk_cluster.aws_msk_cluster.sasl
}
output "volume_size" {
  description = "(Optional) The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of 1 and maximum value of 16384.ebs_storage_info provisioned_throughput Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.volume_size
}
output "prefix" {
  description = "(Optional) Prefix to append to the folder name.In addition to all arguments above, the following attributes are exported:"
  value       = aws_msk_cluster.aws_msk_cluster.prefix
}
output "client_broker" {
  description = "(Optional) Encryption setting for data in transit between clients and brokers. Valid values: TLS, TLS_PLAINTEXT, and PLAINTEXT. Default value is TLS."
  value       = aws_msk_cluster.aws_msk_cluster.client_broker
}
output "jmx_exporter" {
  description = "(Optional) Configuration block for JMX Exporter. See below."
  value       = aws_msk_cluster.aws_msk_cluster.jmx_exporter
}
output "kafka_version" {
  description = "(Required) Specify the desired Kafka software version."
  value       = aws_msk_cluster.aws_msk_cluster.kafka_version
}
output "delivery_stream" {
  description = "(Optional) Name of the Kinesis Data Firehose delivery stream to deliver logs to.logging_info broker_logs s3 Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.delivery_stream
}
output "type" {
  description = "(Optional) Public access type. Valida values: DISABLED, SERVICE_PROVIDED_EIPS.broker_node_group_info storage_info Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.type
}
output "ebs_storage_info" {
  description = "(Optional) A block that contains EBS volume information. See below.storage_info ebs_storage_info Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.ebs_storage_info
}
output "encryption_in_transit" {
  description = "(Optional) Configuration block to specify encryption in transit. See below."
  value       = aws_msk_cluster.aws_msk_cluster.encryption_in_transit
}
output "az_distribution" {
  description = "(Optional) The distribution of broker nodes across availability zones (documentation). Currently the only valid value is DEFAULT."
  value       = aws_msk_cluster.aws_msk_cluster.az_distribution
}
output "bucket" {
  description = "(Optional) Name of the S3 bucket to deliver logs to."
  value       = aws_msk_cluster.aws_msk_cluster.bucket
}
output "create" {
  description = "(Default 120m)"
  value       = aws_msk_cluster.aws_msk_cluster.create
}
output "logging_info" {
  description = "(Optional) Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See below."
  value       = aws_msk_cluster.aws_msk_cluster.logging_info
}
output "security_groups" {
  description = "(Required) A list of the security groups to associate with the elastic network interfaces to control who can communicate with the cluster."
  value       = aws_msk_cluster.aws_msk_cluster.security_groups
}
output "bootstrap_brokers_sasl_scram" {
  description = "One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_sasl_scram
}
output "certificate_authority_arns" {
  description = "(Optional) List of ACM Certificate Authority Amazon Resource Names (ARNs).configuration_info Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.certificate_authority_arns
}
output "client_subnets" {
  description = "(Required) A list of subnets to connect to in client VPC (documentation)."
  value       = aws_msk_cluster.aws_msk_cluster.client_subnets
}
output "open_monitoring" {
  description = "(Optional) Configuration block for JMX and Node monitoring for the MSK cluster. See below."
  value       = aws_msk_cluster.aws_msk_cluster.open_monitoring
}
output "volume_throughput" {
  description = "(Optional) Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second. The minimum value is 250. The maximum value varies between broker type. You can refer to the valid values for the maximum volume throughput at the following documentation on throughput bottlenecksclient_authentication Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.volume_throughput
}
output "zookeeper_connect_string_tls" {
  description = "A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.TimeoutsConfiguration options:"
  value       = aws_msk_cluster.aws_msk_cluster.zookeeper_connect_string_tls
}
output "broker_logs" {
  description = "(Required) Configuration block for Broker Logs settings for logging info. See below.logging_info broker_logs cloudwatch_logs Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.broker_logs
}
output "iam" {
  description = "(Optional) Enables IAM client authentication. Defaults to false."
  value       = aws_msk_cluster.aws_msk_cluster.iam
}
output "node_exporter" {
  description = "(Optional) Configuration block for Node Exporter. See below.open_monitoring prometheus jmx_exporter Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.node_exporter
}
output "number_of_broker_nodes" {
  description = "(Required) The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets."
  value       = aws_msk_cluster.aws_msk_cluster.number_of_broker_nodes
}
output "public_access" {
  description = "(Optional) Access control settings for brokers. See below.connectivity_info public_access Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.public_access
}
output "encryption_info" {
  description = "(Optional) Configuration block for specifying encryption. See below."
  value       = aws_msk_cluster.aws_msk_cluster.encryption_info
}
output "storage_info" {
  description = "(Optional) A block that contains information about storage volumes attached to MSK broker nodes. See below.broker_node_group_info connectivity_info Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.storage_info
}
output "bootstrap_brokers_public_sasl_iam" {
  description = "One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_public_sasl_iam
}
output "enabled" {
  description = "(Optional) Indicates whether you want to enable or disable streaming broker logs to S3."
  value       = aws_msk_cluster.aws_msk_cluster.enabled
}
output "enabled_in_broker" {
  description = "(Required) Indicates whether you want to enable or disable the Node Exporter.logging_info Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.enabled_in_broker
}
output "revision" {
  description = "(Required) Revision of the MSK Configuration to use in the cluster.encryption_info Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.revision
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_msk_cluster.aws_msk_cluster.tags_all
}
output "tls" {
  description = "(Optional) Configuration block for specifying TLS client authentication. See below."
  value       = aws_msk_cluster.aws_msk_cluster.tls
}
output "update" {
  description = "(Default 120mupdate timeout is used separately for ebs_volume_size, instance_type, number_of_broker_nodes, configuration_info, kafka_version and monitoring and logging update timeouts."
  value       = aws_msk_cluster.aws_msk_cluster.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the MSK cluster."
  value       = aws_msk_cluster.aws_msk_cluster.arn
}
output "current_version" {
  description = "Current version of the MSK Cluster used for updates, e.g., K13V1IB3VIYZZH"
  value       = aws_msk_cluster.aws_msk_cluster.current_version
}
output "prometheus" {
  description = "(Required) Configuration block for Prometheus settings for open monitoring. See below.open_monitoring prometheus Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.prometheus
}
output "scram" {
  description = "(Optional) Enables SCRAM client authentication via AWS Secrets Manager. Defaults to false.client_authentication tls Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.scram
}
output "bootstrap_brokers" {
  description = "Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if encryption_info.0.encryption_in_transit.0.client_broker is set to PLAINTEXT or TLS_PLAINTEXT. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers
}
output "broker_node_group_info" {
  description = "(Required) Configuration block for the broker nodes of the Kafka cluster."
  value       = aws_msk_cluster.aws_msk_cluster.broker_node_group_info
}
output "log_group" {
  description = "(Optional) Name of the Cloudwatch Log Group to deliver logs to.logging_info broker_logs firehose Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.log_group
}
output "bootstrap_brokers_sasl_iam" {
  description = "One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_sasl_iam
}
output "provisioned_throughput" {
  description = "(Optional) A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See below."
  value       = aws_msk_cluster.aws_msk_cluster.provisioned_throughput
}
output "bootstrap_brokers_public_sasl_scram" {
  description = "One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_public_sasl_scram
}
output "ebs_volume_size" {
  description = "(Optional, strongDeprecated use storage_info.ebs_storage_info.volume_size instead) The size in GiB of the EBS volume for the data drive on each broker node."
  value       = aws_msk_cluster.aws_msk_cluster.ebs_volume_size
}
output "encryption_info.0.encryption_at_rest_kms_key_arn" {
  description = "The ARN of the KMS key used for encryption at rest of the broker data volumes."
  value       = aws_msk_cluster.aws_msk_cluster.encryption_info.0.encryption_at_rest_kms_key_arn
}
output "unauthenticated" {
  description = "(Optional) Enables unauthenticated access.client_authentication sasl Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.unauthenticated
}
output "bootstrap_brokers_public_tls" {
  description = "One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_public_tls
}
output "connectivity_info" {
  description = "(Optional) Information about the cluster access configuration. See below. For security reasons, you can't turn on public access while creating an MSK cluster. However, you can update an existing cluster to make it publicly accessible. You can also create a new cluster and then update it to make it publicly accessible (documentation)."
  value       = aws_msk_cluster.aws_msk_cluster.connectivity_info
}
output "encryption_at_rest_kms_key_arn" {
  description = "(Optional) You may specify a KMS key short ID or ARN (it will always output an ARN) to use for encrypting your data at rest.  If no key is specified, an AWS managed KMS ('aws/msk' managed service) key will be used for encrypting the data at rest.encryption_info encryption_in_transit Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.encryption_at_rest_kms_key_arn
}
output "cluster_name" {
  description = "(Required) Name of the MSK cluster."
  value       = aws_msk_cluster.aws_msk_cluster.cluster_name
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.broker_node_group_info Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.tags
}
output "in_cluster" {
  description = "(Optional) Whether data communication among broker nodes is encrypted. Default value: true.open_monitoring Argument Reference"
  value       = aws_msk_cluster.aws_msk_cluster.in_cluster
}
output "instance_type" {
  description = "(Required) Specify the instance type to use for the kafka brokersE.g., kafka.m5.large. (Pricing info)"
  value       = aws_msk_cluster.aws_msk_cluster.instance_type
}
output "bootstrap_brokers_tls" {
  description = "One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_tls
}
output "configuration_info" {
  description = "(Optional) Configuration block for specifying a MSK Configuration to attach to Kafka brokers. See below."
  value       = aws_msk_cluster.aws_msk_cluster.configuration_info
}
output "enhanced_monitoring" {
  description = "(Optional) Specify the desired enhanced MSK CloudWatch monitoring level. See Monitoring Amazon MSK with Amazon CloudWatch"
  value       = aws_msk_cluster.aws_msk_cluster.enhanced_monitoring
}
output "encryption_info.0.encryption_at_rest_kms_key_arn" {
  description = "The ARN of the KMS key used for encryption at rest of the broker data volumes."
  value       = aws_msk_cluster.aws_msk_cluster.encryption_info.0.encryption_at_rest_kms_key_arn
}
output "zookeeper_connect_string" {
  description = "A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.zookeeper_connect_string
}
output "zookeeper_connect_string_tls" {
  description = "A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.TimeoutsConfiguration options:"
  value       = aws_msk_cluster.aws_msk_cluster.zookeeper_connect_string_tls
}
output "bootstrap_brokers" {
  description = "Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if encryption_info.0.encryption_in_transit.0.client_broker is set to PLAINTEXT or TLS_PLAINTEXT. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers
}
output "bootstrap_brokers_public_sasl_iam" {
  description = "One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_public_sasl_iam
}
output "bootstrap_brokers_tls" {
  description = "One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_tls
}
output "current_version" {
  description = "Current version of the MSK Cluster used for updates, e.g., K13V1IB3VIYZZH"
  value       = aws_msk_cluster.aws_msk_cluster.current_version
}
output "update" {
  description = "(Default 120mupdate timeout is used separately for ebs_volume_size, instance_type, number_of_broker_nodes, configuration_info, kafka_version and monitoring and logging update timeouts."
  value       = aws_msk_cluster.aws_msk_cluster.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the MSK cluster."
  value       = aws_msk_cluster.aws_msk_cluster.arn
}
output "bootstrap_brokers_public_sasl_scram" {
  description = "One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_public_sasl_scram
}
output "bootstrap_brokers_sasl_iam" {
  description = "One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.iam is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_sasl_iam
}
output "bootstrap_brokers_sasl_scram" {
  description = "One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and client_authentication.0.sasl.0.scram is set to true. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_sasl_scram
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_msk_cluster.aws_msk_cluster.delete
}
output "bootstrap_brokers_public_tls" {
  description = "One or more DNS names (or IP addresses) and TLS port pairs. For example, b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194. This attribute will have a value if encryption_info.0.encryption_in_transit.0.client_broker is set to TLS_PLAINTEXT or TLS and broker_node_group_info.0.connectivity_info.0.public_access.0.type is set to SERVICE_PROVIDED_EIPS and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies."
  value       = aws_msk_cluster.aws_msk_cluster.bootstrap_brokers_public_tls
}
output "create" {
  description = "(Default 120m)"
  value       = aws_msk_cluster.aws_msk_cluster.create
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_msk_cluster.aws_msk_cluster.tags_all
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
      "kind/name"                   = "aws_msk_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
