resource "aws_guardduty_organization_configuration" "aws_guardduty_organization_configuration" {
  datasources                     = var.datasources
  enable                          = var.enable
  kubernetes                      = var.kubernetes
  malware_protection              = var.malware_protection
  scan_ec2_instance_with_findings = var.scan_ec2_instance_with_findings
  audit_logs                      = var.audit_logs
  auto_enable                     = var.auto_enable
  detector_id                     = var.detector_id
  ebs_volumes                     = var.ebs_volumes
  s3_logs                         = var.s3_logs
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "auto_enable" {
  description = "(Required) If true, enables Malware Protectiontrue.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "detector_id" {
  description = "(Required) The detector ID of the GuardDuty account."
  type        = string
}
variable "ebs_volumes" {
  description = "EBS volumes below for more details.EBS volumesThe ebs_volumes block supports the following:"
  type        = string
}
variable "s3_logs" {
  description = "(Optional) Enable S3 Protection automatically for new member accounts."
  type        = string
  default     = ""
}
variable "audit_logs" {
  description = "(Required) Enable Kubernetes Audit Logs Monitoring automatically for new member accounts. Kubernetes protectionKubernetes Audit Logs below for more details.Kubernetes Audit LogsThe audit_logs block supports the following:"
  type        = string
}
variable "enable" {
  description = "(Required) If true, enables Kubernetes audit logs as a data source for Kubernetes protectiontrue.Malware Protectionmalware_protection block supports the following:"
  type        = string
}
variable "kubernetes" {
  description = "(Optional) Enable Kubernetes Audit Logs Monitoring automatically for new member accounts."
  type        = string
  default     = ""
}
variable "malware_protection" {
  description = "(Optional) Enable Malware Protection automatically for new member accounts.S3 Logss3_logs block supports the following:"
  type        = string
  default     = ""
}
variable "scan_ec2_instance_with_findings" {
  description = "(Required) Configure whether Malware ProtectionScan EC2 instance with findings below for more details.Scan EC2 instance with findingsThe scan_ec2_instance_with_findings block supports the following:"
  type        = string
}
variable "datasources" {
  description = "(Optional) Configuration for the collected datasources.datasources supports the following:"
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
output "datasources" {
  description = "(Optional) Configuration for the collected datasources.datasources supports the following:"
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.datasources
}
output "enable" {
  description = "(Required) If true, enables Kubernetes audit logs as a data source for Kubernetes protectiontrue.Malware Protectionmalware_protection block supports the following:"
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.enable
}
output "kubernetes" {
  description = "(Optional) Enable Kubernetes Audit Logs Monitoring automatically for new member accounts."
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.kubernetes
}
output "malware_protection" {
  description = "(Optional) Enable Malware Protection automatically for new member accounts.S3 Logss3_logs block supports the following:"
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.malware_protection
}
output "scan_ec2_instance_with_findings" {
  description = "(Required) Configure whether Malware ProtectionScan EC2 instance with findings below for more details.Scan EC2 instance with findingsThe scan_ec2_instance_with_findings block supports the following:"
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.scan_ec2_instance_with_findings
}
output "audit_logs" {
  description = "(Required) Enable Kubernetes Audit Logs Monitoring automatically for new member accounts. Kubernetes protectionKubernetes Audit Logs below for more details.Kubernetes Audit LogsThe audit_logs block supports the following:"
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.audit_logs
}
output "auto_enable" {
  description = "(Required) If true, enables Malware Protectiontrue.In addition to all arguments above, the following attributes are exported:"
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.auto_enable
}
output "detector_id" {
  description = "(Required) The detector ID of the GuardDuty account."
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.detector_id
}
output "ebs_volumes" {
  description = "EBS volumes below for more details.EBS volumesThe ebs_volumes block supports the following:"
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.ebs_volumes
}
output "s3_logs" {
  description = "(Optional) Enable S3 Protection automatically for new member accounts."
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.s3_logs
}
output "id" {
  description = "Identifier of the GuardDuty Detector."
  value       = aws_guardduty_organization_configuration.aws_guardduty_organization_configuration.id
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
      "kind/name"                   = "aws_guardduty_organization_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
