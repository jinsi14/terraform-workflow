variable "region" {
  type    = string
  default = "us-east-1"
}

variable "prefix_company" {
  type = string
  default = "digi"
}

variable "lob" {
  type = string
  default = "developer"
}

variable "application" {
  type = string
  default = "read"
}

variable "env" {
    type = string
    default = "dev"
}

variable "account_id" {
  type = string
  default = "538590669851"
}

variable "tags" {
  description = "A map of tags to assign to the resources created by this module. If configured with a provider [`default_tags` configuration block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#default_tags) present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(string)
  default     = {}
}