# terraform/main.tf

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket-${var.environment}"
  acl    = "private"
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment to deploy to"
  type        = string
  default     = "dev"
}
