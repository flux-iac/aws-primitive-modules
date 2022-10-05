
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_apprunner_auto_scaling_configuration_version
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
    auto_scaling_configuration_name = optional(string)
    max_concurrency = optional(number)
    max_size = optional(number)
    min_size = optional(number)
    tags = optional(map(string))
  })
}

resource "aws_apprunner_auto_scaling_configuration_version" "this" {
  auto_scaling_configuration_name = var.values.auto_scaling_configuration_name
  max_concurrency = var.values.max_concurrency
  max_size = var.values.max_size
  min_size = var.values.min_size
  tags = var.values.tags
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
    value = aws_apprunner_auto_scaling_configuration_version.this.arn
}

output "auto_scaling_configuration_revision" {
    value = aws_apprunner_auto_scaling_configuration_version.this.auto_scaling_configuration_revision
}

output "status" {
    value = aws_apprunner_auto_scaling_configuration_version.this.status
}
