resource "aws_guardduty_detector" "aws_guardduty_detector" {
  account_id                      = var.account_id
  arn                             = var.arn
  audit_logs                      = var.audit_logs
  malware_protection              = var.malware_protection
  s3_logs                         = var.s3_logs
  scan_ec2_instance_with_findings = var.scan_ec2_instance_with_findings
  datasources                     = var.datasources
  ebs_volumes                     = var.ebs_volumes
  enable                          = var.enable
  finding_publishing_frequency    = var.finding_publishing_frequency
  id                              = var.id
  kubernetes                      = var.kubernetes
  tags                            = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Data SourcesThe datasources block supports the following:"
  type        = string
}
variable "datasources" {
  description = "(Optional) Describes which data sources will be enabled for the detector. See Data Sources below for more details."
  type        = string
}
variable "ebs_volumes" {
  description = "(Required) Configure whether scanning EBS volumes is enabled as data source for the detector for instances with findings.\nSee EBS volumes below for more details.EBS volumesThe ebs_volumes block supports the following:"
  type        = string
}
variable "enable" {
  description = "(Required) If true, enables Malware Protectiontrue.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "finding_publishing_frequency" {
  description = "(Optional) Specifies the frequency of notifications sent for subsequent finding occurrences. If the detector is a GuardDuty member account, the value is determined by the GuardDuty primary account and cannot be modified, otherwise defaults to SIX_HOURS. For standalone and GuardDuty primary accounts, it must be configured in Terraform to enable drift detection. Valid values for standalone and primary accounts: FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS. See AWS Documentation for more information."
  type        = string
}
variable "id" {
  description = "The ID of the GuardDuty detector"
  type        = string
}
variable "kubernetes" {
  description = "(Optional) Configures Kubernetes protectionKubernetes and Kubernetes Audit Logs below for more details."
  type        = string
}
variable "account_id" {
  description = "The AWS account ID of the GuardDuty detector"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the GuardDuty detector"
  type        = string
}
variable "audit_logs" {
  description = "(Required) Configures Kubernetes audit logs as a data source for Kubernetes protectionKubernetes Audit Logs below for more details.Kubernetes Audit LogsThe audit_logs block supports the following:"
  type        = string
}
variable "malware_protection" {
  description = "(Optional) Configures Malware ProtectionMalware Protection, Scan EC2 instance with findings and EBS volumes below for more details.S3 LogsThe s3_logs block supports the following:"
  type        = string
}
variable "s3_logs" {
  description = "(Optional) Configures S3 protectionS3 Logs below for more details."
  type        = string
}
variable "scan_ec2_instance_with_findings" {
  description = "(Required) Configure whether Malware ProtectionScan EC2 instance with findings below for more details.Scan EC2 instance with findingsThe scan_ec2_instance_with_findings block supports the following:"
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
output "id" {
  description = "The ID of the GuardDuty detector"
  value       = aws_guardduty_detector.aws_guardduty_detector.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kubernetes" {
  description = "(Optional) Configures Kubernetes protectionKubernetes and Kubernetes Audit Logs below for more details."
  value       = aws_guardduty_detector.aws_guardduty_detector.kubernetes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Data SourcesThe datasources block supports the following:"
  value       = aws_guardduty_detector.aws_guardduty_detector.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "datasources" {
  description = "(Optional) Describes which data sources will be enabled for the detector. See Data Sources below for more details."
  value       = aws_guardduty_detector.aws_guardduty_detector.datasources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_volumes" {
  description = "(Required) Configure whether scanning EBS volumes is enabled as data source for the detector for instances with findings.\nSee EBS volumes below for more details.EBS volumesThe ebs_volumes block supports the following:"
  value       = aws_guardduty_detector.aws_guardduty_detector.ebs_volumes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable" {
  description = "(Required) If true, enables Malware Protectiontrue.In addition to all arguments above, the following attributes are exported:"
  value       = aws_guardduty_detector.aws_guardduty_detector.enable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "finding_publishing_frequency" {
  description = "(Optional) Specifies the frequency of notifications sent for subsequent finding occurrences. If the detector is a GuardDuty member account, the value is determined by the GuardDuty primary account and cannot be modified, otherwise defaults to SIX_HOURS. For standalone and GuardDuty primary accounts, it must be configured in Terraform to enable drift detection. Valid values for standalone and primary accounts: FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS. See AWS Documentation for more information."
  value       = aws_guardduty_detector.aws_guardduty_detector.finding_publishing_frequency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_logs" {
  description = "(Optional) Configures S3 protectionS3 Logs below for more details."
  value       = aws_guardduty_detector.aws_guardduty_detector.s3_logs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scan_ec2_instance_with_findings" {
  description = "(Required) Configure whether Malware ProtectionScan EC2 instance with findings below for more details.Scan EC2 instance with findingsThe scan_ec2_instance_with_findings block supports the following:"
  value       = aws_guardduty_detector.aws_guardduty_detector.scan_ec2_instance_with_findings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "The AWS account ID of the GuardDuty detector"
  value       = aws_guardduty_detector.aws_guardduty_detector.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the GuardDuty detector"
  value       = aws_guardduty_detector.aws_guardduty_detector.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audit_logs" {
  description = "(Required) Configures Kubernetes audit logs as a data source for Kubernetes protectionKubernetes Audit Logs below for more details.Kubernetes Audit LogsThe audit_logs block supports the following:"
  value       = aws_guardduty_detector.aws_guardduty_detector.audit_logs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "malware_protection" {
  description = "(Optional) Configures Malware ProtectionMalware Protection, Scan EC2 instance with findings and EBS volumes below for more details.S3 LogsThe s3_logs block supports the following:"
  value       = aws_guardduty_detector.aws_guardduty_detector.malware_protection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "The AWS account ID of the GuardDuty detector"
  value       = aws_guardduty_detector.aws_guardduty_detector.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the GuardDuty detector"
  value       = aws_guardduty_detector.aws_guardduty_detector.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the GuardDuty detector"
  value       = aws_guardduty_detector.aws_guardduty_detector.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_guardduty_detector.aws_guardduty_detector.tags_all
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
      "kind/name"                   = "aws_guardduty_detector"
      "kind/version"                = "v0.1.0"
    }
  }
}
