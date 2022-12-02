datasource "aws_sfn_state_machine" "aws_sfn_state_machine" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "Date the state machine was created."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.creation_date
}
output "definition" {
  description = "Set to the state machine definition."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.definition
}
output "id" {
  description = "Set to the ARN of the found state machine, suitable for referencing in other resources that support State Machines."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.id
}
output "role_arn" {
  description = "Set to the role_arn used by the state function."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.role_arn
}
output "arn" {
  description = "Set to the arn of the state function."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.arn
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
