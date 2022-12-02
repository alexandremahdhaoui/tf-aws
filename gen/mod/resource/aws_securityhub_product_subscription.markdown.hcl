resource "aws_securityhub_product_subscription.markdown" "aws_securityhub_product_subscription.markdown" {
  arn:aws:securityhub:${var.region}::product/barracuda/cloudsecurityguardian         = var.arn:aws:securityhub:${var.region}::product/barracuda/cloudsecurityguardian
  arn:aws:securityhub:${var.region}::product/paloaltonetworks/redlock                = var.arn:aws:securityhub:${var.region}::product/paloaltonetworks/redlock
  arn:aws:securityhub:${var.region}::product/alertlogic/althreatmanagement           = var.arn:aws:securityhub:${var.region}::product/alertlogic/althreatmanagement
  arn:aws:securityhub:${var.region}::product/aws/inspector                           = var.arn:aws:securityhub:${var.region}::product/aws/inspector
  arn:aws:securityhub:${var.region}::product/fortinet/fortigate                      = var.arn:aws:securityhub:${var.region}::product/fortinet/fortigate
  arn:aws:securityhub:${var.region}::product/aws/macie                               = var.arn:aws:securityhub:${var.region}::product/aws/macie
  arn:aws:securityhub:${var.region}::product/guardicore/aws-infection-monkey         = var.arn:aws:securityhub:${var.region}::product/guardicore/aws-infection-monkey
  arn:aws:securityhub:${var.region}::product/qualys/qualys-vm                        = var.arn:aws:securityhub:${var.region}::product/qualys/qualys-vm
  arn:aws:securityhub:${var.region}::product/splunk/splunk-enterprise                = var.arn:aws:securityhub:${var.region}::product/splunk/splunk-enterprise
  arn:aws:securityhub:${var.region}::product/twistlock/twistlock-enterprise          = var.arn:aws:securityhub:${var.region}::product/twistlock/twistlock-enterprise
  arn:aws:securityhub:${var.region}::product/symantec-corp/symantec-cwp              = var.arn:aws:securityhub:${var.region}::product/symantec-corp/symantec-cwp
  arn:aws:securityhub:${var.region}::product/armordefense/armoranywhere              = var.arn:aws:securityhub:${var.region}::product/armordefense/armoranywhere
  arn:aws:securityhub:${var.region}::product/aws/guardduty                           = var.arn:aws:securityhub:${var.region}::product/aws/guardduty
  arn:aws:securityhub:${var.region}::product/crowdstrike/crowdstrike-falcon          = var.arn:aws:securityhub:${var.region}::product/crowdstrike/crowdstrike-falcon
  arn:aws:securityhub:${var.region}::product/cyberark/cyberark-pta                   = var.arn:aws:securityhub:${var.region}::product/cyberark/cyberark-pta
  arn:aws:securityhub:${var.region}::product/rapid7/insightvm                        = var.arn:aws:securityhub:${var.region}::product/rapid7/insightvm
  arn:aws:securityhub:${var.region}::product/sumologicinc/sumologic-mda              = var.arn:aws:securityhub:${var.region}::product/sumologicinc/sumologic-mda
  arn:aws:securityhub:${var.region}::product/qualys/qualys-pc                        = var.arn:aws:securityhub:${var.region}::product/qualys/qualys-pc
  arn:aws:securityhub:${var.region}::product/turbot/turbot                           = var.arn:aws:securityhub:${var.region}::product/turbot/turbot
  product_arn                                                                        = var.product_arn
  arn:aws:securityhub:${var.region}::product/checkpoint/cloudguard-iaas              = var.arn:aws:securityhub:${var.region}::product/checkpoint/cloudguard-iaas
  arn:aws:securityhub:${var.region}::product/checkpoint/dome9-arc                    = var.arn:aws:securityhub:${var.region}::product/checkpoint/dome9-arc
  arn:aws:securityhub:${var.region}::product/imperva/imperva-attack-analytics        = var.arn:aws:securityhub:${var.region}::product/imperva/imperva-attack-analytics
  arn:aws:securityhub:${var.region}::product/mcafee-skyhigh/mcafee-mvision-cloud-aws = var.arn:aws:securityhub:${var.region}::product/mcafee-skyhigh/mcafee-mvision-cloud-aws
  arn:aws:securityhub:${var.region}::product/paloaltonetworks/vm-series              = var.arn:aws:securityhub:${var.region}::product/paloaltonetworks/vm-series
  arn:aws:securityhub:${var.region}::product/sophos/sophos-server-protection         = var.arn:aws:securityhub:${var.region}::product/sophos/sophos-server-protection
  arn:aws:securityhub:${var.region}::product/f5networks/f5-advanced-waf              = var.arn:aws:securityhub:${var.region}::product/f5networks/f5-advanced-waf
  arn:aws:securityhub:${var.region}::product/ibm/qradar-siem                         = var.arn:aws:securityhub:${var.region}::product/ibm/qradar-siem
  arn:aws:securityhub:${var.region}::product/tenable/tenable-io                      = var.arn:aws:securityhub:${var.region}::product/tenable/tenable-io
  arn:aws:securityhub:${var.region}::product/guardicore/guardicore                   = var.arn:aws:securityhub:${var.region}::product/guardicore/guardicore
  arn:aws:securityhub:${var.region}::product/splunk/splunk-phantom                   = var.arn:aws:securityhub:${var.region}::product/splunk/splunk-phantom
  arn:aws:securityhub:${var.region}::product/trend-micro/deep-security               = var.arn:aws:securityhub:${var.region}::product/trend-micro/deep-security
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/guardicore/guardicore" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/splunk/splunk-phantom" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/trend-micro/deep-security" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/barracuda/cloudsecurityguardian" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/paloaltonetworks/redlock" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/alertlogic/althreatmanagement" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/aws/inspector" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/fortinet/fortigate" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/aws/macie" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/guardicore/aws-infection-monkey" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/qualys/qualys-vm" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/splunk/splunk-enterprise" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/twistlock/twistlock-enterprise" {
  description = "In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/symantec-corp/symantec-cwp" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/armordefense/armoranywhere" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/aws/guardduty" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/crowdstrike/crowdstrike-falcon" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/cyberark/cyberark-pta" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/rapid7/insightvm" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/sumologicinc/sumologic-mda" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/qualys/qualys-pc" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/turbot/turbot" {
  description = ""
  type        = string
}
variable "product_arn" {
  description = "(Required) The ARN of the product that generates findings that you want to import into Security Hub - see below.Amazon maintains a list of Product integrations in AWS Security Hub that changes over time. Any of the products on the linked Available AWS service integrations or Available third-party partner product integrations can be configured using aws_securityhub_product_subscription.Available products can also be listed by running the AWS CLI command aws securityhub describe-products.A subset of currently available products (remember to replace $${var.region} as appropriate) includes:"
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/checkpoint/cloudguard-iaas" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/checkpoint/dome9-arc" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/imperva/imperva-attack-analytics" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/mcafee-skyhigh/mcafee-mvision-cloud-aws" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/paloaltonetworks/vm-series" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/sophos/sophos-server-protection" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/f5networks/f5-advanced-waf" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/ibm/qradar-siem" {
  description = ""
  type        = string
}
variable "arn:aws:securityhub:$${var.region}::product/tenable/tenable-io" {
  description = ""
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
output "arn:aws:securityhub:$${var.region}::product/qualys/qualys-pc" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/qualys/qualys-pc
}
output "arn:aws:securityhub:$${var.region}::product/turbot/turbot" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/turbot/turbot
}
output "product_arn" {
  description = "(Required) The ARN of the product that generates findings that you want to import into Security Hub - see below.Amazon maintains a list of Product integrations in AWS Security Hub that changes over time. Any of the products on the linked Available AWS service integrations or Available third-party partner product integrations can be configured using aws_securityhub_product_subscription.Available products can also be listed by running the AWS CLI command aws securityhub describe-products.A subset of currently available products (remember to replace $${var.region} as appropriate) includes:"
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.product_arn
}
output "arn:aws:securityhub:$${var.region}::product/paloaltonetworks/vm-series" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/paloaltonetworks/vm-series
}
output "arn:aws:securityhub:$${var.region}::product/sophos/sophos-server-protection" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/sophos/sophos-server-protection
}
output "arn:aws:securityhub:$${var.region}::product/checkpoint/cloudguard-iaas" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/checkpoint/cloudguard-iaas
}
output "arn:aws:securityhub:$${var.region}::product/checkpoint/dome9-arc" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/checkpoint/dome9-arc
}
output "arn:aws:securityhub:$${var.region}::product/imperva/imperva-attack-analytics" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/imperva/imperva-attack-analytics
}
output "arn:aws:securityhub:$${var.region}::product/mcafee-skyhigh/mcafee-mvision-cloud-aws" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/mcafee-skyhigh/mcafee-mvision-cloud-aws
}
output "arn:aws:securityhub:$${var.region}::product/f5networks/f5-advanced-waf" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/f5networks/f5-advanced-waf
}
output "arn:aws:securityhub:$${var.region}::product/ibm/qradar-siem" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/ibm/qradar-siem
}
output "arn:aws:securityhub:$${var.region}::product/tenable/tenable-io" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/tenable/tenable-io
}
output "arn:aws:securityhub:$${var.region}::product/guardicore/guardicore" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/guardicore/guardicore
}
output "arn:aws:securityhub:$${var.region}::product/splunk/splunk-phantom" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/splunk/splunk-phantom
}
output "arn:aws:securityhub:$${var.region}::product/trend-micro/deep-security" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/trend-micro/deep-security
}
output "arn:aws:securityhub:$${var.region}::product/barracuda/cloudsecurityguardian" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/barracuda/cloudsecurityguardian
}
output "arn:aws:securityhub:$${var.region}::product/paloaltonetworks/redlock" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/paloaltonetworks/redlock
}
output "arn:aws:securityhub:$${var.region}::product/alertlogic/althreatmanagement" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/alertlogic/althreatmanagement
}
output "arn:aws:securityhub:$${var.region}::product/aws/inspector" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/aws/inspector
}
output "arn:aws:securityhub:$${var.region}::product/fortinet/fortigate" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/fortinet/fortigate
}
output "arn:aws:securityhub:$${var.region}::product/twistlock/twistlock-enterprise" {
  description = "In addition to all arguments above, the following attributes are exported:"
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/twistlock/twistlock-enterprise
}
output "arn:aws:securityhub:$${var.region}::product/aws/macie" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/aws/macie
}
output "arn:aws:securityhub:$${var.region}::product/guardicore/aws-infection-monkey" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/guardicore/aws-infection-monkey
}
output "arn:aws:securityhub:$${var.region}::product/qualys/qualys-vm" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/qualys/qualys-vm
}
output "arn:aws:securityhub:$${var.region}::product/splunk/splunk-enterprise" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/splunk/splunk-enterprise
}
output "arn:aws:securityhub:$${var.region}::product/rapid7/insightvm" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/rapid7/insightvm
}
output "arn:aws:securityhub:$${var.region}::product/sumologicinc/sumologic-mda" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/sumologicinc/sumologic-mda
}
output "arn:aws:securityhub:$${var.region}::product/symantec-corp/symantec-cwp" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/symantec-corp/symantec-cwp
}
output "arn:aws:securityhub:$${var.region}::product/armordefense/armoranywhere" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/armordefense/armoranywhere
}
output "arn:aws:securityhub:$${var.region}::product/aws/guardduty" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/aws/guardduty
}
output "arn:aws:securityhub:$${var.region}::product/crowdstrike/crowdstrike-falcon" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/crowdstrike/crowdstrike-falcon
}
output "arn:aws:securityhub:$${var.region}::product/cyberark/cyberark-pta" {
  description = ""
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn:aws:securityhub:${var.region}::product/cyberark/cyberark-pta
}
output "arn" {
  description = "The ARN of a resource that represents your subscription to the product that generates the findings that you want to import into Security Hub."
  value       = aws_securityhub_product_subscription.markdown.aws_securityhub_product_subscription.markdown.arn
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
      "kind/name"                   = "aws_securityhub_product_subscription.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
