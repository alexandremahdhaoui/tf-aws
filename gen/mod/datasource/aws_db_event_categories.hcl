datasource "aws_db_event_categories" "aws_db_event_categories" {
  event_categories = var.event_categories
  source_type      = var.source_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "event_categories" {
  description = "List of the event categories."
  type        = string
}
variable "source_type" {
  description = "(Optional) Type of source that will be generating the events. Valid options are db-instance, db-security-group, db-parameter-group, db-snapshot, db-cluster or db-cluster-snapshot.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "event_categories" {
  description = "List of the event categories."
  value       = aws_db_event_categories.aws_db_event_categories.event_categories
}
output "source_type" {
  description = "(Optional) Type of source that will be generating the events. Valid options are db-instance, db-security-group, db-parameter-group, db-snapshot, db-cluster or db-cluster-snapshot.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_event_categories.aws_db_event_categories.source_type
}
output "event_categories" {
  description = "List of the event categories."
  value       = aws_db_event_categories.aws_db_event_categories.event_categories
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
