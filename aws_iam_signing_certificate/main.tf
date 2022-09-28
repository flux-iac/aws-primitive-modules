
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_signing_certificate
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
    status = string
    user_name = string
  })
}

resource "aws_iam_signing_certificate" "default_resource" {
  certificate_body = var.values.certificate_body
  status = var.values.status
  user_name = var.values.user_name
}
