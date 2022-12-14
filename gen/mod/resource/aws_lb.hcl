resource "aws_lb" "aws_lb" {
  subnets                          = var.subnets
  access_logs                      = var.access_logs
  customer_owned_ipv4_pool         = var.customer_owned_ipv4_pool
  drop_invalid_header_fields       = var.drop_invalid_header_fields
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_deletion_protection       = var.enable_deletion_protection
  id                               = var.id
  name                             = var.name
  subnet_mapping.*.outpost_id      = var.subnet_mapping.*.outpost_id
  create                           = var.create
  internal                         = var.internal
  prefix                           = var.prefix
  private_ipv4_address             = var.private_ipv4_address
  subnet_id                        = var.subnet_id
  tags_all                         = var.tags_all
  zone_id                          = var.zone_id
  bucket                           = var.bucket
  enable_waf_fail_open             = var.enable_waf_fail_open
  subnet_mapping                   = var.subnet_mapping
  arn_suffix                       = var.arn_suffix
  ipv6_address                     = var.ipv6_address
  load_balancer_type               = var.load_balancer_type
  security_groups                  = var.security_groups
  update                           = var.update
  arn                              = var.arn
  ip_address_type                  = var.ip_address_type
  enable_http2                     = var.enable_http2
  enabled                          = var.enabled
  idle_timeout                     = var.idle_timeout
  preserve_host_header             = var.preserve_host_header
  tags                             = var.tags
  desync_mitigation_mode           = var.desync_mitigation_mode
  dns_name                         = var.dns_name
  name_prefix                      = var.name_prefix
  allocation_id                    = var.allocation_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "zone_id" {
  description = "The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record)."
  type        = string
}
variable "bucket" {
  description = "(Required) The S3 bucket name to store the logs in."
  type        = string
}
variable "internal" {
  description = "(Optional) If true, the LB will be internal."
  type        = string
  default     = ""
}
variable "prefix" {
  description = "(Optional) The S3 bucket prefix. Logs are stored in the root if not configured."
  type        = string
  default     = ""
}
variable "private_ipv4_address" {
  description = "(Optional) A private ipv4 address within the subnet to assign to the internal-facing load balancer."
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Required) ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "arn_suffix" {
  description = "The ARN suffix for use with CloudWatch Metrics."
  type        = string
}
variable "enable_waf_fail_open" {
  description = "(Optional) Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to false."
  type        = string
  default     = ""
}
variable "subnet_mapping" {
  description = "(Optional) A subnet mapping block as documented below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the load balancer (matches id)."
  type        = string
}
variable "ipv6_address" {
  description = "(Optional) An ipv6 address within the subnet to assign to the internet-facing load balancer.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "load_balancer_type" {
  description = "(Optional) The type of load balancer to create. Possible values are application, gateway, or network. The default value is application."
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Optional) A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "enable_http2" {
  description = "(Optional) Indicates whether HTTP/2 is enabled in application load balancers. Defaults to true."
  type        = string
  default     = ""
}
variable "ip_address_type" {
  description = "(Optional) The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack"
  type        = string
  default     = ""
}
variable "desync_mitigation_mode" {
  description = "(Optional) Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are monitor, defensive (default), strictest."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Boolean to enable / disable access_logs. Defaults to false, even when bucket is specified.Subnet Mapping (subnet_mapping) blocks support the following:"
  type        = string
  default     = ""
}
variable "idle_timeout" {
  description = "(Optional) The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application. Default: 60."
  type        = string
  default     = ""
}
variable "preserve_host_header" {
  description = "(Optional) Indicates whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. Defaults to false."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Access Logs (access_logs) support the following:"
  type        = string
  default     = ""
}
variable "allocation_id" {
  description = "(Optional) The allocation ID of the Elastic IP address."
  type        = string
  default     = ""
}
variable "dns_name" {
  description = "The DNS name of the load balancer."
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "access_logs" {
  description = "(Optional) An Access Logs block. Access Logs documented below."
  type        = string
  default     = ""
}
variable "subnets" {
  description = "(Optional) A list of subnet IDs to attach to the LB. Subnets\ncannot be updated for Load Balancers of type networknetwork will force a recreation of the resource."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters,\nmust contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified,\nTerraform will autogenerate a name beginning with tf-lb."
  type        = string
  default     = ""
}
variable "subnet_mapping.*.outpost_id" {
  description = "ID of the Outpost containing the load balancer.TimeoutsConfiguration options:"
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "customer_owned_ipv4_pool" {
  description = "(Optional) The ID of the customer owned ipv4 pool to use for this load balancer."
  type        = string
  default     = ""
}
variable "drop_invalid_header_fields" {
  description = "(Optional) Indicates whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type application."
  type        = string
  default     = ""
}
variable "enable_cross_zone_load_balancing" {
  description = "(Optional) If true, cross-zone load balancing of the load balancer will be enabled.\nThis is a network load balancer feature. Defaults to false."
  type        = string
  default     = ""
}
variable "enable_deletion_protection" {
  description = "(Optional) If true, deletion of the load balancer will be disabled via\nthe AWS API. This will prevent Terraform from deleting the load balancer. Defaults to false."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ARN of the load balancer (matches arn)."
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
output "allocation_id" {
  description = "(Optional) The allocation ID of the Elastic IP address."
  value       = aws_lb.aws_lb.allocation_id
}
output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.aws_lb.dns_name
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_lb.aws_lb.name_prefix
}
output "access_logs" {
  description = "(Optional) An Access Logs block. Access Logs documented below."
  value       = aws_lb.aws_lb.access_logs
}
output "subnets" {
  description = "(Optional) A list of subnet IDs to attach to the LB. Subnets\ncannot be updated for Load Balancers of type networknetwork will force a recreation of the resource."
  value       = aws_lb.aws_lb.subnets
}
output "enable_deletion_protection" {
  description = "(Optional) If true, deletion of the load balancer will be disabled via\nthe AWS API. This will prevent Terraform from deleting the load balancer. Defaults to false."
  value       = aws_lb.aws_lb.enable_deletion_protection
}
output "id" {
  description = "The ARN of the load balancer (matches arn)."
  value       = aws_lb.aws_lb.id
}
output "name" {
  description = "(Optional) The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters,\nmust contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified,\nTerraform will autogenerate a name beginning with tf-lb."
  value       = aws_lb.aws_lb.name
}
output "subnet_mapping.*.outpost_id" {
  description = "ID of the Outpost containing the load balancer.TimeoutsConfiguration options:"
  value       = aws_lb.aws_lb.subnet_mapping.*.outpost_id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_lb.aws_lb.create
}
output "customer_owned_ipv4_pool" {
  description = "(Optional) The ID of the customer owned ipv4 pool to use for this load balancer."
  value       = aws_lb.aws_lb.customer_owned_ipv4_pool
}
output "drop_invalid_header_fields" {
  description = "(Optional) Indicates whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type application."
  value       = aws_lb.aws_lb.drop_invalid_header_fields
}
output "enable_cross_zone_load_balancing" {
  description = "(Optional) If true, cross-zone load balancing of the load balancer will be enabled.\nThis is a network load balancer feature. Defaults to false."
  value       = aws_lb.aws_lb.enable_cross_zone_load_balancing
}
output "subnet_id" {
  description = "(Required) ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone."
  value       = aws_lb.aws_lb.subnet_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lb.aws_lb.tags_all
}
output "zone_id" {
  description = "The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record)."
  value       = aws_lb.aws_lb.zone_id
}
output "bucket" {
  description = "(Required) The S3 bucket name to store the logs in."
  value       = aws_lb.aws_lb.bucket
}
output "internal" {
  description = "(Optional) If true, the LB will be internal."
  value       = aws_lb.aws_lb.internal
}
output "prefix" {
  description = "(Optional) The S3 bucket prefix. Logs are stored in the root if not configured."
  value       = aws_lb.aws_lb.prefix
}
output "private_ipv4_address" {
  description = "(Optional) A private ipv4 address within the subnet to assign to the internal-facing load balancer."
  value       = aws_lb.aws_lb.private_ipv4_address
}
output "arn_suffix" {
  description = "The ARN suffix for use with CloudWatch Metrics."
  value       = aws_lb.aws_lb.arn_suffix
}
output "enable_waf_fail_open" {
  description = "(Optional) Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to false."
  value       = aws_lb.aws_lb.enable_waf_fail_open
}
output "subnet_mapping" {
  description = "(Optional) A subnet mapping block as documented below."
  value       = aws_lb.aws_lb.subnet_mapping
}
output "update" {
  description = "(Default 10m)"
  value       = aws_lb.aws_lb.update
}
output "arn" {
  description = "The ARN of the load balancer (matches id)."
  value       = aws_lb.aws_lb.arn
}
output "ipv6_address" {
  description = "(Optional) An ipv6 address within the subnet to assign to the internet-facing load balancer.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lb.aws_lb.ipv6_address
}
output "load_balancer_type" {
  description = "(Optional) The type of load balancer to create. Possible values are application, gateway, or network. The default value is application."
  value       = aws_lb.aws_lb.load_balancer_type
}
output "security_groups" {
  description = "(Optional) A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application."
  value       = aws_lb.aws_lb.security_groups
}
output "enable_http2" {
  description = "(Optional) Indicates whether HTTP/2 is enabled in application load balancers. Defaults to true."
  value       = aws_lb.aws_lb.enable_http2
}
output "ip_address_type" {
  description = "(Optional) The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack"
  value       = aws_lb.aws_lb.ip_address_type
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Access Logs (access_logs) support the following:"
  value       = aws_lb.aws_lb.tags
}
output "desync_mitigation_mode" {
  description = "(Optional) Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are monitor, defensive (default), strictest."
  value       = aws_lb.aws_lb.desync_mitigation_mode
}
output "enabled" {
  description = "(Optional) Boolean to enable / disable access_logs. Defaults to false, even when bucket is specified.Subnet Mapping (subnet_mapping) blocks support the following:"
  value       = aws_lb.aws_lb.enabled
}
output "idle_timeout" {
  description = "(Optional) The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application. Default: 60."
  value       = aws_lb.aws_lb.idle_timeout
}
output "preserve_host_header" {
  description = "(Optional) Indicates whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. Defaults to false."
  value       = aws_lb.aws_lb.preserve_host_header
}
output "arn_suffix" {
  description = "The ARN suffix for use with CloudWatch Metrics."
  value       = aws_lb.aws_lb.arn_suffix
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_lb.aws_lb.delete
}
output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.aws_lb.dns_name
}
output "id" {
  description = "The ARN of the load balancer (matches arn)."
  value       = aws_lb.aws_lb.id
}
output "subnet_mapping.*.outpost_id" {
  description = "ID of the Outpost containing the load balancer.TimeoutsConfiguration options:"
  value       = aws_lb.aws_lb.subnet_mapping.*.outpost_id
}
output "zone_id" {
  description = "The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record)."
  value       = aws_lb.aws_lb.zone_id
}
output "arn" {
  description = "The ARN of the load balancer (matches id)."
  value       = aws_lb.aws_lb.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_lb.aws_lb.create
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lb.aws_lb.tags_all
}
output "update" {
  description = "(Default 10m)"
  value       = aws_lb.aws_lb.update
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
      "kind/name"                   = "aws_lb"
      "kind/version"                = "v0.1.0"
    }
  }
}
