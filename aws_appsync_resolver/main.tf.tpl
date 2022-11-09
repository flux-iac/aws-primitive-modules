######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appsync_resolver
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
    api_id = optional(string)
    caching_config = optional(list({
        caching_keys = optional(set(string))
        ttl = optional(number)
    }))
    data_source = optional(string)
    field = optional(string)
    kind = optional(string)
    max_batch_size = optional(number)
    pipeline_config = optional(list({
        functions = optional(list(string))
    }))
    request_template = optional(string)
    response_template = optional(string)
    sync_config = optional(list({
        conflict_detection = optional(string)
        conflict_handler = optional(string)
        lambda_conflict_handler_config = optional(list({
            lambda_conflict_handler_arn = optional(string)
        }))
    }))
    type = optional(string)
  })
}

resource "aws_appsync_resolver" "this" {

  {{- if $.Values.api_id }}
  api_id = var.values.api_id
  {{- end }}
  {{- if $.Values.caching_config }}
  caching_config = var.values.caching_config
  {{- end }}
  {{- if $.Values.data_source }}
  data_source = var.values.data_source
  {{- end }}
  {{- if $.Values.field }}
  field = var.values.field
  {{- end }}
  {{- if $.Values.kind }}
  kind = var.values.kind
  {{- end }}
  {{- if $.Values.max_batch_size }}
  max_batch_size = var.values.max_batch_size
  {{- end }}
  {{- if $.Values.pipeline_config }}
  pipeline_config = var.values.pipeline_config
  {{- end }}
  {{- if $.Values.request_template }}
  request_template = var.values.request_template
  {{- end }}
  {{- if $.Values.response_template }}
  response_template = var.values.response_template
  {{- end }}
  {{- if $.Values.sync_config }}
  sync_config = var.values.sync_config
  {{- end }}
  {{- if $.Values.type }}
  type = var.values.type
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


output "arn" {
    value = aws_appsync_resolver.this.arn
}

