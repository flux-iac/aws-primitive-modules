######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_prometheus_workspace
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
    alias = optional(string)
    logging_configuration = optional(list({
        log_group_arn = optional(string)
    }))
    tags = optional(map(string))
  })
}

resource "aws_prometheus_workspace" "this" {

  {{- if $.Values.alias }}
  alias = var.values.alias
  {{- end }}
  {{- if $.Values.logging_configuration }}
  logging_configuration = var.values.logging_configuration
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
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
    value = aws_prometheus_workspace.this.arn
}

output "prometheus_endpoint" {
    value = aws_prometheus_workspace.this.prometheus_endpoint
}

