resource "aws_route53domains_registered_domain" "aws_route53domains_registered_domain" {
  tech_contact        = var.tech_contact
  tech_privacy        = var.tech_privacy
  updated_date        = var.updated_date
  whois_server        = var.whois_server
  admin_contact       = var.admin_contact
  name                = var.name
  status_list         = var.status_list
  creation_date       = var.creation_date
  tags                = var.tags
  abuse_contact_phone = var.abuse_contact_phone
  address_line_2      = var.address_line_2
  country_code        = var.country_code
  tags_all            = var.tags_all
  address_line_1      = var.address_line_1
  fax                 = var.fax
  reseller            = var.reseller
  phone_number        = var.phone_number
  abuse_contact_email = var.abuse_contact_email
  contact_type        = var.contact_type
  name_server         = var.name_server
  last_name           = var.last_name
  registrant_privacy  = var.registrant_privacy
  create              = var.create
  email               = var.email
  glue_ips            = var.glue_ips
  registrar_name      = var.registrar_name
  zip_code            = var.zip_code
  extra_params        = var.extra_params
  organization_name   = var.organization_name
  registrant_contact  = var.registrant_contact
  domain_name         = var.domain_name
  expiration_date     = var.expiration_date
  state               = var.state
  transfer_lock       = var.transfer_lock
  admin_privacy       = var.admin_privacy
  auto_renew          = var.auto_renew
  city                = var.city
  first_name          = var.first_name
  id                  = var.id
  registrar_url       = var.registrar_url
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "abuse_contact_phone" {
  description = "Phone number for reporting abuse."
  type        = string
}
variable "address_line_2" {
  description = "(Optional) Second line of contact's address, if any."
  type        = string
}
variable "country_code" {
  description = "(Optional) Code for the country of the contact's address. See the AWS API documentation for valid values."
  type        = string
}
variable "creation_date" {
  description = "The date when the domain was created as found in the response to a WHOIS query."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "address_line_1" {
  description = "(Optional) First line of the contact's address."
  type        = string
}
variable "fax" {
  description = "(Optional) Fax number of the contact. Phone number must be specified in the format \"+[country dialing code].[number including any area code]\"."
  type        = string
}
variable "reseller" {
  description = "Reseller of the domain."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "abuse_contact_email" {
  description = "Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse."
  type        = string
}
variable "contact_type" {
  description = "(Optional) Indicates whether the contact is a person, company, association, or public organization. See the AWS API documentation for valid values."
  type        = string
}
variable "name_server" {
  description = "(Optional) The list of nameservers for the domain."
  type        = string
}
variable "phone_number" {
  description = "(Optional) The phone number of the contact. Phone number must be specified in the format \"+[country dialing code].[number including any area code]\"."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "email" {
  description = "(Optional) Email address of the contact."
  type        = string
}
variable "glue_ips" {
  description = "(Optional) Glue IP addresses of a name server. The list can contain only one IPv4 and one IPv6 address."
  type        = string
}
variable "last_name" {
  description = "(Optional) Last name of contact."
  type        = string
}
variable "registrant_privacy" {
  description = "(Optional) Whether domain registrant contact information is concealed from WHOIS queries. Default: true."
  type        = string
}
variable "extra_params" {
  description = "(Optional) A key-value map of parameters required by certain top-level domains."
  type        = string
}
variable "organization_name" {
  description = "(Optional) Name of the organization for contact types other than PERSON."
  type        = string
}
variable "registrant_contact" {
  description = "(Optional) Details about the domain registrant."
  type        = string
}
variable "registrar_name" {
  description = "Name of the registrar of the domain as identified in the registry."
  type        = string
}
variable "zip_code" {
  description = "(Optional) The zip or postal code of the contact's address.The name_server object supports the following:"
  type        = string
}
variable "admin_privacy" {
  description = "(Optional) Whether domain administrative contact information is concealed from WHOIS queries. Default: true."
  type        = string
}
variable "auto_renew" {
  description = "(Optional) Whether the domain registration is set to renew automatically. Default: true."
  type        = string
}
variable "city" {
  description = "(Optional) The city of the contact's address."
  type        = string
}
variable "domain_name" {
  description = "(Required) The name of the registered domain."
  type        = string
}
variable "expiration_date" {
  description = "The date when the registration for the domain is set to expire."
  type        = string
}
variable "state" {
  description = "(Optional) The state or province of the contact's city."
  type        = string
}
variable "transfer_lock" {
  description = "(Optional) Whether the domain is locked for transfer. Default: true.The admin_contact, registrant_contact and tech_contact objects support the following:"
  type        = string
}
variable "first_name" {
  description = "(Optional) First name of contact."
  type        = string
}
variable "id" {
  description = "The domain name."
  type        = string
}
variable "registrar_url" {
  description = "Web address of the registrar."
  type        = string
}
variable "admin_contact" {
  description = "(Optional) Details about the domain administrative contact."
  type        = string
}
variable "name" {
  description = "(Required) The fully qualified host name of the name server.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "status_list" {
  description = "List of domain name status codes."
  type        = string
}
variable "tech_contact" {
  description = "(Optional) Details about the domain technical contact."
  type        = string
}
variable "tech_privacy" {
  description = "(Optional) Whether domain technical contact information is concealed from WHOIS queries. Default: true."
  type        = string
}
variable "updated_date" {
  description = "The last updated date of the domain as found in the response to a WHOIS query."
  type        = string
}
variable "whois_server" {
  description = "The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.TimeoutsConfiguration options:"
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
output "first_name" {
  description = "(Optional) First name of contact."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.first_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The domain name."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registrar_url" {
  description = "Web address of the registrar."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.registrar_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_date" {
  description = "The last updated date of the domain as found in the response to a WHOIS query."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "whois_server" {
  description = "The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.TimeoutsConfiguration options:"
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.whois_server
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "admin_contact" {
  description = "(Optional) Details about the domain administrative contact."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.admin_contact
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The fully qualified host name of the name server.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_list" {
  description = "List of domain name status codes."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.status_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tech_contact" {
  description = "(Optional) Details about the domain technical contact."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.tech_contact
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tech_privacy" {
  description = "(Optional) Whether domain technical contact information is concealed from WHOIS queries. Default: true."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.tech_privacy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "abuse_contact_phone" {
  description = "Phone number for reporting abuse."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.abuse_contact_phone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address_line_2" {
  description = "(Optional) Second line of contact's address, if any."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.address_line_2
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "country_code" {
  description = "(Optional) Code for the country of the contact's address. See the AWS API documentation for valid values."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.country_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "The date when the domain was created as found in the response to a WHOIS query."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address_line_1" {
  description = "(Optional) First line of the contact's address."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.address_line_1
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fax" {
  description = "(Optional) Fax number of the contact. Phone number must be specified in the format \"+[country dialing code].[number including any area code]\"."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.fax
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reseller" {
  description = "Reseller of the domain."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.reseller
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "abuse_contact_email" {
  description = "Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.abuse_contact_email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "contact_type" {
  description = "(Optional) Indicates whether the contact is a person, company, association, or public organization. See the AWS API documentation for valid values."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.contact_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_server" {
  description = "(Optional) The list of nameservers for the domain."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.name_server
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "phone_number" {
  description = "(Optional) The phone number of the contact. Phone number must be specified in the format \"+[country dialing code].[number including any area code]\"."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.phone_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email" {
  description = "(Optional) Email address of the contact."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "glue_ips" {
  description = "(Optional) Glue IP addresses of a name server. The list can contain only one IPv4 and one IPv6 address."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.glue_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_name" {
  description = "(Optional) Last name of contact."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.last_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registrant_privacy" {
  description = "(Optional) Whether domain registrant contact information is concealed from WHOIS queries. Default: true."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.registrant_privacy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "extra_params" {
  description = "(Optional) A key-value map of parameters required by certain top-level domains."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.extra_params
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organization_name" {
  description = "(Optional) Name of the organization for contact types other than PERSON."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.organization_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registrant_contact" {
  description = "(Optional) Details about the domain registrant."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.registrant_contact
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registrar_name" {
  description = "Name of the registrar of the domain as identified in the registry."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.registrar_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zip_code" {
  description = "(Optional) The zip or postal code of the contact's address.The name_server object supports the following:"
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.zip_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "(Optional) The state or province of the contact's city."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transfer_lock" {
  description = "(Optional) Whether the domain is locked for transfer. Default: true.The admin_contact, registrant_contact and tech_contact objects support the following:"
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.transfer_lock
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "admin_privacy" {
  description = "(Optional) Whether domain administrative contact information is concealed from WHOIS queries. Default: true."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.admin_privacy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_renew" {
  description = "(Optional) Whether the domain registration is set to renew automatically. Default: true."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.auto_renew
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "city" {
  description = "(Optional) The city of the contact's address."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.city
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "(Required) The name of the registered domain."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expiration_date" {
  description = "The date when the registration for the domain is set to expire."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.expiration_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "abuse_contact_email" {
  description = "Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.abuse_contact_email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expiration_date" {
  description = "The date when the registration for the domain is set to expire."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.expiration_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registrar_url" {
  description = "Web address of the registrar."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.registrar_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_list" {
  description = "List of domain name status codes."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.status_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "whois_server" {
  description = "The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.TimeoutsConfiguration options:"
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.whois_server
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "abuse_contact_phone" {
  description = "Phone number for reporting abuse."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.abuse_contact_phone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "The date when the domain was created as found in the response to a WHOIS query."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The domain name."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registrar_name" {
  description = "Name of the registrar of the domain as identified in the registry."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.registrar_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reseller" {
  description = "Reseller of the domain."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.reseller
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_date" {
  description = "The last updated date of the domain as found in the response to a WHOIS query."
  value       = aws_route53domains_registered_domain.aws_route53domains_registered_domain.updated_date
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
      "kind/name"                   = "aws_route53domains_registered_domain"
      "kind/version"                = "v0.1.0"
    }
  }
}