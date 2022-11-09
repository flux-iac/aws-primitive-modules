######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb_listener_certificate
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
    certificate_arn = optional(string)
    listener_arn = optional(string)
  })
}

resource "aws_lb_listener_certificate" "this" {

  {{- if $.Values.certificate_arn }}
  certificate_arn = var.values.certificate_arn
  {{- end }}
  {{- if $.Values.listener_arn }}
  listener_arn = var.values.listener_arn
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


output "certificate_arn" {
    value = aws_lb_listener_certificate.this.certificate_arn
}

output "listener_arn" {
    value = aws_lb_listener_certificate.this.listener_arn
}

