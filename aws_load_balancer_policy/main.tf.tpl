######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_load_balancer_policy
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
    load_balancer_name = optional(string)
    policy_name = optional(string)
    policy_type_name = optional(string)
  })
}

resource "aws_load_balancer_policy" "this" {

  {{- if $.Values.load_balancer_name }}
  load_balancer_name = var.values.load_balancer_name
  {{- end }}
  {{- if $.Values.policy_name }}
  policy_name = var.values.policy_name
  {{- end }}
  {{- if $.Values.policy_type_name }}
  policy_type_name = var.values.policy_type_name
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


