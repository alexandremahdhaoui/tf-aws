datasource "aws_outposts_assets" "aws_outposts_assets" {
  arn              = var.arn
  host_id_filter   = var.host_id_filter
  status_id_filter = var.status_id_filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) Outpost ARN."
  type        = string
}
variable "host_id_filter" {
  description = "(Optional) Filters by list of Host IDs of a Dedicated Host."
  type        = string
  default     = ""
}
variable "status_id_filter" {
  description = "(Optional) Filters by list of state status. Valid values: \"ACTIVE\", \"RETIRING\".Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "arn" {
  description = "(Required) Outpost ARN."
  value       = aws_outposts_assets.aws_outposts_assets.arn
}
output "host_id_filter" {
  description = "(Optional) Filters by list of Host IDs of a Dedicated Host."
  value       = aws_outposts_assets.aws_outposts_assets.host_id_filter
}
output "status_id_filter" {
  description = "(Optional) Filters by list of state status. Valid values: \"ACTIVE\", \"RETIRING\".Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_assets.aws_outposts_assets.status_id_filter
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
}
