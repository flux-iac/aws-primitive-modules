
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_virtual_mfa_device
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
    path = string
    tags = map(string)
    virtual_mfa_device_name = string
  })
}

resource "aws_iam_virtual_mfa_device" "default_resource" {
  path = var.values.path
  tags = var.values.tags
  virtual_mfa_device_name = var.values.virtual_mfa_device_name
}
