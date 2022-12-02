resource "aws_macie2_classification_job" "aws_macie2_classification_job" {
  values                     = var.values
  custom_data_identifier_ids = var.custom_data_identifier_ids
  key                        = var.key
  simple_scope_term          = var.simple_scope_term
  target                     = var.target
  and                        = var.and
  value                      = var.value
  comparator                 = var.comparator
  daily_schedule             = var.daily_schedule
  description                = var.description
  includes                   = var.includes
  job_type                   = var.job_type
  weekly_schedule            = var.weekly_schedule
  name                       = var.name
  name_prefix                = var.name_prefix
  sampling_percentage        = var.sampling_percentage
  tag_criterion              = var.tag_criterion
  bucket_criteria            = var.bucket_criteria
  buckets                    = var.buckets
  created_at                 = var.created_at
  monthly_schedule           = var.monthly_schedule
  account_id                 = var.account_id
  id                         = var.id
  initial_run                = var.initial_run
  tag_scope_term             = var.tag_scope_term
  tags                       = var.tags
  bucket_definitions         = var.bucket_definitions
  s3_job_definition          = var.s3_job_definition
  schedule_frequency         = var.schedule_frequency
  scoping                    = var.scoping
  excludes                   = var.excludes
  job_status                 = var.job_status
  simple_criterion           = var.simple_criterion
  tag_values                 = var.tag_values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "and" {
  description = " (Optional) An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)The and object supports the following:"
  type        = string
}
variable "value" {
  description = "(Required) The tag value.bucket_definitions Configuration BlockThe bucket_definitions object supports the following:"
  type        = string
}
variable "comparator" {
  description = " (Optional) The operator to use in the condition."
  type        = string
}
variable "daily_schedule" {
  description = " (Optional) Specifies a daily recurrence pattern for running the job."
  type        = string
}
variable "description" {
  description = " (Optional) A custom description of the job. The description can contain as many as 200 characters."
  type        = string
}
variable "includes" {
  description = " (Optional) The property- or tag-based conditions that determine which objects to include in the analysis. (documented below)The excludes and includes object supports the following:"
  type        = string
}
variable "job_type" {
  description = " (Required) The schedule for running the job. Valid values are: ONE_TIMERun the job only once. If you specify this value, don't specify a value for the schedule_frequency property. SCHEDULEDRun the job on a daily, weekly, or monthly basis. If you specify this value, use the schedule_frequency property to define the recurrence pattern for the job."
  type        = string
}
variable "weekly_schedule" {
  description = " (Optional) Specifies a weekly recurrence pattern for running the job."
  type        = string
}
variable "name" {
  description = " (Optional) A custom name for the job. The name can contain as many as 500 characters. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  type        = string
}
variable "name_prefix" {
  description = " (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "sampling_percentage" {
  description = " (Optional) The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects."
  type        = string
}
variable "tag_criterion" {
  description = " (Optional) A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)The simple_criterion object supports the following:"
  type        = string
}
variable "bucket_criteria" {
  description = "(Optional) The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Conflicts with bucket_definitions. (documented below)"
  type        = string
}
variable "buckets" {
  description = " (Required) An array that lists the names of the buckets.scoping Configuration BlockThe scoping object supports the following:"
  type        = string
}
variable "created_at" {
  description = " The date and time, in UTC and extended RFC 3339 format, when the job was created."
  type        = string
}
variable "monthly_schedule" {
  description = " (Optional) Specifies a monthly recurrence pattern for running the job.The s3_job_definition object supports the following:"
  type        = string
}
variable "account_id" {
  description = " (Required) The unique identifier for the AWS account that owns the buckets."
  type        = string
}
variable "id" {
  description = "The unique identifier (ID) of the macie classification job."
  type        = string
}
variable "initial_run" {
  description = " (Optional) Specifies whether to analyze all existing, eligible objects immediately after the job is created."
  type        = string
}
variable "tag_scope_term" {
  description = " (Optional) A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)The simple_scope_term object supports the following:"
  type        = string
}
variable "tags" {
  description = " (Optional) A map of key-value pairs that specifies the tags to associate with the job. A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters."
  type        = string
}
variable "bucket_definitions" {
  description = " (Optional) An array of objects, one for each AWS account that owns buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for the account. Conflicts with bucket_criteria. (documented below)"
  type        = string
}
variable "s3_job_definition" {
  description = " (Optional) The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)"
  type        = string
}
variable "schedule_frequency" {
  description = " (Optional) The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the job_type property to ONE_TIME. (documented below)"
  type        = string
}
variable "scoping" {
  description = " (Optional) The property- and tag-based conditions that determine which objects to include or exclude from the analysis. (documented below)bucket_criteria Configuration BlockThe bucket_criteria object supports the following:"
  type        = string
}
variable "excludes" {
  description = " (Optional) The property- or tag-based conditions that determine which objects to exclude from the analysis. (documented below)"
  type        = string
}
variable "job_status" {
  description = " (Optional) The status for the job. Valid values are: CANCELLED, RUNNING and USER_PAUSEDThe schedule_frequency object supports the following:"
  type        = string
}
variable "simple_criterion" {
  description = " (Optional) A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)"
  type        = string
}
variable "tag_values" {
  description = " (Optional) The tag keys or tag key and value pairs to use in the condition."
  type        = string
}
variable "values" {
  description = " (Optional) An array that lists the values to use in the condition."
  type        = string
}
variable "custom_data_identifier_ids" {
  description = " (Optional) The custom data identifiers to use for data analysis and classification."
  type        = string
}
variable "key" {
  description = " (Required) The tag key to use in the condition. The only valid value is TAG."
  type        = string
}
variable "simple_scope_term" {
  description = " (Optional) A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)"
  type        = string
}
variable "target" {
  description = " (Required) The type of object to apply the condition to. The only valid value is S3_OBJECT.In addition to all arguments above, the following attributes are exported:"
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
output "and" {
  description = " (Optional) An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)The and object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.and
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) The tag value.bucket_definitions Configuration BlockThe bucket_definitions object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comparator" {
  description = " (Optional) The operator to use in the condition."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.comparator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "daily_schedule" {
  description = " (Optional) Specifies a daily recurrence pattern for running the job."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.daily_schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = " (Optional) A custom description of the job. The description can contain as many as 200 characters."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "includes" {
  description = " (Optional) The property- or tag-based conditions that determine which objects to include in the analysis. (documented below)The excludes and includes object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.includes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "job_type" {
  description = " (Required) The schedule for running the job. Valid values are: ONE_TIMERun the job only once. If you specify this value, don't specify a value for the schedule_frequency property. SCHEDULEDRun the job on a daily, weekly, or monthly basis. If you specify this value, use the schedule_frequency property to define the recurrence pattern for the job."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.job_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weekly_schedule" {
  description = " (Optional) Specifies a weekly recurrence pattern for running the job."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.weekly_schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_criterion" {
  description = " (Optional) A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)The simple_criterion object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.tag_criterion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_criteria" {
  description = "(Optional) The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Conflicts with bucket_definitions. (documented below)"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.bucket_criteria
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "buckets" {
  description = " (Required) An array that lists the names of the buckets.scoping Configuration BlockThe scoping object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.buckets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = " The date and time, in UTC and extended RFC 3339 format, when the job was created."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "monthly_schedule" {
  description = " (Optional) Specifies a monthly recurrence pattern for running the job.The s3_job_definition object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.monthly_schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = " (Optional) A custom name for the job. The name can contain as many as 500 characters. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = " (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sampling_percentage" {
  description = " (Optional) The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.sampling_percentage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = " (Required) The unique identifier for the AWS account that owns the buckets."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique identifier (ID) of the macie classification job."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "initial_run" {
  description = " (Optional) Specifies whether to analyze all existing, eligible objects immediately after the job is created."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.initial_run
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_scope_term" {
  description = " (Optional) A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)The simple_scope_term object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.tag_scope_term
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_definitions" {
  description = " (Optional) An array of objects, one for each AWS account that owns buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for the account. Conflicts with bucket_criteria. (documented below)"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.bucket_definitions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_job_definition" {
  description = " (Optional) The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.s3_job_definition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schedule_frequency" {
  description = " (Optional) The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the job_type property to ONE_TIME. (documented below)"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.schedule_frequency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scoping" {
  description = " (Optional) The property- and tag-based conditions that determine which objects to include or exclude from the analysis. (documented below)bucket_criteria Configuration BlockThe bucket_criteria object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.scoping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = " (Optional) A map of key-value pairs that specifies the tags to associate with the job. A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "excludes" {
  description = " (Optional) The property- or tag-based conditions that determine which objects to exclude from the analysis. (documented below)"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.excludes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "job_status" {
  description = " (Optional) The status for the job. Valid values are: CANCELLED, RUNNING and USER_PAUSEDThe schedule_frequency object supports the following:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.job_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "simple_criterion" {
  description = " (Optional) A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.simple_criterion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_values" {
  description = " (Optional) The tag keys or tag key and value pairs to use in the condition."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.tag_values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_data_identifier_ids" {
  description = " (Optional) The custom data identifiers to use for data analysis and classification."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.custom_data_identifier_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = " (Required) The tag key to use in the condition. The only valid value is TAG."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "simple_scope_term" {
  description = " (Optional) A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.simple_scope_term
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target" {
  description = " (Required) The type of object to apply the condition to. The only valid value is S3_OBJECT.In addition to all arguments above, the following attributes are exported:"
  value       = aws_macie2_classification_job.aws_macie2_classification_job.target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = " (Optional) An array that lists the values to use in the condition."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = " The date and time, in UTC and extended RFC 3339 format, when the job was created."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique identifier (ID) of the macie classification job."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_paused_details" {
  description = "If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for job-status is USER_PAUSED."
  value       = aws_macie2_classification_job.aws_macie2_classification_job.user_paused_details
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
      "kind/name"                   = "aws_macie2_classification_job"
      "kind/version"                = "v0.1.0"
    }
  }
}