
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_policy
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
    description = string
    name = string
    name_prefix = string
    path = string
    policy = string
    tags = map(string)
  })
}

resource "aws_iam_policy" "default_resource" {
  description = var.values.description
  name = var.values.name
  name_prefix = var.values.name_prefix
  path = var.values.path
  policy = var.values.policy
  tags = var.values.tags
}
