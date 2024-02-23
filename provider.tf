# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  application_credential_name = var.credential_name
  application_credential_id = var.credential_id
  application_credential_secret = var.credential_secret
  tenant_name = var.tenant_name
  auth_url    = var.auth_url
  region      = var.region
  domain_name = var.domain_name
}