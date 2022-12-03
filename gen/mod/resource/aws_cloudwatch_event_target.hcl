resource "aws_cloudwatch_event_target" "aws_cloudwatch_event_target" {
  http_target                                           = var.http_target
  input                                                 = var.input
  base                                                  = var.base
  event_bus_name                                        = var.event_bus_name
  message_group_id                                      = var.message_group_id
  propagate_tags                                        = var.propagate_tags
  arn                                                   = var.arn
  capacity_provider                                     = var.capacity_provider
  db_user                                               = var.db_user
  dead_letter_config                                    = var.dead_letter_config
  platform_version                                      = var.platform_version
  kinesis_target                                        = var.kinesis_target
  network_configuration                                 = var.network_configuration
  sqs_target                                            = var.sqs_target
  ecs_target                                            = var.ecs_target
  enable_execute_command                                = var.enable_execute_command
  expression                                            = var.expression
  path_parameter_values                                 = var.path_parameter_values
  placement_constraint                                  = var.placement_constraint
  You can have as many as 100 key-value pairs.          = var.You can have as many as 100 key-value pairs.
  database                                              = var.database
  maximum_retry_attempts                                = var.maximum_retry_attempts
  values                                                = var.values
  with_event                                            = var.with_event
  enable_ecs_managed_tags                               = var.enable_ecs_managed_tags
  key                                                   = var.key
  launch_type                                           = var.launch_type
  run_command_targets                                   = var.run_command_targets
  sql                                                   = var.sql
  capacity_provider_strategy                            = var.capacity_provider_strategy
  job_name                                              = var.job_name
  secrets_manager_arn                                   = var.secrets_manager_arn
  redshift_target                                       = var.redshift_target
  role_arn                                              = var.role_arn
  rule                                                  = var.rule
  task_count                                            = var.task_count
  type                                                  = var.type
  The keys can't start with "AWS".                      = var.The keys can't start with "AWS".
  input_paths                                           = var.input_paths
  group                                                 = var.group
  weight                                                = var.weight
  assign_public_ip                                      = var.assign_public_ip
  job_definition                                        = var.job_definition
  query_string_parameters                               = var.query_string_parameters
  retry_policy                                          = var.retry_policy
  batch_target                                          = var.batch_target
  header_parameters                                     = var.header_parameters
  input_path                                            = var.input_path
  job_attempts                                          = var.job_attempts
  partition_key_path                                    = var.partition_key_path
  target_id                                             = var.target_id
  task_definition_arn                                   = var.task_definition_arn
  array_size                                            = var.array_size
  input_template                                        = var.input_template
  input_transformer                                     = var.input_transformer
  statement_name                                        = var.statement_name
  tags                                                  = var.tags
  You must use JSON dot notation, not bracket notation. = var.You must use JSON dot notation, not bracket notation.
  maximum_event_age_in_seconds                          = var.maximum_event_age_in_seconds
  security_groups                                       = var.security_groups
  subnets                                               = var.subnets
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "The keys can't start with \"AWS\"." {
  description = ""
  type        = string
}
variable "input_paths" {
  description = "(Optional) Key value pairs specified in the form of JSONPath (for example, time = $.time)"
  type        = string
  default     = ""
}
variable "group" {
  description = "(Optional) Specifies an ECS task group for the task. The maximum length is 255 characters."
  type        = string
  default     = ""
}
variable "weight" {
  description = "(Required) The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied.network_configuration"
  type        = string
}
variable "assign_public_ip" {
  description = "(Optional) Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false. Default false.For more information, see Task Networkingplacement_constraint"
  type        = string
  default     = ""
}
variable "job_definition" {
  description = "(Required) The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist."
  type        = string
}
variable "query_string_parameters" {
  description = "(Optional) Represents keys/values of query string parameters that are appended to the invoked endpoint."
  type        = string
  default     = ""
}
variable "retry_policy" {
  description = "(Optional)  Parameters used when you are providing retry policies. Documented below. A maximum of 1 are allowed."
  type        = string
  default     = ""
}
variable "batch_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Batch Job. Documented below. A maximum of 1 are allowed."
  type        = string
  default     = ""
}
variable "header_parameters" {
  description = "(Optional) Enables you to specify HTTP headers to add to the request.input_transformer"
  type        = string
  default     = ""
}
variable "input_path" {
  description = "(Optional) The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. Conflicts with input and input_transformer."
  type        = string
  default     = ""
}
variable "job_attempts" {
  description = "(Optional) The number of times to attempt to retry, if the job fails. Valid values are 1 to 10.kinesis_target"
  type        = string
  default     = ""
}
variable "partition_key_path" {
  description = "(Optional) The JSON path to be extracted from the event and used as the partition key.redshift_target"
  type        = string
  default     = ""
}
variable "target_id" {
  description = "(Optional) The unique target assignment ID.  If missing, will generate a random, unique id."
  type        = string
  default     = ""
}
variable "task_definition_arn" {
  description = "(Required) The ARN of the task definition to use if the event target is an Amazon ECS cluster."
  type        = string
}
variable "array_size" {
  description = "(Optional) The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000."
  type        = string
  default     = ""
}
variable "input_template" {
  description = "(Required) Template to customize data sent to the target. Must be valid JSON. To send a string value, the string value must include double quotes. Values must be escaped for both JSON and Terraform, e.g., \"\\\"Your string goes here.\\\\nA new line.\\\"\"retry_policy"
  type        = string
}
variable "input_transformer" {
  description = "(Optional) Parameters used when you are providing a custom input to a target based on certain event data. Conflicts with input and input_path."
  type        = string
  default     = ""
}
variable "statement_name" {
  description = "(Optional) The name of the SQL statement."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to ecs resources."
  type        = string
  default     = ""
}
variable "You must use JSON dot notation, not bracket notation." {
  description = ""
  type        = string
}
variable "maximum_event_age_in_seconds" {
  description = "(Optional) The age in seconds to continue to make retry attempts."
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Optional) The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
  type        = string
  default     = ""
}
variable "subnets" {
  description = "(Required) The subnets associated with the task or service."
  type        = string
}
variable "http_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an API Gateway REST endpoint. Documented below. A maximum of 1 is allowed."
  type        = string
  default     = ""
}
variable "input" {
  description = "(Optional) Valid JSON text passed to the target. Conflicts with input_path and input_transformer."
  type        = string
  default     = ""
}
variable "base" {
  description = "(Optional) The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. If no value is specified, the default value of 0 is used."
  type        = string
  default     = ""
}
variable "event_bus_name" {
  description = "(Optional) The event bus to associate with the rule. If you omit this, the default event bus is used."
  type        = string
  default     = ""
}
variable "message_group_id" {
  description = "(Optional) The FIFO message group ID to use as the target.http_targetsupport the following:"
  type        = string
  default     = ""
}
variable "propagate_tags" {
  description = "(Optional) Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation."
  type        = string
  default     = ""
}
variable "arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the target."
  type        = string
}
variable "capacity_provider" {
  description = "(Required) Short name of the capacity provider."
  type        = string
}
variable "db_user" {
  description = "(Optional) The database user name."
  type        = string
  default     = ""
}
variable "dead_letter_config" {
  description = "(Optional)  Parameters used when you are providing a dead letter config. Documented below. A maximum of 1 are allowed.run_command_targets"
  type        = string
  default     = ""
}
variable "platform_version" {
  description = "(Optional) Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as 1.1.0. This is used only if LaunchType is FARGATE. For more information about valid platform versions, see AWS Fargate Platform Versions."
  type        = string
  default     = ""
}
variable "kinesis_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Kinesis Stream. Documented below. A maximum of 1 are allowed."
  type        = string
  default     = ""
}
variable "network_configuration" {
  description = "(Optional) Use this if the ECS task uses the awsvpc network mode. This specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. Required if launch_type is FARGATE because the awsvpc mode is required for Fargate tasks."
  type        = string
  default     = ""
}
variable "sqs_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon SQS Queue. Documented below. A maximum of 1 are allowed."
  type        = string
  default     = ""
}
variable "ecs_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke Amazon ECS Task. Documented below. A maximum of 1 are allowed."
  type        = string
  default     = ""
}
variable "enable_execute_command" {
  description = "(Optional) Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task."
  type        = string
  default     = ""
}
variable "expression" {
  description = " (Optional) Cluster Query Language expression to apply to the constraint. Does not need to be specified for the distinctInstance type. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide.batch_target"
  type        = string
  default     = ""
}
variable "path_parameter_values" {
  description = "(Optional) The list of values that correspond sequentially to any path variables in your endpoint ARN (for example arn:aws:execute-api:us-east-1:123456:myapi/*/POST/pets/*)."
  type        = string
  default     = ""
}
variable "placement_constraint" {
  description = "(Optional) An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime). See Below."
  type        = string
  default     = ""
}
variable "You can have as many as 100 key-value pairs." {
  description = ""
  type        = string
}
variable "database" {
  description = "(Required) The name of the database."
  type        = string
}
variable "maximum_retry_attempts" {
  description = "(Optional) maximum number of retry attempts to make before the request failsdead_letter_config"
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) If Key is tag:tag-key, Values is a list of tag values. If Key is InstanceIds, Values is a list of Amazon EC2 instance IDs.ecs_target"
  type        = string
}
variable "with_event" {
  description = "(Optional) Indicates whether to send an event back to EventBridge after the SQL statement runs.sqs_target"
  type        = string
  default     = ""
}
variable "enable_ecs_managed_tags" {
  description = "(Optional) Specifies whether to enable Amazon ECS managed tags for the task.capacity_provider_strategyThe capacity_provider_strategy configuration block supports the following:"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Can be either tag:tag-key or InstanceIds."
  type        = string
}
variable "launch_type" {
  description = "(Optional) Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. Valid values include: EC2, EXTERNAL, or FARGATE."
  type        = string
  default     = ""
}
variable "run_command_targets" {
  description = "(Optional) Parameters used when you are using the rule to invoke Amazon EC2 Run Command. Documented below. A maximum of 5 are allowed."
  type        = string
  default     = ""
}
variable "sql" {
  description = "(Optional) The SQL statement text to run."
  type        = string
  default     = ""
}
variable "capacity_provider_strategy" {
  description = "(Optional) The capacity provider strategy to use for the task. If a capacity_provider_strategy specified, the launch_type parameter must be omitted. If no capacity_provider_strategy or launch_type is specified, the default capacity provider strategy for the cluster is used. Can be one or more. See below."
  type        = string
  default     = ""
}
variable "job_name" {
  description = "(Required) The name to use for this execution of the job, if the target is an AWS Batch job."
  type        = string
}
variable "secrets_manager_arn" {
  description = "(Optional) The name or ARN of the secret that enables access to the database."
  type        = string
  default     = ""
}
variable "redshift_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Redshift Statement. Documented below. A maximum of 1 are allowed."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if ecs_target is used or target in arn is EC2 instance, Kinesis data stream, Step Functions state machine, or Event Bus in different account or region."
  type        = string
  default     = ""
}
variable "rule" {
  description = "(Required) The name of the rule you want to add targets to."
  type        = string
}
variable "task_count" {
  description = "(Optional) The number of tasks to create based on the TaskDefinition. The default is 1."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type of constraint. The only valid values at this time are memberOf and distinctInstance."
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
output "base" {
  description = "(Optional) The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. If no value is specified, the default value of 0 is used."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.base
}
output "event_bus_name" {
  description = "(Optional) The event bus to associate with the rule. If you omit this, the default event bus is used."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.event_bus_name
}
output "message_group_id" {
  description = "(Optional) The FIFO message group ID to use as the target.http_targetsupport the following:"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.message_group_id
}
output "propagate_tags" {
  description = "(Optional) Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.propagate_tags
}
output "arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the target."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.arn
}
output "capacity_provider" {
  description = "(Required) Short name of the capacity provider."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.capacity_provider
}
output "db_user" {
  description = "(Optional) The database user name."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.db_user
}
output "dead_letter_config" {
  description = "(Optional)  Parameters used when you are providing a dead letter config. Documented below. A maximum of 1 are allowed.run_command_targets"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.dead_letter_config
}
output "platform_version" {
  description = "(Optional) Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as 1.1.0. This is used only if LaunchType is FARGATE. For more information about valid platform versions, see AWS Fargate Platform Versions."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.platform_version
}
output "kinesis_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Kinesis Stream. Documented below. A maximum of 1 are allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.kinesis_target
}
output "network_configuration" {
  description = "(Optional) Use this if the ECS task uses the awsvpc network mode. This specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. Required if launch_type is FARGATE because the awsvpc mode is required for Fargate tasks."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.network_configuration
}
output "sqs_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon SQS Queue. Documented below. A maximum of 1 are allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.sqs_target
}
output "ecs_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke Amazon ECS Task. Documented below. A maximum of 1 are allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.ecs_target
}
output "enable_execute_command" {
  description = "(Optional) Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.enable_execute_command
}
output "expression" {
  description = " (Optional) Cluster Query Language expression to apply to the constraint. Does not need to be specified for the distinctInstance type. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide.batch_target"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.expression
}
output "path_parameter_values" {
  description = "(Optional) The list of values that correspond sequentially to any path variables in your endpoint ARN (for example arn:aws:execute-api:us-east-1:123456:myapi/*/POST/pets/*)."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.path_parameter_values
}
output "placement_constraint" {
  description = "(Optional) An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime). See Below."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.placement_constraint
}
output "You can have as many as 100 key-value pairs." {
  description = ""
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.You can have as many as 100 key-value pairs.
}
output "database" {
  description = "(Required) The name of the database."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.database
}
output "maximum_retry_attempts" {
  description = "(Optional) maximum number of retry attempts to make before the request failsdead_letter_config"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.maximum_retry_attempts
}
output "values" {
  description = "(Required) If Key is tag:tag-key, Values is a list of tag values. If Key is InstanceIds, Values is a list of Amazon EC2 instance IDs.ecs_target"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.values
}
output "with_event" {
  description = "(Optional) Indicates whether to send an event back to EventBridge after the SQL statement runs.sqs_target"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.with_event
}
output "enable_ecs_managed_tags" {
  description = "(Optional) Specifies whether to enable Amazon ECS managed tags for the task.capacity_provider_strategyThe capacity_provider_strategy configuration block supports the following:"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.enable_ecs_managed_tags
}
output "key" {
  description = "(Required) Can be either tag:tag-key or InstanceIds."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.key
}
output "launch_type" {
  description = "(Optional) Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. Valid values include: EC2, EXTERNAL, or FARGATE."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.launch_type
}
output "run_command_targets" {
  description = "(Optional) Parameters used when you are using the rule to invoke Amazon EC2 Run Command. Documented below. A maximum of 5 are allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.run_command_targets
}
output "sql" {
  description = "(Optional) The SQL statement text to run."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.sql
}
output "capacity_provider_strategy" {
  description = "(Optional) The capacity provider strategy to use for the task. If a capacity_provider_strategy specified, the launch_type parameter must be omitted. If no capacity_provider_strategy or launch_type is specified, the default capacity provider strategy for the cluster is used. Can be one or more. See below."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.capacity_provider_strategy
}
output "job_name" {
  description = "(Required) The name to use for this execution of the job, if the target is an AWS Batch job."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.job_name
}
output "secrets_manager_arn" {
  description = "(Optional) The name or ARN of the secret that enables access to the database."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.secrets_manager_arn
}
output "redshift_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Redshift Statement. Documented below. A maximum of 1 are allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.redshift_target
}
output "role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if ecs_target is used or target in arn is EC2 instance, Kinesis data stream, Step Functions state machine, or Event Bus in different account or region."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.role_arn
}
output "rule" {
  description = "(Required) The name of the rule you want to add targets to."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.rule
}
output "task_count" {
  description = "(Optional) The number of tasks to create based on the TaskDefinition. The default is 1."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.task_count
}
output "type" {
  description = "(Required) Type of constraint. The only valid values at this time are memberOf and distinctInstance."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.type
}
output "The keys can't start with \"AWS\"." {
  description = ""
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.The keys can't start with "AWS".
}
output "input_paths" {
  description = "(Optional) Key value pairs specified in the form of JSONPath (for example, time = $.time)"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.input_paths
}
output "group" {
  description = "(Optional) Specifies an ECS task group for the task. The maximum length is 255 characters."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.group
}
output "weight" {
  description = "(Required) The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied.network_configuration"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.weight
}
output "assign_public_ip" {
  description = "(Optional) Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false. Default false.For more information, see Task Networkingplacement_constraint"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.assign_public_ip
}
output "job_definition" {
  description = "(Required) The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.job_definition
}
output "query_string_parameters" {
  description = "(Optional) Represents keys/values of query string parameters that are appended to the invoked endpoint."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.query_string_parameters
}
output "retry_policy" {
  description = "(Optional)  Parameters used when you are providing retry policies. Documented below. A maximum of 1 are allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.retry_policy
}
output "batch_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Batch Job. Documented below. A maximum of 1 are allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.batch_target
}
output "header_parameters" {
  description = "(Optional) Enables you to specify HTTP headers to add to the request.input_transformer"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.header_parameters
}
output "input_path" {
  description = "(Optional) The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. Conflicts with input and input_transformer."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.input_path
}
output "job_attempts" {
  description = "(Optional) The number of times to attempt to retry, if the job fails. Valid values are 1 to 10.kinesis_target"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.job_attempts
}
output "partition_key_path" {
  description = "(Optional) The JSON path to be extracted from the event and used as the partition key.redshift_target"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.partition_key_path
}
output "target_id" {
  description = "(Optional) The unique target assignment ID.  If missing, will generate a random, unique id."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.target_id
}
output "task_definition_arn" {
  description = "(Required) The ARN of the task definition to use if the event target is an Amazon ECS cluster."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.task_definition_arn
}
output "array_size" {
  description = "(Optional) The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.array_size
}
output "input_template" {
  description = "(Required) Template to customize data sent to the target. Must be valid JSON. To send a string value, the string value must include double quotes. Values must be escaped for both JSON and Terraform, e.g., \"\\\"Your string goes here.\\\\nA new line.\\\"\"retry_policy"
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.input_template
}
output "input_transformer" {
  description = "(Optional) Parameters used when you are providing a custom input to a target based on certain event data. Conflicts with input and input_path."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.input_transformer
}
output "statement_name" {
  description = "(Optional) The name of the SQL statement."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.statement_name
}
output "tags" {
  description = "(Optional) A map of tags to assign to ecs resources."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.tags
}
output "You must use JSON dot notation, not bracket notation." {
  description = ""
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.You must use JSON dot notation, not bracket notation.
}
output "maximum_event_age_in_seconds" {
  description = "(Optional) The age in seconds to continue to make retry attempts."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.maximum_event_age_in_seconds
}
output "security_groups" {
  description = "(Optional) The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.security_groups
}
output "subnets" {
  description = "(Required) The subnets associated with the task or service."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.subnets
}
output "http_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an API Gateway REST endpoint. Documented below. A maximum of 1 is allowed."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.http_target
}
output "input" {
  description = "(Optional) Valid JSON text passed to the target. Conflicts with input_path and input_transformer."
  value       = aws_cloudwatch_event_target.aws_cloudwatch_event_target.input
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
      "kind/name"                   = "aws_cloudwatch_event_target"
      "kind/version"                = "v0.1.0"
    }
  }
}
