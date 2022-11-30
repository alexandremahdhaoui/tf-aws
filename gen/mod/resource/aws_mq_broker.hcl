resource "aws_mq_broker" "aws_mq_broker" {
  audit                                                  = var.audit
  configuration                                          = var.configuration
  mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883   = var.mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883
  role_base                                              = var.role_base
  storage_type                                           = var.storage_type
  use_aws_owned_key                                      = var.use_aws_owned_key
  authentication_strategy                                = var.authentication_strategy
  deployment_mode                                        = var.deployment_mode
  encryption_options                                     = var.encryption_options
  publicly_accessible                                    = var.publicly_accessible
  general                                                = var.general
  subnet_ids                                             = var.subnet_ids
  instances                                              = var.instances
  ssl://broker-id.mq.us-west-2.amazonaws.com:61617       = var.ssl://broker-id.mq.us-west-2.amazonaws.com:61617
  time_of_day                                            = var.time_of_day
  user_role_name                                         = var.user_role_name
  amqps://broker-id.mq.us-west-2.amazonaws.com:5671      = var.amqps://broker-id.mq.us-west-2.amazonaws.com:5671
  auto_minor_version_upgrade                             = var.auto_minor_version_upgrade
  create                                                 = var.create
  engine_version                                         = var.engine_version
  engine_type                                            = var.engine_type
  service_account_password                               = var.service_account_password
  user_search_matching                                   = var.user_search_matching
  amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671   = var.amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671
  ldap_server_metadata                                   = var.ldap_server_metadata
  revision                                               = var.revision
  role_search_subtree                                    = var.role_search_subtree
  username                                               = var.username
  console_access                                         = var.console_access
  hosts                                                  = var.hosts
  instances.0.console_url                                = var.instances.0.console_url
  time_zone                                              = var.time_zone
  delete                                                 = var.delete
  stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614 = var.stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614
  instances.0.ip_address                                 = var.instances.0.ip_address
  service_account_username                               = var.service_account_username
  user                                                   = var.user
  broker_name                                            = var.broker_name
  instances.0.endpoints                                  = var.instances.0.endpoints
  password                                               = var.password
  role_search_matching                                   = var.role_search_matching
  arn                                                    = var.arn
  host_instance_type                                     = var.host_instance_type
  role_name                                              = var.role_name
  user_base                                              = var.user_base
  For                                                    = var.For 
  logs                                                   = var.logs
  tags_all                                               = var.tags_all
  user_search_subtree                                    = var.user_search_subtree
  apply_immediately                                      = var.apply_immediately
  groups                                                 = var.groups
  maintenance_window_start_time                          = var.maintenance_window_start_time
  tags                                                   = var.tags
  kms_key_id                                             = var.kms_key_id
  security_groups                                        = var.security_groups
  update                                                 = var.update
  wss://broker-id.mq.us-west-2.amazonaws.com:61619       = var.wss://broker-id.mq.us-west-2.amazonaws.com:61619
  day_of_week                                            = var.day_of_week
  id                                                     = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "service_account_password" {
  description = "(Optional) Service account password."
  type        = string
}
variable "user_search_matching" {
  description = "(Optional) Search criteria for users."
  type        = string
}
variable "amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671" {
  description = ""
  type        = string
}
variable "ldap_server_metadata" {
  description = "(Optional) Configuration block for the LDAP server used to authenticate and authorize connections to the broker. Not supported for engine_type RabbitMQ. Detailed below. (Currently, AWS may not process changes to LDAP server metadata.)"
  type        = string
}
variable "revision" {
  description = "(Optional) Revision of the Configuration.encryption_options"
  type        = string
}
variable "role_search_subtree" {
  description = "(Optional) Whether the directory search scope is the entire sub-tree."
  type        = string
}
variable "username" {
  description = "(Required) Username of the user.~> strongNOTE: AWS currently does not support updating RabbitMQ users. Updates to users can only be in the RabbitMQ UI.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "console_access" {
  description = "(Optional) Whether to enable access to the ActiveMQ Web Console for the user. Applies to engine_type of ActiveMQ only."
  type        = string
}
variable "hosts" {
  description = "(Optional) List of a fully qualified domain name of the LDAP server and an optional failover server."
  type        = string
}
variable "instances.0.console_url" {
  description = "The URL of the broker's ActiveMQ Web Console."
  type        = string
}
variable "time_zone" {
  description = "(Required) Time zone in either the Country/City format or the UTC offset format, e.g., CET.user"
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614" {
  description = ""
  type        = string
}
variable "instances.0.ip_address" {
  description = "IP Address of the broker."
  type        = string
}
variable "service_account_username" {
  description = "(Optional) Service account username."
  type        = string
}
variable "user" {
  description = "(Required) Configuration block for broker users. For engine_type of RabbitMQ, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below."
  type        = string
}
variable "broker_name" {
  description = "(Required) Name of the broker."
  type        = string
}
variable "instances.0.endpoints" {
  description = "Broker's wire-level protocol endpoints in the following order & format referenceable e.g., as instances.0.endpoints.0"
  type        = string
}
variable "password" {
  description = "(Required) Password of the user. It must be 12 to 250 characters long, at least 4 unique characters, and must not contain commas."
  type        = string
}
variable "role_search_matching" {
  description = "(Optional) Search criteria for groups."
  type        = string
}
variable "arn" {
  description = "ARN of the broker."
  type        = string
}
variable "host_instance_type" {
  description = "(Required) Broker's instance type. For example, mq.t3.micro, mq.m5.large."
  type        = string
}
variable "role_name" {
  description = "(Optional) Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query."
  type        = string
}
variable "user_base" {
  description = "(Optional) Fully qualified name of the directory where you want to search for users."
  type        = string
}
variable "For " {
  description = "RabbitMQ"
  type        = string
}
variable "logs" {
  description = "(Optional) Configuration block for the logging configuration of the broker. Detailed below."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "user_search_subtree" {
  description = "(Optional) Whether the directory search scope is the entire sub-tree.logs"
  type        = string
}
variable "apply_immediately" {
  description = "(Optional) Specifies whether any broker modifications are applied immediately, or during the next maintenance window. Default is false."
  type        = string
}
variable "groups" {
  description = "(Optional) List of groups (20 maximum) to which the ActiveMQ user belongs. Applies to engine_type of ActiveMQ only."
  type        = string
}
variable "maintenance_window_start_time" {
  description = "(Optional) Configuration block for the maintenance window start time. Detailed below."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the broker. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configuration"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of Key Management Service (KMS) Customer Master Key (CMK) to use for encryption at rest. Requires setting use_aws_owned_key to false. To perform drift detection when AWS-managed CMKs or customer-managed CMKs are in use, this value must be configured."
  type        = string
}
variable "security_groups" {
  description = "(Optional) List of security group IDs assigned to the broker."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "wss://broker-id.mq.us-west-2.amazonaws.com:61619" {
  description = ""
  type        = string
}
variable "day_of_week" {
  description = "(Required) Day of the week, e.g., MONDAY, TUESDAY, or WEDNESDAY."
  type        = string
}
variable "id" {
  description = "Unique ID that Amazon MQ generates for the broker."
  type        = string
}
variable "audit" {
  description = "(Optional) Enables audit logging. Auditing is only possible for engine_type of ActiveMQ. User management action made using JMX or the ActiveMQ Web Console is logged. Defaults to false."
  type        = string
}
variable "configuration" {
  description = "(Optional) Configuration block for broker configuration. Applies to engine_type of ActiveMQ only. Detailed below."
  type        = string
}
variable "mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883" {
  description = ""
  type        = string
}
variable "role_base" {
  description = "(Optional) Fully qualified name of the directory to search for a user’s groups."
  type        = string
}
variable "storage_type" {
  description = "(Optional) Storage type of the broker. For engine_type ActiveMQ, the valid values are efs and ebs, and the AWS-default is efs. For engine_type RabbitMQ, only ebs is supported. When using ebs, only the mq.m5 broker instance type family is supported."
  type        = string
}
variable "use_aws_owned_key" {
  description = "(Optional) Whether to enable an AWS-owned KMS CMK that is not in your account. Defaults to true. Setting to false without configuring kms_key_id will create an AWS-managed CMK aliased to aws/mq in your account.ldap_server_metadata"
  type        = string
}
variable "authentication_strategy" {
  description = "(Optional) Authentication strategy used to secure the broker. Valid values are simple and ldap. ldap is not supported for engine_type RabbitMQ."
  type        = string
}
variable "deployment_mode" {
  description = "(Optional) Deployment mode of the broker. Valid values are SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ, and CLUSTER_MULTI_AZ. Default is SINGLE_INSTANCE."
  type        = string
}
variable "encryption_options" {
  description = "(Optional) Configuration block containing encryption options. Detailed below."
  type        = string
}
variable "publicly_accessible" {
  description = "(Optional) Whether to enable connections from applications outside of the VPC that hosts the broker's subnets."
  type        = string
}
variable "general" {
  description = "(Optional) Enables general logging via CloudWatch. Defaults to false.maintenance_window_start_time"
  type        = string
}
variable "subnet_ids" {
  description = "(Optional) List of subnet IDs in which to launch the broker. A SINGLE_INSTANCE deployment requires one subnet. An ACTIVE_STANDBY_MULTI_AZ deployment requires multiple subnets."
  type        = string
}
variable "instances" {
  description = ""
  type        = string
}
variable "ssl://broker-id.mq.us-west-2.amazonaws.com:61617" {
  description = ""
  type        = string
}
variable "time_of_day" {
  description = "(Required) Time, in 24-hour format, e.g., 02:00."
  type        = string
}
variable "user_role_name" {
  description = "(Optional) Specifies the name of the LDAP attribute for the user group membership."
  type        = string
}
variable "amqps://broker-id.mq.us-west-2.amazonaws.com:5671" {
  description = ""
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "(Optional) Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "engine_version" {
  description = "(Required) Version of the broker engine. See the AmazonMQ Broker Engine docs for supported versions. For example, 5.15.0."
  type        = string
}
variable "engine_type" {
  description = "(Required) Type of broker engine. Valid values are ActiveMQ and RabbitMQ."
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
output "day_of_week" {
  description = "(Required) Day of the week, e.g., MONDAY, TUESDAY, or WEDNESDAY."
  value       = aws_mq_broker.aws_mq_broker.day_of_week
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique ID that Amazon MQ generates for the broker."
  value       = aws_mq_broker.aws_mq_broker.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audit" {
  description = "(Optional) Enables audit logging. Auditing is only possible for engine_type of ActiveMQ. User management action made using JMX or the ActiveMQ Web Console is logged. Defaults to false."
  value       = aws_mq_broker.aws_mq_broker.audit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration" {
  description = "(Optional) Configuration block for broker configuration. Applies to engine_type of ActiveMQ only. Detailed below."
  value       = aws_mq_broker.aws_mq_broker.configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_base" {
  description = "(Optional) Fully qualified name of the directory to search for a user’s groups."
  value       = aws_mq_broker.aws_mq_broker.role_base
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_type" {
  description = "(Optional) Storage type of the broker. For engine_type ActiveMQ, the valid values are efs and ebs, and the AWS-default is efs. For engine_type RabbitMQ, only ebs is supported. When using ebs, only the mq.m5 broker instance type family is supported."
  value       = aws_mq_broker.aws_mq_broker.storage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "use_aws_owned_key" {
  description = "(Optional) Whether to enable an AWS-owned KMS CMK that is not in your account. Defaults to true. Setting to false without configuring kms_key_id will create an AWS-managed CMK aliased to aws/mq in your account.ldap_server_metadata"
  value       = aws_mq_broker.aws_mq_broker.use_aws_owned_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_strategy" {
  description = "(Optional) Authentication strategy used to secure the broker. Valid values are simple and ldap. ldap is not supported for engine_type RabbitMQ."
  value       = aws_mq_broker.aws_mq_broker.authentication_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_mode" {
  description = "(Optional) Deployment mode of the broker. Valid values are SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ, and CLUSTER_MULTI_AZ. Default is SINGLE_INSTANCE."
  value       = aws_mq_broker.aws_mq_broker.deployment_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_options" {
  description = "(Optional) Configuration block containing encryption options. Detailed below."
  value       = aws_mq_broker.aws_mq_broker.encryption_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "publicly_accessible" {
  description = "(Optional) Whether to enable connections from applications outside of the VPC that hosts the broker's subnets."
  value       = aws_mq_broker.aws_mq_broker.publicly_accessible
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "general" {
  description = "(Optional) Enables general logging via CloudWatch. Defaults to false.maintenance_window_start_time"
  value       = aws_mq_broker.aws_mq_broker.general
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Optional) List of subnet IDs in which to launch the broker. A SINGLE_INSTANCE deployment requires one subnet. An ACTIVE_STANDBY_MULTI_AZ deployment requires multiple subnets."
  value       = aws_mq_broker.aws_mq_broker.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.instances
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ssl://broker-id.mq.us-west-2.amazonaws.com:61617" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.ssl://broker-id.mq.us-west-2.amazonaws.com:61617
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "time_of_day" {
  description = "(Required) Time, in 24-hour format, e.g., 02:00."
  value       = aws_mq_broker.aws_mq_broker.time_of_day
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_role_name" {
  description = "(Optional) Specifies the name of the LDAP attribute for the user group membership."
  value       = aws_mq_broker.aws_mq_broker.user_role_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amqps://broker-id.mq.us-west-2.amazonaws.com:5671" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.amqps://broker-id.mq.us-west-2.amazonaws.com:5671
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_minor_version_upgrade" {
  description = "(Optional) Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available."
  value       = aws_mq_broker.aws_mq_broker.auto_minor_version_upgrade
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_mq_broker.aws_mq_broker.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "(Required) Version of the broker engine. See the AmazonMQ Broker Engine docs for supported versions. For example, 5.15.0."
  value       = aws_mq_broker.aws_mq_broker.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_type" {
  description = "(Required) Type of broker engine. Valid values are ActiveMQ and RabbitMQ."
  value       = aws_mq_broker.aws_mq_broker.engine_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_account_password" {
  description = "(Optional) Service account password."
  value       = aws_mq_broker.aws_mq_broker.service_account_password
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_search_matching" {
  description = "(Optional) Search criteria for users."
  value       = aws_mq_broker.aws_mq_broker.user_search_matching
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ldap_server_metadata" {
  description = "(Optional) Configuration block for the LDAP server used to authenticate and authorize connections to the broker. Not supported for engine_type RabbitMQ. Detailed below. (Currently, AWS may not process changes to LDAP server metadata.)"
  value       = aws_mq_broker.aws_mq_broker.ldap_server_metadata
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "revision" {
  description = "(Optional) Revision of the Configuration.encryption_options"
  value       = aws_mq_broker.aws_mq_broker.revision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_search_subtree" {
  description = "(Optional) Whether the directory search scope is the entire sub-tree."
  value       = aws_mq_broker.aws_mq_broker.role_search_subtree
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "username" {
  description = "(Required) Username of the user.~> strongNOTE: AWS currently does not support updating RabbitMQ users. Updates to users can only be in the RabbitMQ UI.In addition to all arguments above, the following attributes are exported:"
  value       = aws_mq_broker.aws_mq_broker.username
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "console_access" {
  description = "(Optional) Whether to enable access to the ActiveMQ Web Console for the user. Applies to engine_type of ActiveMQ only."
  value       = aws_mq_broker.aws_mq_broker.console_access
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosts" {
  description = "(Optional) List of a fully qualified domain name of the LDAP server and an optional failover server."
  value       = aws_mq_broker.aws_mq_broker.hosts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances.0.console_url" {
  description = "The URL of the broker's ActiveMQ Web Console."
  value       = aws_mq_broker.aws_mq_broker.instances.0.console_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "time_zone" {
  description = "(Required) Time zone in either the Country/City format or the UTC offset format, e.g., CET.user"
  value       = aws_mq_broker.aws_mq_broker.time_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_mq_broker.aws_mq_broker.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances.0.ip_address" {
  description = "IP Address of the broker."
  value       = aws_mq_broker.aws_mq_broker.instances.0.ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_account_username" {
  description = "(Optional) Service account username."
  value       = aws_mq_broker.aws_mq_broker.service_account_username
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user" {
  description = "(Required) Configuration block for broker users. For engine_type of RabbitMQ, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below."
  value       = aws_mq_broker.aws_mq_broker.user
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "broker_name" {
  description = "(Required) Name of the broker."
  value       = aws_mq_broker.aws_mq_broker.broker_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances.0.endpoints" {
  description = "Broker's wire-level protocol endpoints in the following order & format referenceable e.g., as instances.0.endpoints.0"
  value       = aws_mq_broker.aws_mq_broker.instances.0.endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password" {
  description = "(Required) Password of the user. It must be 12 to 250 characters long, at least 4 unique characters, and must not contain commas."
  value       = aws_mq_broker.aws_mq_broker.password
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_search_matching" {
  description = "(Optional) Search criteria for groups."
  value       = aws_mq_broker.aws_mq_broker.role_search_matching
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the broker."
  value       = aws_mq_broker.aws_mq_broker.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "host_instance_type" {
  description = "(Required) Broker's instance type. For example, mq.t3.micro, mq.m5.large."
  value       = aws_mq_broker.aws_mq_broker.host_instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_name" {
  description = "(Optional) Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query."
  value       = aws_mq_broker.aws_mq_broker.role_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_base" {
  description = "(Optional) Fully qualified name of the directory where you want to search for users."
  value       = aws_mq_broker.aws_mq_broker.user_base
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "For " {
  description = "RabbitMQ"
  value       = aws_mq_broker.aws_mq_broker.For 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logs" {
  description = "(Optional) Configuration block for the logging configuration of the broker. Detailed below."
  value       = aws_mq_broker.aws_mq_broker.logs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_mq_broker.aws_mq_broker.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_search_subtree" {
  description = "(Optional) Whether the directory search scope is the entire sub-tree.logs"
  value       = aws_mq_broker.aws_mq_broker.user_search_subtree
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "apply_immediately" {
  description = "(Optional) Specifies whether any broker modifications are applied immediately, or during the next maintenance window. Default is false."
  value       = aws_mq_broker.aws_mq_broker.apply_immediately
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "groups" {
  description = "(Optional) List of groups (20 maximum) to which the ActiveMQ user belongs. Applies to engine_type of ActiveMQ only."
  value       = aws_mq_broker.aws_mq_broker.groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_window_start_time" {
  description = "(Optional) Configuration block for the maintenance window start time. Detailed below."
  value       = aws_mq_broker.aws_mq_broker.maintenance_window_start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the broker. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configuration"
  value       = aws_mq_broker.aws_mq_broker.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of Key Management Service (KMS) Customer Master Key (CMK) to use for encryption at rest. Requires setting use_aws_owned_key to false. To perform drift detection when AWS-managed CMKs or customer-managed CMKs are in use, this value must be configured."
  value       = aws_mq_broker.aws_mq_broker.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_groups" {
  description = "(Optional) List of security group IDs assigned to the broker."
  value       = aws_mq_broker.aws_mq_broker.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_mq_broker.aws_mq_broker.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wss://broker-id.mq.us-west-2.amazonaws.com:61619" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.wss://broker-id.mq.us-west-2.amazonaws.com:61619
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_mq_broker.aws_mq_broker.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.instances
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.mqtt+ssl://broker-id.mq.us-west-2.amazonaws.com:8883
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ssl://broker-id.mq.us-west-2.amazonaws.com:61617" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.ssl://broker-id.mq.us-west-2.amazonaws.com:61617
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.stomp+ssl://broker-id.mq.us-west-2.amazonaws.com:61614
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.amqp+ssl://broker-id.mq.us-west-2.amazonaws.com:5671
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the broker."
  value       = aws_mq_broker.aws_mq_broker.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_mq_broker.aws_mq_broker.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances.0.console_url" {
  description = "The URL of the broker's ActiveMQ Web Console."
  value       = aws_mq_broker.aws_mq_broker.instances.0.console_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances.0.endpoints" {
  description = "Broker's wire-level protocol endpoints in the following order & format referenceable e.g., as instances.0.endpoints.0"
  value       = aws_mq_broker.aws_mq_broker.instances.0.endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_mq_broker.aws_mq_broker.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "For " {
  description = "RabbitMQ"
  value       = aws_mq_broker.aws_mq_broker.For 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amqps://broker-id.mq.us-west-2.amazonaws.com:5671" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.amqps://broker-id.mq.us-west-2.amazonaws.com:5671
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique ID that Amazon MQ generates for the broker."
  value       = aws_mq_broker.aws_mq_broker.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instances.0.ip_address" {
  description = "IP Address of the broker."
  value       = aws_mq_broker.aws_mq_broker.instances.0.ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_mq_broker.aws_mq_broker.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wss://broker-id.mq.us-west-2.amazonaws.com:61619" {
  description = ""
  value       = aws_mq_broker.aws_mq_broker.wss://broker-id.mq.us-west-2.amazonaws.com:61619
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
      "kind/name"                   = "aws_mq_broker"
      "kind/version"                = "v0.1.0"
    }
  }
}
