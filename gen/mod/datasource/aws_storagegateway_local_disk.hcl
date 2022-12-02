datasource "aws_storagegateway_local_disk" "aws_storagegateway_local_disk" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disk_id" {
  description = "Disk identifierE.g., pci-0000:03:00.0-scsi-0:0:0:0"
  value       = aws_storagegateway_local_disk.aws_storagegateway_local_disk.disk_id
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
