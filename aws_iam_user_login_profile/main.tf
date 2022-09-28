
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_user_login_profile
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
    password_length = number
    password_reset_required = bool
    pgp_key = string
    user = string
  })
}

resource "aws_iam_user_login_profile" "default_resource" {
  password_length = var.values.password_length
  password_reset_required = var.values.password_reset_required
  pgp_key = var.values.pgp_key
  user = var.values.user
}