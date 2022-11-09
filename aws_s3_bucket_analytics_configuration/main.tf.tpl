######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_analytics_configuration
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = any object({
    bucket = optional(string)
    filter = optional(list({
        prefix = optional(string)
        tags = optional(map(string))
    }))
    name = optional(string)
    storage_class_analysis = optional(list({
        data_export = optional(list({
            output_schema_version = optional(string)
            destination = optional(list({
                s3_bucket_destination = optional(list({
                    bucket_arn = optional(string)
                    bucket_account_id = optional(string)
                    format = optional(string)
                    prefix = optional(string)
                }))
            }))
        }))
    }))
  })
}

resource "aws_s3_bucket_analytics_configuration" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.filter }}
  filter = var.values.filter
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.storage_class_analysis }}
  storage_class_analysis = var.values.storage_class_analysis
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


