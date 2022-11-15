######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_logging
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

variable "values" {
  type = object({
    bucket = optional(string)
    expected_bucket_owner = optional(string)
    target_bucket = optional(string)
    target_grant = optional(set(object({
        grantee = optional(list(object({
            id = optional(string)
            type = optional(string)
            uri = optional(string)
            display_name = optional(string)
            email_address = optional(string)
        })))
        permission = optional(string)
    })))
    target_prefix = optional(string)
  })
}

resource "aws_s3_bucket_logging" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.expected_bucket_owner }}
  expected_bucket_owner = var.values.expected_bucket_owner
  {{- end }}
  {{- if $.Values.target_bucket }}
  target_bucket = var.values.target_bucket
  {{- end }}
  {{- if $.Values.target_grant }}
  dynamic "target_grant" {
    for_each = var.values.target_grant[*]
    content {
      permission = target_grant.value.permission
      dynamic "grantee" {
        for_each = target_grant.value.grantee[*]
        content {
          email_address = grantee.value.email_address
          id = grantee.value.id
          type = grantee.value.type
          uri = grantee.value.uri
          display_name = grantee.value.display_name
        }
      }
    }
  }
  {{- end }}
  {{- if $.Values.target_prefix }}
  target_prefix = var.values.target_prefix
  {{- end }}


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


