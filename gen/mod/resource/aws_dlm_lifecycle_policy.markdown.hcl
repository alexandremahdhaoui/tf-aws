resource "aws_dlm_lifecycle_policy.markdown" "aws_dlm_lifecycle_policy.markdown" {
  encrypted                = var.encrypted
  encryption_configuration = var.encryption_configuration
  retain_rule              = var.retain_rule
  tags                     = var.tags
  target                   = var.target
  action                   = var.action
  id                       = var.id
  location                 = var.location
  arn                      = var.arn
  create_rule              = var.create_rule
  event_type               = var.event_type
  interval                 = var.interval
  resource_locations       = var.resource_locations
  cron_expression          = var.cron_expression
  interval_unit            = var.interval_unit
  policy_type              = var.policy_type
  type                     = var.type
  schedule                 = var.schedule
  share_rule               = var.share_rule
  copy_tags                = var.copy_tags
  cross_region_copy        = var.cross_region_copy
  description_regex        = var.description_regex
  exclude_boot_volume      = var.exclude_boot_volume
  no_reboot                = var.no_reboot
  resource_types           = var.resource_types
  target_accounts          = var.target_accounts
  target_tags              = var.target_tags
  cmk_arn                  = var.cmk_arn
  description              = var.description
  event_source             = var.event_source
  execution_role_arn       = var.execution_role_arn
  parameters               = var.parameters
  variable_tags            = var.variable_tags
  availability_zones       = var.availability_zones
  cross_region_copy_rule   = var.cross_region_copy_rule
  name                     = var.name
  tags_to_add              = var.tags_to_add
  state                    = var.state
  times                    = var.times
  count                    = var.count
  deprecate_rule           = var.deprecate_rule
  fast_restore_rule        = var.fast_restore_rule
  policy_details           = var.policy_details
  snapshot_owner           = var.snapshot_owner
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "fast_restore_rule" {
  description = "(Required) See the fast_restore_rule block. Max of 1 per schedule."
  type        = string
}
variable "policy_details" {
  description = "(Required) See the policy_details configuration block. Max of 1."
  type        = string
}
variable "snapshot_owner" {
  description = "(Required) The IDs of the AWS accounts that can trigger policy by sharing snapshots with your account. The policy only runs if one of the specified AWS accounts shares a snapshot with your account.Parameters arguments"
  type        = string
}
variable "state" {
  description = "(Optional) Whether the lifecycle policy should be enabled or disabled. ENABLED or DISABLED are valid values. Defaults to ENABLED."
  type        = string
}
variable "times" {
  description = "(Optional) A list of times in 24 hour clock format that sets when the lifecycle policy should be evaluated. Max of 1.Deprecate Rule arguments"
  type        = string
}
variable "count" {
  description = "(Optional) How many snapshots to keep. Must be an integer between 1 and 1000."
  type        = string
}
variable "deprecate_rule" {
  description = "(Optional) The AMI deprecation rule for cross-Region AMI copies created by the rule. See the deprecate_rule block."
  type        = string
}
variable "retain_rule" {
  description = "(Required) The retention rule that indicates how long snapshot copies are to be retained in the destination Region. See the retain_rule block. Max of 1 per schedule."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Policy Details arguments"
  type        = string
}
variable "target" {
  description = "(Required) The target Region or the Amazon Resource Name (ARN) of the target Outpost for the snapshot copies.Cross Region Copy Rule Deprecate Rule arguments"
  type        = string
}
variable "encrypted" {
  description = "(Required) To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled, enable encryption using this parameter. Copies of encrypted snapshots are encrypted, even if this parameter is false or if encryption by default is not enabled."
  type        = string
}
variable "encryption_configuration" {
  description = "(Required) The encryption settings for the copied snapshot. See the encryption_configuration block. Max of 1 per action."
  type        = string
}
variable "location" {
  description = "(Optional) Specifies the destination for snapshots created by the policy. To create snapshots in the same Region as the source resource, specify CLOUD. To create snapshots on the same Outpost as the source resource, specify OUTPOST_LOCAL. If you omit this parameter, CLOUD is used by default. If the policy targets resources in an AWS Region, then you must create snapshots in the same Region as the source resource. If the policy targets resources on an Outpost, then you can create snapshots on the same Outpost as the source resource, or in the Region of that Outpost. Valid values are CLOUD and OUTPOST_LOCAL."
  type        = string
}
variable "action" {
  description = "(Optional) The actions to be performed when the event-based policy is triggered. You can specify only one action per policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the action configuration block."
  type        = string
}
variable "id" {
  description = "Identifier of the DLM Lifecycle Policy."
  type        = string
}
variable "event_type" {
  description = "(Required) The type of event. Currently, only shareSnapshot events are supported."
  type        = string
}
variable "interval" {
  description = "(Required) The amount of time to retain each snapshot. The maximum is 100 years. This is equivalent to 1200 months, 5200 weeks, or 36500 days."
  type        = string
}
variable "resource_locations" {
  description = "(Optional) The location of the resources to backup. If the source resources are located in an AWS Region, specify CLOUD. If the source resources are located on an Outpost in your account, specify OUTPOST. If you specify OUTPOST, Amazon Data Lifecycle Manager backs up all resources of the specified type with matching target tags across all of the Outposts in your account. Valid values are CLOUD and OUTPOST."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DLM Lifecycle Policy."
  type        = string
}
variable "create_rule" {
  description = "(Required) See the create_rule block. Max of 1 per schedule."
  type        = string
}
variable "policy_type" {
  description = "(Optional) The valid target resource types and actions a policy can manage. Specify EBS_SNAPSHOT_MANAGEMENT to create a lifecycle policy that manages the lifecycle of Amazon EBS snapshots. Specify IMAGE_MANAGEMENT to create a lifecycle policy that manages the lifecycle of EBS-backed AMIs. Specify EVENT_BASED_POLICY to create an event-based policy that performs specific actions when a defined event occurs in your AWS account. Default value is EBS_SNAPSHOT_MANAGEMENT."
  type        = string
}
variable "type" {
  description = "(Required) The source of the event. Currently only managed CloudWatch Events rules are supported. Valid values are MANAGED_CWE.Event Source Parameters arguments"
  type        = string
}
variable "cron_expression" {
  description = "(Optional) The schedule, as a Cron expression. The schedule interval must be between 1 hour and 1 year."
  type        = string
}
variable "interval_unit" {
  description = "(Required) The unit of time for time-based retention. Valid values: DAYS, WEEKS, MONTHS, or YEARS.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "description_regex" {
  description = "(Required) The snapshot description that can trigger the policy. The description pattern is specified using a regular expression. The policy runs only if a snapshot with a description that matches the specified pattern is shared with your account."
  type        = string
}
variable "exclude_boot_volume" {
  description = "(Optional) Indicates whether to exclude the root volume from snapshots created using CreateSnapshots. The default is false."
  type        = string
}
variable "no_reboot" {
  description = "(Optional) Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle policy runs. true indicates that targeted instances are not rebooted when the policy runs. false indicates that target instances are rebooted when the policy runs. The default is true (instances are not rebooted).Schedule arguments"
  type        = string
}
variable "schedule" {
  description = "(Optional) See the schedule configuration block."
  type        = string
}
variable "share_rule" {
  description = "(Required) See the share_rule block. Max of 1 per schedule."
  type        = string
}
variable "copy_tags" {
  description = "(Optional) Whether to copy all user-defined tags from the source snapshot to the cross-region snapshot copy."
  type        = string
}
variable "cross_region_copy" {
  description = "(Optional) The rule for copying shared snapshots across Regions. See the cross_region_copy configuration block."
  type        = string
}
variable "event_source" {
  description = "(Optional) The event that triggers the event-based policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the event_source configuration block."
  type        = string
}
variable "execution_role_arn" {
  description = "(Required) The ARN of an IAM role that is able to be assumed by the DLM service."
  type        = string
}
variable "parameters" {
  description = "(Required) Information about the event. See the parameters configuration block."
  type        = string
}
variable "resource_types" {
  description = "(Optional) A list of resource types that should be targeted by the lifecycle policy. Valid values are VOLUME and INSTANCE."
  type        = string
}
variable "target_accounts" {
  description = "(Required) The IDs of the AWS accounts with which to share the snapshots."
  type        = string
}
variable "target_tags" {
  description = " (Optional) A map of tag keys and their values. Any resources that match the resource_types and are tagged with emany of these tags will be targeted.~> Note: You cannot have overlapping lifecycle policies that share the same target_tags. Terraform is unable to detect this at plan time but it will fail during apply.Action arguments"
  type        = string
}
variable "cmk_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS KMS customer master key (CMK) to use for EBS encryption. If this argument is not specified, the default KMS key for the account is used."
  type        = string
}
variable "description" {
  description = "(Required) A description for the DLM lifecycle policy."
  type        = string
}
variable "variable_tags" {
  description = "(Optional) A map of tag keys and variable values, where the values are determined when the policy is executed. Only $(instance-id) or $(timestamp) are valid values. Can only be used when resource_types is INSTANCE.Create Rule arguments"
  type        = string
}
variable "name" {
  description = "(Required) A name for the schedule."
  type        = string
}
variable "tags_to_add" {
  description = "(Optional) A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these."
  type        = string
}
variable "availability_zones" {
  description = "(Required) The Availability Zones in which to enable fast snapshot restore."
  type        = string
}
variable "cross_region_copy_rule" {
  description = " (Optional) - See the cross_region_copy_rule block. Max of 3 per schedule."
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
output "availability_zones" {
  description = "(Required) The Availability Zones in which to enable fast snapshot restore."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cross_region_copy_rule" {
  description = " (Optional) - See the cross_region_copy_rule block. Max of 3 per schedule."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.cross_region_copy_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) A name for the schedule."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_to_add" {
  description = "(Optional) A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.tags_to_add
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "times" {
  description = "(Optional) A list of times in 24 hour clock format that sets when the lifecycle policy should be evaluated. Max of 1.Deprecate Rule arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.times
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "count" {
  description = "(Optional) How many snapshots to keep. Must be an integer between 1 and 1000."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deprecate_rule" {
  description = "(Optional) The AMI deprecation rule for cross-Region AMI copies created by the rule. See the deprecate_rule block."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.deprecate_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fast_restore_rule" {
  description = "(Required) See the fast_restore_rule block. Max of 1 per schedule."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.fast_restore_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy_details" {
  description = "(Required) See the policy_details configuration block. Max of 1."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.policy_details
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_owner" {
  description = "(Required) The IDs of the AWS accounts that can trigger policy by sharing snapshots with your account. The policy only runs if one of the specified AWS accounts shares a snapshot with your account.Parameters arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.snapshot_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "(Optional) Whether the lifecycle policy should be enabled or disabled. ENABLED or DISABLED are valid values. Defaults to ENABLED."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "(Required) To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled, enable encryption using this parameter. Copies of encrypted snapshots are encrypted, even if this parameter is false or if encryption by default is not enabled."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_configuration" {
  description = "(Required) The encryption settings for the copied snapshot. See the encryption_configuration block. Max of 1 per action."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.encryption_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retain_rule" {
  description = "(Required) The retention rule that indicates how long snapshot copies are to be retained in the destination Region. See the retain_rule block. Max of 1 per schedule."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.retain_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Policy Details arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target" {
  description = "(Required) The target Region or the Amazon Resource Name (ARN) of the target Outpost for the snapshot copies.Cross Region Copy Rule Deprecate Rule arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "action" {
  description = "(Optional) The actions to be performed when the event-based policy is triggered. You can specify only one action per policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the action configuration block."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the DLM Lifecycle Policy."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "(Optional) Specifies the destination for snapshots created by the policy. To create snapshots in the same Region as the source resource, specify CLOUD. To create snapshots on the same Outpost as the source resource, specify OUTPOST_LOCAL. If you omit this parameter, CLOUD is used by default. If the policy targets resources in an AWS Region, then you must create snapshots in the same Region as the source resource. If the policy targets resources on an Outpost, then you can create snapshots on the same Outpost as the source resource, or in the Region of that Outpost. Valid values are CLOUD and OUTPOST_LOCAL."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DLM Lifecycle Policy."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_rule" {
  description = "(Required) See the create_rule block. Max of 1 per schedule."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.create_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_type" {
  description = "(Required) The type of event. Currently, only shareSnapshot events are supported."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.event_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "interval" {
  description = "(Required) The amount of time to retain each snapshot. The maximum is 100 years. This is equivalent to 1200 months, 5200 weeks, or 36500 days."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.interval
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_locations" {
  description = "(Optional) The location of the resources to backup. If the source resources are located in an AWS Region, specify CLOUD. If the source resources are located on an Outpost in your account, specify OUTPOST. If you specify OUTPOST, Amazon Data Lifecycle Manager backs up all resources of the specified type with matching target tags across all of the Outposts in your account. Valid values are CLOUD and OUTPOST."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.resource_locations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cron_expression" {
  description = "(Optional) The schedule, as a Cron expression. The schedule interval must be between 1 hour and 1 year."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.cron_expression
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "interval_unit" {
  description = "(Required) The unit of time for time-based retention. Valid values: DAYS, WEEKS, MONTHS, or YEARS.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.interval_unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy_type" {
  description = "(Optional) The valid target resource types and actions a policy can manage. Specify EBS_SNAPSHOT_MANAGEMENT to create a lifecycle policy that manages the lifecycle of Amazon EBS snapshots. Specify IMAGE_MANAGEMENT to create a lifecycle policy that manages the lifecycle of EBS-backed AMIs. Specify EVENT_BASED_POLICY to create an event-based policy that performs specific actions when a defined event occurs in your AWS account. Default value is EBS_SNAPSHOT_MANAGEMENT."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.policy_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) The source of the event. Currently only managed CloudWatch Events rules are supported. Valid values are MANAGED_CWE.Event Source Parameters arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_rule" {
  description = "(Required) See the share_rule block. Max of 1 per schedule."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.share_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "copy_tags" {
  description = "(Optional) Whether to copy all user-defined tags from the source snapshot to the cross-region snapshot copy."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.copy_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cross_region_copy" {
  description = "(Optional) The rule for copying shared snapshots across Regions. See the cross_region_copy configuration block."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.cross_region_copy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description_regex" {
  description = "(Required) The snapshot description that can trigger the policy. The description pattern is specified using a regular expression. The policy runs only if a snapshot with a description that matches the specified pattern is shared with your account."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.description_regex
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "exclude_boot_volume" {
  description = "(Optional) Indicates whether to exclude the root volume from snapshots created using CreateSnapshots. The default is false."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.exclude_boot_volume
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_reboot" {
  description = "(Optional) Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle policy runs. true indicates that targeted instances are not rebooted when the policy runs. false indicates that target instances are rebooted when the policy runs. The default is true (instances are not rebooted).Schedule arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.no_reboot
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schedule" {
  description = "(Optional) See the schedule configuration block."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_accounts" {
  description = "(Required) The IDs of the AWS accounts with which to share the snapshots."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.target_accounts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_tags" {
  description = " (Optional) A map of tag keys and their values. Any resources that match the resource_types and are tagged with emany of these tags will be targeted.~> Note: You cannot have overlapping lifecycle policies that share the same target_tags. Terraform is unable to detect this at plan time but it will fail during apply.Action arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.target_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cmk_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS KMS customer master key (CMK) to use for EBS encryption. If this argument is not specified, the default KMS key for the account is used."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.cmk_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Required) A description for the DLM lifecycle policy."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_source" {
  description = "(Optional) The event that triggers the event-based policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the event_source configuration block."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.event_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "execution_role_arn" {
  description = "(Required) The ARN of an IAM role that is able to be assumed by the DLM service."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.execution_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters" {
  description = "(Required) Information about the event. See the parameters configuration block."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_types" {
  description = "(Optional) A list of resource types that should be targeted by the lifecycle policy. Valid values are VOLUME and INSTANCE."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.resource_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "variable_tags" {
  description = "(Optional) A map of tag keys and variable values, where the values are determined when the policy is executed. Only $(instance-id) or $(timestamp) are valid values. Can only be used when resource_types is INSTANCE.Create Rule arguments"
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.variable_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DLM Lifecycle Policy."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the DLM Lifecycle Policy."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_dlm_lifecycle_policy.markdown.aws_dlm_lifecycle_policy.markdown.tags_all
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
      "kind/name"                   = "aws_dlm_lifecycle_policy.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
