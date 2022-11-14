######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ecr_registry_scanning_configuration
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
    rule = optional(set(object({
        repository_filter = optional(set(object({
            filter = optional(string)
            filter_type = optional(string)
        })))
        scan_frequency = optional(string)
    })))
    scan_type = optional(string)
  })
}

resource "aws_ecr_registry_scanning_configuration" "this" {

  {{- if $.Values.rule }}
  dynamic "rule" {
    for_each = var.values.rule[*]
    content {
      dynamic "repository_filter" {
        for_each = rule.value.repository_filter[*]
        content {
          filter = repository_filter.value.filter
          filter_type = repository_filter.value.filter_type
        }
      }
      scan_frequency = rule.value.scan_frequency
    }
  }
  {{- end }}
  {{- if $.Values.scan_type }}
  scan_type = var.values.scan_type
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


output "registry_id" {
    value = aws_ecr_registry_scanning_configuration.this.registry_id
}

