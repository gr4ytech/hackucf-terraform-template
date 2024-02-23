variable "credential_name" {
  type = string
  description = "Openstack Application Credential Name"
}

variable "credential_id" {
  type = string
  description = "Openstack Application Credential ID"
}

variable "credential_secret" {
  type = string
  description = "Openstack Application Credential Secret"
  sensitive = true
}

variable "tenant_name" {
  type = string
  description = "Openstack Tenant name"
}

variable "auth_url" {
  type = string
  description = "Openstack Keystone URL"
  default = "https://horizon.hackucf.org:5000/v3"
}

variable "region" {
  type = string
  description = "Openstack Region"
  default = "hack-ucf-0"
}

variable "domain_name" {
  type = string
  description = "Openstack domain name"
  default = "default"
}

variable "flavor" {
  type = string
  description = "Openstack compute flavor"
  default = "m1.small"
}

variable "image" {
  type = string
  description = "Openstack VM image"
}

variable "instance_name" {
  type = string
  description = "Openstack VM Name"
}

variable "key_pair" {
  type = string
  description = "Name of Openstack Key Pair"
}