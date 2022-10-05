
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_website_configuration
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
    bucket = optional(string)
    error_document = optional(object({
        key = optional(string)
    }))
    expected_bucket_owner = optional(string)
    index_document = optional(object({
        suffix = optional(string)
    }))
    redirect_all_requests_to = optional(object({
        host_name = optional(string)
        protocol = optional(string)
    }))
    routing_rule = optional(object({
        condition = optional(object({
            http_error_code_returned_equals = optional(string)
            key_prefix_equals = optional(string)
        }))
        redirect = optional(object({
            protocol = optional(string)
            replace_key_prefix_with = optional(string)
            replace_key_with = optional(string)
            host_name = optional(string)
            http_redirect_code = optional(string)
        }))
    }))
  })
}

resource "aws_s3_bucket_website_configuration" "this" {
  bucket = var.values.bucket
  error_document = var.values.error_document
  expected_bucket_owner = var.values.expected_bucket_owner
  index_document = var.values.index_document
  redirect_all_requests_to = var.values.redirect_all_requests_to
  routing_rule = var.values.routing_rule
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


output "website_domain" {
    value = aws_s3_bucket_website_configuration.this.website_domain
}

output "website_endpoint" {
    value = aws_s3_bucket_website_configuration.this.website_endpoint
}
