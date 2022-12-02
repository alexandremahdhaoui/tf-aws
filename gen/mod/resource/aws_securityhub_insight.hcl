resource "aws_securityhub_insight" "aws_securityhub_insight" {
  start                                                = var.start
  aws_account_id                                       = var.aws_account_id
  compliance_status                                    = var.compliance_status
  malware_state                                        = var.malware_state
  malware_type                                         = var.malware_type
  network_destination_domain                           = var.network_destination_domain
  record_state                                         = var.record_state
  resource_aws_ec2_instance_type                       = var.resource_aws_ec2_instance_type
  resource_aws_iam_access_key_status                   = var.resource_aws_iam_access_key_status
  criticality                                          = var.criticality
  finding_provider_fields_criticality                  = var.finding_provider_fields_criticality
  finding_provider_fields_related_findings_id          = var.finding_provider_fields_related_findings_id
  group_by_attribute                                   = var.group_by_attribute
  keyword                                              = var.keyword
  process_parent_pid                                   = var.process_parent_pid
  resource_details_other                               = var.resource_details_other
  updated_at                                           = var.updated_at
  resource_aws_ec2_instance_ipv4_addresses             = var.resource_aws_ec2_instance_ipv4_addresses
  resource_aws_s3_bucket_owner_name                    = var.resource_aws_s3_bucket_owner_name
  company_name                                         = var.company_name
  gte                                                  = var.gte
  id                                                   = var.id
  network_destination_ipv6                             = var.network_destination_ipv6
  network_direction                                    = var.network_direction
  note_text                                            = var.note_text
  confidence                                           = var.confidence
  network_destination_ipv4                             = var.network_destination_ipv4
  note_updated_at                                      = var.note_updated_at
  resource_aws_ec2_instance_iam_instance_profile_arn   = var.resource_aws_ec2_instance_iam_instance_profile_arn
  end                                                  = var.end
  network_destination_port                             = var.network_destination_port
  process_terminated_at                                = var.process_terminated_at
  related_findings_product_arn                         = var.related_findings_product_arn
  network_protocol                                     = var.network_protocol
  resource_aws_iam_access_key_created_at               = var.resource_aws_iam_access_key_created_at
  resource_aws_iam_access_key_user_name                = var.resource_aws_iam_access_key_user_name
  resource_aws_s3_bucket_owner_id                      = var.resource_aws_s3_bucket_owner_id
  comparison                                           = var.comparison
  network_source_ipv4                                  = var.network_source_ipv4
  unit                                                 = var.unit
  value                                                = var.value
  finding_provider_fields_severity_original            = var.finding_provider_fields_severity_original
  name                                                 = var.name
  resource_tags                                        = var.resource_tags
  severity_label                                       = var.severity_label
  threat_intel_indicator_category                      = var.threat_intel_indicator_category
  threat_intel_indicator_type                          = var.threat_intel_indicator_type
  title                                                = var.title
  generator_id                                         = var.generator_id
  process_launched_at                                  = var.process_launched_at
  related_findings_id                                  = var.related_findings_id
  resource_aws_ec2_instance_subnet_id                  = var.resource_aws_ec2_instance_subnet_id
  resource_container_image_id                          = var.resource_container_image_id
  threat_intel_indicator_value                         = var.threat_intel_indicator_value
  resource_container_name                              = var.resource_container_name
  resource_id                                          = var.resource_id
  finding_provider_fields_severity_label               = var.finding_provider_fields_severity_label
  network_source_port                                  = var.network_source_port
  process_pid                                          = var.process_pid
  product_fields                                       = var.product_fields
  resource_aws_ec2_instance_key_name                   = var.resource_aws_ec2_instance_key_name
  resource_container_image_name                        = var.resource_container_image_name
  resource_region                                      = var.resource_region
  threat_intel_indicator_last_observed_at              = var.threat_intel_indicator_last_observed_at
  workflow_status                                      = var.workflow_status
  resource_aws_ec2_instance_vpc_id                     = var.resource_aws_ec2_instance_vpc_id
  source_url                                           = var.source_url
  cidr                                                 = var.cidr
  first_observed_at                                    = var.first_observed_at
  last_observed_at                                     = var.last_observed_at
  product_arn                                          = var.product_arn
  resource_aws_ec2_instance_ipv6_addresses             = var.resource_aws_ec2_instance_ipv6_addresses
  resource_aws_ec2_instance_launched_at                = var.resource_aws_ec2_instance_launched_at
  threat_intel_indicator_source_url                    = var.threat_intel_indicator_source_url
  type                                                 = var.type
  verification_state                                   = var.verification_state
  date_range                                           = var.date_range
  description                                          = var.description
  filters                                              = var.filters
  finding_provider_fields_related_findings_product_arn = var.finding_provider_fields_related_findings_product_arn
  network_source_ipv6                                  = var.network_source_ipv6
  resource_aws_ec2_instance_image_id                   = var.resource_aws_ec2_instance_image_id
  finding_provider_fields_types                        = var.finding_provider_fields_types
  key                                                  = var.key
  malware_name                                         = var.malware_name
  process_name                                         = var.process_name
  resource_container_launched_at                       = var.resource_container_launched_at
  eq                                                   = var.eq
  malware_path                                         = var.malware_path
  network_source_domain                                = var.network_source_domain
  network_source_mac                                   = var.network_source_mac
  resource_partition                                   = var.resource_partition
  finding_provider_fields_confidence                   = var.finding_provider_fields_confidence
  note_updated_by                                      = var.note_updated_by
  process_path                                         = var.process_path
  recommendation_text                                  = var.recommendation_text
  threat_intel_indicator_source                        = var.threat_intel_indicator_source
  created_at                                           = var.created_at
  lte                                                  = var.lte
  product_name                                         = var.product_name
  resource_type                                        = var.resource_type
  user_defined_values                                  = var.user_defined_values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "resource_aws_ec2_instance_ipv6_addresses" {
  description = "(Optional) The IPv6 addresses associated with the instance. See Ip Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_launched_at" {
  description = "(Optional) The date and time the instance was launched. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_vpc_id" {
  description = "(Optional) The identifier of the VPC that the instance was launched in. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "source_url" {
  description = "(Optional) A URL that links to a page about the current finding in the security-findings provider's solution. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "cidr" {
  description = "(Required) A finding's CIDR value.Keyword Filter Argument ReferenceThe keyword filter configuration block supports the following arguments:"
  type        = string
}
variable "first_observed_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider first observed the potential security issue that a finding captured. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "last_observed_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider most recently observed the potential security issue that a finding captured. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "product_arn" {
  description = "(Optional) The ARN generated by Security Hub that uniquely identifies a third-party company (security findings provider) after this provider's product (solution that generates findings) is registered with Security Hub. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "threat_intel_indicator_source_url" {
  description = "(Optional) The URL for more details from the source of the threat intelligence. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) A finding type in the format of namespace/category/classifier that classifies a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "network_source_ipv6" {
  description = "(Optional) The source IPv6 address of network-related information about a finding. See Ip Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_image_id" {
  description = "(Optional) The Amazon Machine Image (AMI) ID of the instance. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "verification_state" {
  description = "(Optional) The veracity of a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "date_range" {
  description = "(Optional) A configuration block of the date range for the date filter. See date_range below for more details."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A finding's description. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "filters" {
  description = "(Required) A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details."
  type        = string
}
variable "finding_provider_fields_related_findings_product_arn" {
  description = "(Optional) The ARN of the solution that generated a related finding that is identified by the finding provider. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_container_launched_at" {
  description = "(Optional) The date/time that the container was started. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "finding_provider_fields_types" {
  description = "(Optional) One or more finding types that the finding provider assigned to the finding. Uses the format of namespace/category/classifier that classify a finding. Valid namespace values include: Software and Configuration Checks, TTPs, Effects, Unusual Behaviors, and Sensitive Data Identifications. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) The key of the map filter. For example, for ResourceTags, Key identifies the name of the tag. For UserDefinedFields, Key is the name of the field."
  type        = string
}
variable "malware_name" {
  description = "(Optional) The name of the malware that was observed. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "process_name" {
  description = "(Optional) The name of the process. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_partition" {
  description = "(Optional) The canonical AWS partition name that the Region is assigned to. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "eq" {
  description = "(Optional) The equal-to condition to be applied to a single field when querying for findings, provided as a String."
  type        = string
  default     = ""
}
variable "malware_path" {
  description = "(Optional) The filesystem path of the malware that was observed. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "network_source_domain" {
  description = "(Optional) The source domain of network-related information about a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "network_source_mac" {
  description = "(Optional) The source media access control (MAC) address of network-related information about a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "threat_intel_indicator_source" {
  description = "(Optional) The source of the threat intelligence. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "finding_provider_fields_confidence" {
  description = "(Optional) The finding provider value for the finding confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "note_updated_by" {
  description = "(Optional) The principal that created a note. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "process_path" {
  description = "(Optional) The path to the process executable. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "recommendation_text" {
  description = "(Optional) The recommendation of what to do about the issue described in a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "user_defined_values" {
  description = "(Optional) A list of name/value string pairs associated with the finding. These are custom, user-defined fields added to a finding. See Map Filter below for more details."
  type        = string
  default     = ""
}
variable "created_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider captured the potential security issue that a finding captured. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "lte" {
  description = "(Optional) The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.String Filter Argument referenceThe string filter configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "product_name" {
  description = "(Optional) The name of the solution (product) that generates findings. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_type" {
  description = "(Optional) Specifies the type of the resource that details are provided for. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "network_destination_domain" {
  description = "(Optional) The destination domain of network-related information about a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "record_state" {
  description = "(Optional) The updated record state for the finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "start" {
  description = "(Optional) A start date for the date filter. Required with end if date_range is not specified.date_range Argument referenceThe date_range configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "aws_account_id" {
  description = "(Optional) AWS account ID that a finding is generated in. See String_Filter below for more details."
  type        = string
  default     = ""
}
variable "compliance_status" {
  description = "(Optional) Exclusive to findings that are generated as the result of a check run against a specific rule in a supported standard, such as CIS AWS Foundations. Contains security standard-related finding details. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "malware_state" {
  description = "(Optional) The state of the malware that was observed. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "malware_type" {
  description = "(Optional) The type of the malware that was observed. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "keyword" {
  description = "(Optional) A keyword for a finding. See Keyword Filter below for more details."
  type        = string
  default     = ""
}
variable "process_parent_pid" {
  description = "(Optional) The parent process ID. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_type" {
  description = "(Optional) The instance type of the instance. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_iam_access_key_status" {
  description = "(Optional) The status of the IAM access key related to a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "criticality" {
  description = "(Optional) The level of importance assigned to the resources associated with the finding. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "finding_provider_fields_criticality" {
  description = "(Optional) The finding provider value for the level of importance assigned to the resources associated with the findings. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "finding_provider_fields_related_findings_id" {
  description = "(Optional) The finding identifier of a related finding that is identified by the finding provider. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "group_by_attribute" {
  description = "(Required) The attribute used to group the findings for the insight e.g., if an insight is grouped by ResourceId, then the insight produces a list of resource identifiers."
  type        = string
}
variable "resource_details_other" {
  description = "(Optional) The details of a resource that doesn't have a specific subfield for the resource type defined. See Map Filter below for more details."
  type        = string
  default     = ""
}
variable "updated_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider last updated the finding record. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "network_direction" {
  description = "(Optional) Indicates the direction of network traffic associated with a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "note_text" {
  description = "(Optional) The text of a note. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_ipv4_addresses" {
  description = "(Optional) The IPv4 addresses associated with the instance. See Ip Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_s3_bucket_owner_name" {
  description = "(Optional) The display name of the owner of the S3 bucket. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "company_name" {
  description = "(Optional) The name of the findings provider (company) that owns the solution (product) that generates findings. See String_Filter below for more details."
  type        = string
  default     = ""
}
variable "gte" {
  description = "(Optional) The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String."
  type        = string
  default     = ""
}
variable "id" {
  description = "ARN of the insight."
  type        = string
}
variable "network_destination_ipv6" {
  description = "(Optional) The destination IPv6 address of network-related information about a finding. See Ip Filter below for more details."
  type        = string
  default     = ""
}
variable "confidence" {
  description = "(Optional) A finding's confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "network_destination_ipv4" {
  description = "(Optional) The destination IPv4 address of network-related information about a finding. See Ip Filter below for more details."
  type        = string
  default     = ""
}
variable "note_updated_at" {
  description = "(Optional) The timestamp of when the note was updated. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_iam_instance_profile_arn" {
  description = "(Optional) The IAM profile ARN of the instance. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "end" {
  description = "(Optional) An end date for the date filter. Required with start if date_range is not specified."
  type        = string
  default     = ""
}
variable "network_destination_port" {
  description = "(Optional) The destination port of network-related information about a finding. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "process_terminated_at" {
  description = "(Optional) The date/time that the process was terminated. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "related_findings_product_arn" {
  description = "(Optional) The ARN of the solution that generated a related finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "network_protocol" {
  description = "(Optional) The protocol of network-related information about a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_iam_access_key_created_at" {
  description = "(Optional) The creation date/time of the IAM access key related to a finding. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_iam_access_key_user_name" {
  description = "(Optional) The user associated with the IAM access key related to a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_s3_bucket_owner_id" {
  description = "(Optional) The canonical user ID of the owner of the S3 bucket. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "comparison" {
  description = "(Required) The condition to apply to a string value when querying for findings. Valid values include: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS."
  type        = string
}
variable "network_source_ipv4" {
  description = "(Optional) The source IPv4 address of network-related information about a finding. See Ip Filter below for more details."
  type        = string
  default     = ""
}
variable "threat_intel_indicator_category" {
  description = "(Optional) The category of a threat intelligence indicator. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "threat_intel_indicator_type" {
  description = "(Optional) The type of a threat intelligence indicator. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "unit" {
  description = "(Required) A date range unit for the date filter. Valid values: DAYS."
  type        = string
}
variable "value" {
  description = "(Required) The string filter value. Valid values include: NEW, NOTIFIED, SUPPRESSED, and RESOLVED.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "finding_provider_fields_severity_original" {
  description = "(Optional) The finding provider's original value for the severity. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the custom insight.filtersThe filters configuration block supports the following arguments:~> strongNOTE: For each argument below, up to 20 can be provided."
  type        = string
}
variable "resource_tags" {
  description = "(Optional) A list of AWS tags associated with a resource at the time the finding was processed. See Map Filter below for more details."
  type        = string
  default     = ""
}
variable "severity_label" {
  description = "(Optional) The label of a finding's severity. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_container_image_id" {
  description = "(Optional) The identifier of the image related to a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "threat_intel_indicator_value" {
  description = "(Optional) The value of a threat intelligence indicator. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "title" {
  description = "(Optional) A finding's title. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "generator_id" {
  description = "(Optional) The identifier for the solution-specific component (a discrete unit of logic) that generated a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "process_launched_at" {
  description = "(Optional) The date/time that the process was launched. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "related_findings_id" {
  description = "(Optional) The solution-generated identifier for a related finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_subnet_id" {
  description = "(Optional) The identifier of the subnet that the instance was launched in. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_aws_ec2_instance_key_name" {
  description = "(Optional) The key name associated with the instance. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_container_image_name" {
  description = "(Optional) The name of the image related to a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_container_name" {
  description = "(Optional) The name of the container related to a finding. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_id" {
  description = "(Optional) The canonical identifier for the given resource type. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "finding_provider_fields_severity_label" {
  description = "(Optional) The finding provider value for the severity label. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "network_source_port" {
  description = "(Optional) The source port of network-related information about a finding. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "process_pid" {
  description = "(Optional) The process ID. See Number Filter below for more details."
  type        = string
  default     = ""
}
variable "product_fields" {
  description = "(Optional) A data type where security-findings providers can include additional solution-specific details that aren't part of the defined AwsSecurityFinding format. See Map Filter below for more details."
  type        = string
  default     = ""
}
variable "resource_region" {
  description = "(Optional) The canonical AWS external Region name where this resource is located. See String Filter below for more details."
  type        = string
  default     = ""
}
variable "threat_intel_indicator_last_observed_at" {
  description = "(Optional) The date/time of the last observation of a threat intelligence indicator. See Date Filter below for more details."
  type        = string
  default     = ""
}
variable "workflow_status" {
  description = "(Optional) The status of the investigation into a finding. See Workflow Status Filter below for more details.Date Filter Argument referenceThe date filter configuration block supports the following arguments:"
  type        = string
  default     = ""
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
output "date_range" {
  description = "(Optional) A configuration block of the date range for the date filter. See date_range below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.date_range
}
output "description" {
  description = "(Optional) A finding's description. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.description
}
output "filters" {
  description = "(Required) A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.filters
}
output "finding_provider_fields_related_findings_product_arn" {
  description = "(Optional) The ARN of the solution that generated a related finding that is identified by the finding provider. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.finding_provider_fields_related_findings_product_arn
}
output "network_source_ipv6" {
  description = "(Optional) The source IPv6 address of network-related information about a finding. See Ip Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_source_ipv6
}
output "resource_aws_ec2_instance_image_id" {
  description = "(Optional) The Amazon Machine Image (AMI) ID of the instance. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_image_id
}
output "verification_state" {
  description = "(Optional) The veracity of a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.verification_state
}
output "finding_provider_fields_types" {
  description = "(Optional) One or more finding types that the finding provider assigned to the finding. Uses the format of namespace/category/classifier that classify a finding. Valid namespace values include: Software and Configuration Checks, TTPs, Effects, Unusual Behaviors, and Sensitive Data Identifications. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.finding_provider_fields_types
}
output "key" {
  description = "(Required) The key of the map filter. For example, for ResourceTags, Key identifies the name of the tag. For UserDefinedFields, Key is the name of the field."
  value       = aws_securityhub_insight.aws_securityhub_insight.key
}
output "malware_name" {
  description = "(Optional) The name of the malware that was observed. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.malware_name
}
output "process_name" {
  description = "(Optional) The name of the process. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.process_name
}
output "resource_container_launched_at" {
  description = "(Optional) The date/time that the container was started. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_container_launched_at
}
output "eq" {
  description = "(Optional) The equal-to condition to be applied to a single field when querying for findings, provided as a String."
  value       = aws_securityhub_insight.aws_securityhub_insight.eq
}
output "malware_path" {
  description = "(Optional) The filesystem path of the malware that was observed. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.malware_path
}
output "network_source_domain" {
  description = "(Optional) The source domain of network-related information about a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_source_domain
}
output "network_source_mac" {
  description = "(Optional) The source media access control (MAC) address of network-related information about a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_source_mac
}
output "resource_partition" {
  description = "(Optional) The canonical AWS partition name that the Region is assigned to. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_partition
}
output "finding_provider_fields_confidence" {
  description = "(Optional) The finding provider value for the finding confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.finding_provider_fields_confidence
}
output "note_updated_by" {
  description = "(Optional) The principal that created a note. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.note_updated_by
}
output "process_path" {
  description = "(Optional) The path to the process executable. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.process_path
}
output "recommendation_text" {
  description = "(Optional) The recommendation of what to do about the issue described in a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.recommendation_text
}
output "threat_intel_indicator_source" {
  description = "(Optional) The source of the threat intelligence. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.threat_intel_indicator_source
}
output "created_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider captured the potential security issue that a finding captured. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.created_at
}
output "lte" {
  description = "(Optional) The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.String Filter Argument referenceThe string filter configuration block supports the following arguments:"
  value       = aws_securityhub_insight.aws_securityhub_insight.lte
}
output "product_name" {
  description = "(Optional) The name of the solution (product) that generates findings. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.product_name
}
output "resource_type" {
  description = "(Optional) Specifies the type of the resource that details are provided for. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_type
}
output "user_defined_values" {
  description = "(Optional) A list of name/value string pairs associated with the finding. These are custom, user-defined fields added to a finding. See Map Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.user_defined_values
}
output "aws_account_id" {
  description = "(Optional) AWS account ID that a finding is generated in. See String_Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.aws_account_id
}
output "compliance_status" {
  description = "(Optional) Exclusive to findings that are generated as the result of a check run against a specific rule in a supported standard, such as CIS AWS Foundations. Contains security standard-related finding details. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.compliance_status
}
output "malware_state" {
  description = "(Optional) The state of the malware that was observed. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.malware_state
}
output "malware_type" {
  description = "(Optional) The type of the malware that was observed. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.malware_type
}
output "network_destination_domain" {
  description = "(Optional) The destination domain of network-related information about a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_destination_domain
}
output "record_state" {
  description = "(Optional) The updated record state for the finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.record_state
}
output "start" {
  description = "(Optional) A start date for the date filter. Required with end if date_range is not specified.date_range Argument referenceThe date_range configuration block supports the following arguments:"
  value       = aws_securityhub_insight.aws_securityhub_insight.start
}
output "criticality" {
  description = "(Optional) The level of importance assigned to the resources associated with the finding. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.criticality
}
output "finding_provider_fields_criticality" {
  description = "(Optional) The finding provider value for the level of importance assigned to the resources associated with the findings. A score of 0 means that the underlying resources have no criticality, and a score of 100 is reserved for the most critical resources. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.finding_provider_fields_criticality
}
output "finding_provider_fields_related_findings_id" {
  description = "(Optional) The finding identifier of a related finding that is identified by the finding provider. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.finding_provider_fields_related_findings_id
}
output "group_by_attribute" {
  description = "(Required) The attribute used to group the findings for the insight e.g., if an insight is grouped by ResourceId, then the insight produces a list of resource identifiers."
  value       = aws_securityhub_insight.aws_securityhub_insight.group_by_attribute
}
output "keyword" {
  description = "(Optional) A keyword for a finding. See Keyword Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.keyword
}
output "process_parent_pid" {
  description = "(Optional) The parent process ID. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.process_parent_pid
}
output "resource_aws_ec2_instance_type" {
  description = "(Optional) The instance type of the instance. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_type
}
output "resource_aws_iam_access_key_status" {
  description = "(Optional) The status of the IAM access key related to a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_iam_access_key_status
}
output "resource_details_other" {
  description = "(Optional) The details of a resource that doesn't have a specific subfield for the resource type defined. See Map Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_details_other
}
output "updated_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider last updated the finding record. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.updated_at
}
output "company_name" {
  description = "(Optional) The name of the findings provider (company) that owns the solution (product) that generates findings. See String_Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.company_name
}
output "gte" {
  description = "(Optional) The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String."
  value       = aws_securityhub_insight.aws_securityhub_insight.gte
}
output "id" {
  description = "ARN of the insight."
  value       = aws_securityhub_insight.aws_securityhub_insight.id
}
output "network_destination_ipv6" {
  description = "(Optional) The destination IPv6 address of network-related information about a finding. See Ip Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_destination_ipv6
}
output "network_direction" {
  description = "(Optional) Indicates the direction of network traffic associated with a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_direction
}
output "note_text" {
  description = "(Optional) The text of a note. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.note_text
}
output "resource_aws_ec2_instance_ipv4_addresses" {
  description = "(Optional) The IPv4 addresses associated with the instance. See Ip Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_ipv4_addresses
}
output "resource_aws_s3_bucket_owner_name" {
  description = "(Optional) The display name of the owner of the S3 bucket. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_s3_bucket_owner_name
}
output "confidence" {
  description = "(Optional) A finding's confidence. Confidence is defined as the likelihood that a finding accurately identifies the behavior or issue that it was intended to identify. Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent confidence and 100 means 100 percent confidence. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.confidence
}
output "network_destination_ipv4" {
  description = "(Optional) The destination IPv4 address of network-related information about a finding. See Ip Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_destination_ipv4
}
output "note_updated_at" {
  description = "(Optional) The timestamp of when the note was updated. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.note_updated_at
}
output "resource_aws_ec2_instance_iam_instance_profile_arn" {
  description = "(Optional) The IAM profile ARN of the instance. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_iam_instance_profile_arn
}
output "end" {
  description = "(Optional) An end date for the date filter. Required with start if date_range is not specified."
  value       = aws_securityhub_insight.aws_securityhub_insight.end
}
output "network_destination_port" {
  description = "(Optional) The destination port of network-related information about a finding. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_destination_port
}
output "process_terminated_at" {
  description = "(Optional) The date/time that the process was terminated. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.process_terminated_at
}
output "related_findings_product_arn" {
  description = "(Optional) The ARN of the solution that generated a related finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.related_findings_product_arn
}
output "network_protocol" {
  description = "(Optional) The protocol of network-related information about a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_protocol
}
output "resource_aws_iam_access_key_created_at" {
  description = "(Optional) The creation date/time of the IAM access key related to a finding. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_iam_access_key_created_at
}
output "resource_aws_iam_access_key_user_name" {
  description = "(Optional) The user associated with the IAM access key related to a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_iam_access_key_user_name
}
output "resource_aws_s3_bucket_owner_id" {
  description = "(Optional) The canonical user ID of the owner of the S3 bucket. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_s3_bucket_owner_id
}
output "comparison" {
  description = "(Required) The condition to apply to a string value when querying for findings. Valid values include: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS."
  value       = aws_securityhub_insight.aws_securityhub_insight.comparison
}
output "network_source_ipv4" {
  description = "(Optional) The source IPv4 address of network-related information about a finding. See Ip Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_source_ipv4
}
output "finding_provider_fields_severity_original" {
  description = "(Optional) The finding provider's original value for the severity. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.finding_provider_fields_severity_original
}
output "name" {
  description = "(Required) The name of the custom insight.filtersThe filters configuration block supports the following arguments:~> strongNOTE: For each argument below, up to 20 can be provided."
  value       = aws_securityhub_insight.aws_securityhub_insight.name
}
output "resource_tags" {
  description = "(Optional) A list of AWS tags associated with a resource at the time the finding was processed. See Map Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_tags
}
output "severity_label" {
  description = "(Optional) The label of a finding's severity. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.severity_label
}
output "threat_intel_indicator_category" {
  description = "(Optional) The category of a threat intelligence indicator. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.threat_intel_indicator_category
}
output "threat_intel_indicator_type" {
  description = "(Optional) The type of a threat intelligence indicator. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.threat_intel_indicator_type
}
output "unit" {
  description = "(Required) A date range unit for the date filter. Valid values: DAYS."
  value       = aws_securityhub_insight.aws_securityhub_insight.unit
}
output "value" {
  description = "(Required) The string filter value. Valid values include: NEW, NOTIFIED, SUPPRESSED, and RESOLVED.In addition to all arguments above, the following attributes are exported:"
  value       = aws_securityhub_insight.aws_securityhub_insight.value
}
output "generator_id" {
  description = "(Optional) The identifier for the solution-specific component (a discrete unit of logic) that generated a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.generator_id
}
output "process_launched_at" {
  description = "(Optional) The date/time that the process was launched. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.process_launched_at
}
output "related_findings_id" {
  description = "(Optional) The solution-generated identifier for a related finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.related_findings_id
}
output "resource_aws_ec2_instance_subnet_id" {
  description = "(Optional) The identifier of the subnet that the instance was launched in. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_subnet_id
}
output "resource_container_image_id" {
  description = "(Optional) The identifier of the image related to a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_container_image_id
}
output "threat_intel_indicator_value" {
  description = "(Optional) The value of a threat intelligence indicator. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.threat_intel_indicator_value
}
output "title" {
  description = "(Optional) A finding's title. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.title
}
output "finding_provider_fields_severity_label" {
  description = "(Optional) The finding provider value for the severity label. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.finding_provider_fields_severity_label
}
output "network_source_port" {
  description = "(Optional) The source port of network-related information about a finding. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.network_source_port
}
output "process_pid" {
  description = "(Optional) The process ID. See Number Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.process_pid
}
output "product_fields" {
  description = "(Optional) A data type where security-findings providers can include additional solution-specific details that aren't part of the defined AwsSecurityFinding format. See Map Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.product_fields
}
output "resource_aws_ec2_instance_key_name" {
  description = "(Optional) The key name associated with the instance. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_key_name
}
output "resource_container_image_name" {
  description = "(Optional) The name of the image related to a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_container_image_name
}
output "resource_container_name" {
  description = "(Optional) The name of the container related to a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_container_name
}
output "resource_id" {
  description = "(Optional) The canonical identifier for the given resource type. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_id
}
output "resource_region" {
  description = "(Optional) The canonical AWS external Region name where this resource is located. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_region
}
output "threat_intel_indicator_last_observed_at" {
  description = "(Optional) The date/time of the last observation of a threat intelligence indicator. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.threat_intel_indicator_last_observed_at
}
output "workflow_status" {
  description = "(Optional) The status of the investigation into a finding. See Workflow Status Filter below for more details.Date Filter Argument referenceThe date filter configuration block supports the following arguments:"
  value       = aws_securityhub_insight.aws_securityhub_insight.workflow_status
}
output "cidr" {
  description = "(Required) A finding's CIDR value.Keyword Filter Argument ReferenceThe keyword filter configuration block supports the following arguments:"
  value       = aws_securityhub_insight.aws_securityhub_insight.cidr
}
output "first_observed_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider first observed the potential security issue that a finding captured. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.first_observed_at
}
output "last_observed_at" {
  description = "(Optional) An ISO8601-formatted timestamp that indicates when the security-findings provider most recently observed the potential security issue that a finding captured. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.last_observed_at
}
output "product_arn" {
  description = "(Optional) The ARN generated by Security Hub that uniquely identifies a third-party company (security findings provider) after this provider's product (solution that generates findings) is registered with Security Hub. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.product_arn
}
output "resource_aws_ec2_instance_ipv6_addresses" {
  description = "(Optional) The IPv6 addresses associated with the instance. See Ip Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_ipv6_addresses
}
output "resource_aws_ec2_instance_launched_at" {
  description = "(Optional) The date and time the instance was launched. See Date Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_launched_at
}
output "resource_aws_ec2_instance_vpc_id" {
  description = "(Optional) The identifier of the VPC that the instance was launched in. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.resource_aws_ec2_instance_vpc_id
}
output "source_url" {
  description = "(Optional) A URL that links to a page about the current finding in the security-findings provider's solution. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.source_url
}
output "threat_intel_indicator_source_url" {
  description = "(Optional) The URL for more details from the source of the threat intelligence. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.threat_intel_indicator_source_url
}
output "type" {
  description = "(Optional) A finding type in the format of namespace/category/classifier that classifies a finding. See String Filter below for more details."
  value       = aws_securityhub_insight.aws_securityhub_insight.type
}
output "arn" {
  description = "ARN of the insight."
  value       = aws_securityhub_insight.aws_securityhub_insight.arn
}
output "id" {
  description = "ARN of the insight."
  value       = aws_securityhub_insight.aws_securityhub_insight.id
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
      "kind/name"                   = "aws_securityhub_insight"
      "kind/version"                = "v0.1.0"
    }
  }
}
