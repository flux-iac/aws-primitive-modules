######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_policy_attachment
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
    groups = optional(set(string))
    name = optional(string)
    policy_arn = optional(string)
    roles = optional(set(string))
    users = optional(set(string))
  })
}

resource "aws_iam_policy_attachment" "this" {

  {{- if $.Values.groups }}
  groups = var.values.groups
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.policy_arn }}
  policy_arn = var.values.policy_arn
  {{- end }}
  {{- if $.Values.roles }}
  roles = var.values.roles
  {{- end }}
  {{- if $.Values.users }}
  users = var.values.users
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


output "policy_arn" {
    value = aws_iam_policy_attachment.this.policy_arn
}

