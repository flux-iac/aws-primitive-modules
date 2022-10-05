
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appsync_api_cache
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    api_caching_behavior = optional(string)
    api_id = optional(string)
    at_rest_encryption_enabled = optional(bool)
    transit_encryption_enabled = optional(bool)
    ttl = optional(number)
    type = optional(string)
  })
}

resource "aws_appsync_api_cache" "this" {
  api_caching_behavior = var.values.api_caching_behavior
  api_id = var.values.api_id
  at_rest_encryption_enabled = var.values.at_rest_encryption_enabled
  transit_encryption_enabled = var.values.transit_encryption_enabled
  ttl = var.values.ttl
  type = var.values.type
  {{- if $.Values.count }}
  count = {{ $.Values.count }}
  {{- end }}

  {{- if $.Values.lifecycle }}
  lifecycle {
    {{- if $.Values.lifecycle.create_before_destroy }}
    create_before_destroy = {{ $.Values.lifecycle.create_before_destroy }}
    {{- end }}
    {{- if $.Values.lifecycle.ignore_changes }}
    prevent_destroy = {{ $.Values.lifecycle.prevent_destroy }}
    {{- end }}
    {{- if $.Values.lifecycle.ignore_changes }}
    ignore_changes = {{ $.Values.lifecycle.ignore_changes }}
    {{- end }}
  }
  {{- end }}
}

