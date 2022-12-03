resource "aws_elb" "aws_elb" {
  bucket_prefix               = var.bucket_prefix
  dns_name                    = var.dns_name
  enabled                     = var.enabled
  healthy_threshold           = var.healthy_threshold
  name                        = var.name
  connection_draining_timeout = var.connection_draining_timeout
  HTTP                        = var.HTTP
  TCP                         = var.TCP
  idle_timeout                = var.idle_timeout
  source_security_group       = var.source_security_group
  zone_id                     = var.zone_id
  source_security_group_id    = var.source_security_group_id
  access_logs                 = var.access_logs
  arn                         = var.arn
  health_check                = var.health_check
  id                          = var.id
  instances                   = var.instances
  interval                    = var.interval
  lb_port                     = var.lb_port
  subnets                     = var.subnets
  target                      = var.target
  availability_zones          = var.availability_zones
  cross_zone_load_balancing   = var.cross_zone_load_balancing
  desync_mitigation_mode      = var.desync_mitigation_mode
  listener                    = var.listener
  security_groups             = var.security_groups
  bucket                      = var.bucket
  tags                        = var.tags
  unhealthy_threshold         = var.unhealthy_threshold
  instance_port               = var.instance_port
  instance_protocol           = var.instance_protocol
  lb_protocol                 = var.lb_protocol
  name_prefix                 = var.name_prefix
  connection_draining         = var.connection_draining
  internal                    = var.internal
  ssl_certificate_id          = var.ssl_certificate_id
  timeout                     = var.timeout
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "HTTP" {
  description = ", HTTPSPORT and PATH are required"
  type        = string
}
variable "TCP" {
  description = ", SSLPORT is required, PATH is not supported"
  type        = string
}
variable "idle_timeout" {
  description = "(Optional) The time in seconds that the connection is allowed to be idle. Default: 60"
  type        = string
  default     = ""
}
variable "source_security_group" {
  description = "The name of the security group that you can use as\npart of your inbound rules for your load balancer's back-end application\ninstances. Use this for Classic or Default VPC only."
  type        = string
}
variable "zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  type        = string
}
variable "interval" {
  description = "(Required) The interval between checks."
  type        = string
}
variable "lb_port" {
  description = "(Required) The port to listen on for the load balancer"
  type        = string
}
variable "source_security_group_id" {
  description = "The ID of the security group that you can use as\npart of your inbound rules for your load balancer's back-end application\ninstances. Only available on ELBs launched in a VPC."
  type        = string
}
variable "access_logs" {
  description = "(Optional) An Access Logs block. Access Logs documented below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the ELB"
  type        = string
}
variable "health_check" {
  description = "(Optional) A health_check block. Health Check documented below."
  type        = string
  default     = ""
}
variable "id" {
  description = "The name of the ELB"
  type        = string
}
variable "instances" {
  description = "The list of instances in the ELB"
  type        = string
}
variable "subnets" {
  description = "(Required for a VPC ELB) A list of subnet IDs to attach to the ELB."
  type        = string
}
variable "target" {
  description = "(Required) The target of the check. Valid pattern is \"$${PROTOCOL}:$${PORT}$${PATH}\", where PROTOCOL\nvalues are:\n"
  type        = string
}
variable "availability_zones" {
  description = "(Required for an EC2-classic ELB) The AZ's to serve traffic in."
  type        = string
}
variable "cross_zone_load_balancing" {
  description = "(Optional) Enable cross-zone load balancing. Default: true"
  type        = string
  default     = ""
}
variable "desync_mitigation_mode" {
  description = "(Optional) Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are monitor, defensive (default), strictest."
  type        = string
  default     = ""
}
variable "listener" {
  description = "(Required) A list of listener blocks. Listeners documented below."
  type        = string
}
variable "security_groups" {
  description = "(Optional) A list of security group IDs to assign to the ELB.\nOnly valid if creating an ELB within a VPC"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) The S3 bucket name to store the logs in."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Exactly one of availability_zones or subnetsAccess Logs (access_logs) support the following:"
  type        = string
  default     = ""
}
variable "unhealthy_threshold" {
  description = "(Required) The number of checks before the instance is declared unhealthy."
  type        = string
}
variable "instance_port" {
  description = "(Required) The port on the instance to route to"
  type        = string
}
variable "instance_protocol" {
  description = "(Required) The protocol to use to the instance. Valid\nvalues are HTTP, HTTPS, TCP, or SSL"
  type        = string
}
variable "lb_protocol" {
  description = "(Required) The protocol to listen on. Valid values are HTTPHTTPS, TCP, or SSL"
  type        = string
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  type        = string
}
variable "connection_draining" {
  description = "(Optional) Boolean to enable connection draining. Default: false"
  type        = string
  default     = ""
}
variable "internal" {
  description = "(Optional) If true, ELB will be an internal ELB."
  type        = string
  default     = ""
}
variable "ssl_certificate_id" {
  description = "(Optional) The ARN of an SSL certificate you have\nuploaded to AWS IAM. strongNote ECDSA-specific restrictions below.  Only valid when lb_protocol is either HTTPS or SSLHealth Check (health_check) supports the following:"
  type        = string
  default     = ""
}
variable "timeout" {
  description = "(Required) The length of time before the check times out.Note on ECDSA Key AlgorithmIf the ARN of the ssl_certificate_idERR_SSL_VERSION_OR_CIPHER_MISMATCHIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "bucket_prefix" {
  description = "(Optional) The S3 bucket prefix. Logs are stored in the root if not configured."
  type        = string
  default     = ""
}
variable "dns_name" {
  description = "The DNS name of the ELB"
  type        = string
}
variable "enabled" {
  description = "(Optional) Boolean to enable / disable access_logs. Default is trueListeners (listener) support the following:"
  type        = string
  default     = ""
}
variable "healthy_threshold" {
  description = "(Required) The number of checks before the instance is declared healthy."
  type        = string
}
variable "name" {
  description = "The name of the ELB"
  type        = string
}
variable "connection_draining_timeout" {
  description = "(Optional) The time in seconds to allow for connections to drain. Default: 300"
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
output "connection_draining_timeout" {
  description = "(Optional) The time in seconds to allow for connections to drain. Default: 300"
  value       = aws_elb.aws_elb.connection_draining_timeout
}
output "TCP" {
  description = ", SSLPORT is required, PATH is not supported"
  value       = aws_elb.aws_elb.TCP
}
output "idle_timeout" {
  description = "(Optional) The time in seconds that the connection is allowed to be idle. Default: 60"
  value       = aws_elb.aws_elb.idle_timeout
}
output "source_security_group" {
  description = "The name of the security group that you can use as\npart of your inbound rules for your load balancer's back-end application\ninstances. Use this for Classic or Default VPC only."
  value       = aws_elb.aws_elb.source_security_group
}
output "zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = aws_elb.aws_elb.zone_id
}
output "HTTP" {
  description = ", HTTPSPORT and PATH are required"
  value       = aws_elb.aws_elb.HTTP
}
output "arn" {
  description = "The ARN of the ELB"
  value       = aws_elb.aws_elb.arn
}
output "health_check" {
  description = "(Optional) A health_check block. Health Check documented below."
  value       = aws_elb.aws_elb.health_check
}
output "id" {
  description = "The name of the ELB"
  value       = aws_elb.aws_elb.id
}
output "instances" {
  description = "The list of instances in the ELB"
  value       = aws_elb.aws_elb.instances
}
output "interval" {
  description = "(Required) The interval between checks."
  value       = aws_elb.aws_elb.interval
}
output "lb_port" {
  description = "(Required) The port to listen on for the load balancer"
  value       = aws_elb.aws_elb.lb_port
}
output "source_security_group_id" {
  description = "The ID of the security group that you can use as\npart of your inbound rules for your load balancer's back-end application\ninstances. Only available on ELBs launched in a VPC."
  value       = aws_elb.aws_elb.source_security_group_id
}
output "access_logs" {
  description = "(Optional) An Access Logs block. Access Logs documented below."
  value       = aws_elb.aws_elb.access_logs
}
output "target" {
  description = "(Required) The target of the check. Valid pattern is \"$${PROTOCOL}:$${PORT}$${PATH}\", where PROTOCOL\nvalues are:\n"
  value       = aws_elb.aws_elb.target
}
output "subnets" {
  description = "(Required for a VPC ELB) A list of subnet IDs to attach to the ELB."
  value       = aws_elb.aws_elb.subnets
}
output "cross_zone_load_balancing" {
  description = "(Optional) Enable cross-zone load balancing. Default: true"
  value       = aws_elb.aws_elb.cross_zone_load_balancing
}
output "desync_mitigation_mode" {
  description = "(Optional) Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are monitor, defensive (default), strictest."
  value       = aws_elb.aws_elb.desync_mitigation_mode
}
output "listener" {
  description = "(Required) A list of listener blocks. Listeners documented below."
  value       = aws_elb.aws_elb.listener
}
output "security_groups" {
  description = "(Optional) A list of security group IDs to assign to the ELB.\nOnly valid if creating an ELB within a VPC"
  value       = aws_elb.aws_elb.security_groups
}
output "availability_zones" {
  description = "(Required for an EC2-classic ELB) The AZ's to serve traffic in."
  value       = aws_elb.aws_elb.availability_zones
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Exactly one of availability_zones or subnetsAccess Logs (access_logs) support the following:"
  value       = aws_elb.aws_elb.tags
}
output "unhealthy_threshold" {
  description = "(Required) The number of checks before the instance is declared unhealthy."
  value       = aws_elb.aws_elb.unhealthy_threshold
}
output "bucket" {
  description = "(Required) The S3 bucket name to store the logs in."
  value       = aws_elb.aws_elb.bucket
}
output "instance_protocol" {
  description = "(Required) The protocol to use to the instance. Valid\nvalues are HTTP, HTTPS, TCP, or SSL"
  value       = aws_elb.aws_elb.instance_protocol
}
output "lb_protocol" {
  description = "(Required) The protocol to listen on. Valid values are HTTPHTTPS, TCP, or SSL"
  value       = aws_elb.aws_elb.lb_protocol
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  value       = aws_elb.aws_elb.name_prefix
}
output "instance_port" {
  description = "(Required) The port on the instance to route to"
  value       = aws_elb.aws_elb.instance_port
}
output "internal" {
  description = "(Optional) If true, ELB will be an internal ELB."
  value       = aws_elb.aws_elb.internal
}
output "ssl_certificate_id" {
  description = "(Optional) The ARN of an SSL certificate you have\nuploaded to AWS IAM. strongNote ECDSA-specific restrictions below.  Only valid when lb_protocol is either HTTPS or SSLHealth Check (health_check) supports the following:"
  value       = aws_elb.aws_elb.ssl_certificate_id
}
output "timeout" {
  description = "(Required) The length of time before the check times out.Note on ECDSA Key AlgorithmIf the ARN of the ssl_certificate_idERR_SSL_VERSION_OR_CIPHER_MISMATCHIn addition to all arguments above, the following attributes are exported:"
  value       = aws_elb.aws_elb.timeout
}
output "connection_draining" {
  description = "(Optional) Boolean to enable connection draining. Default: false"
  value       = aws_elb.aws_elb.connection_draining
}
output "dns_name" {
  description = "The DNS name of the ELB"
  value       = aws_elb.aws_elb.dns_name
}
output "enabled" {
  description = "(Optional) Boolean to enable / disable access_logs. Default is trueListeners (listener) support the following:"
  value       = aws_elb.aws_elb.enabled
}
output "healthy_threshold" {
  description = "(Required) The number of checks before the instance is declared healthy."
  value       = aws_elb.aws_elb.healthy_threshold
}
output "name" {
  description = "The name of the ELB"
  value       = aws_elb.aws_elb.name
}
output "bucket_prefix" {
  description = "(Optional) The S3 bucket prefix. Logs are stored in the root if not configured."
  value       = aws_elb.aws_elb.bucket_prefix
}
output "dns_name" {
  description = "The DNS name of the ELB"
  value       = aws_elb.aws_elb.dns_name
}
output "instances" {
  description = "The list of instances in the ELB"
  value       = aws_elb.aws_elb.instances
}
output "name" {
  description = "The name of the ELB"
  value       = aws_elb.aws_elb.name
}
output "source_security_group_id" {
  description = "The ID of the security group that you can use as\npart of your inbound rules for your load balancer's back-end application\ninstances. Only available on ELBs launched in a VPC."
  value       = aws_elb.aws_elb.source_security_group_id
}
output "arn" {
  description = "The ARN of the ELB"
  value       = aws_elb.aws_elb.arn
}
output "id" {
  description = "The name of the ELB"
  value       = aws_elb.aws_elb.id
}
output "source_security_group" {
  description = "The name of the security group that you can use as\npart of your inbound rules for your load balancer's back-end application\ninstances. Use this for Classic or Default VPC only."
  value       = aws_elb.aws_elb.source_security_group
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_elb.aws_elb.tags_all
}
output "zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = aws_elb.aws_elb.zone_id
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
      "kind/name"                   = "aws_elb"
      "kind/version"                = "v0.1.0"
    }
  }
}
