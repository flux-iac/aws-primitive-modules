######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_acmpca_permission
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
    actions = optional(set(string))
    certificate_authority_arn = optional(string)
    principal = optional(string)
    source_account = optional(string)
  })
}

resource "aws_acmpca_permission" "this" {

  {{- if $.Values.actions }}
  actions = var.values.actions
  {{- end }}
  {{- if $.Values.certificate_authority_arn }}
  certificate_authority_arn = var.values.certificate_authority_arn
  {{- end }}
  {{- if $.Values.principal }}
  principal = var.values.principal
  {{- end }}
  {{- if $.Values.source_account }}
  source_account = var.values.source_account
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


output "certificate_authority_arn" {
    value = aws_acmpca_permission.this.certificate_authority_arn
}

output "policy" {
    value = aws_acmpca_permission.this.policy
}

output "source_account" {
    value = aws_acmpca_permission.this.source_account
}

