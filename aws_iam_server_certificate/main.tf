
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_server_certificate
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.32.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    certificate_body = string
    certificate_chain = string
    name = string
    name_prefix = string
    path = string
    private_key = string
    tags = map(string)
  })
}

resource "aws_iam_server_certificate" "default_resource" {
  certificate_body = var.values.certificate_body
  certificate_chain = var.values.certificate_chain
  name = var.values.name
  name_prefix = var.values.name_prefix
  path = var.values.path
  private_key = var.values.private_key
  tags = var.values.tags
}
