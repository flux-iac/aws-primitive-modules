######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ami_launch_permission
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
    account_id = optional(string)
    group = optional(string)
    image_id = optional(string)
    organization_arn = optional(string)
    organizational_unit_arn = optional(string)
  })
}

resource "aws_ami_launch_permission" "this" {

  {{- if $.Values.account_id }}
  account_id = var.values.account_id
  {{- end }}
  {{- if $.Values.group }}
  group = var.values.group
  {{- end }}
  {{- if $.Values.image_id }}
  image_id = var.values.image_id
  {{- end }}
  {{- if $.Values.organization_arn }}
  organization_arn = var.values.organization_arn
  {{- end }}
  {{- if $.Values.organizational_unit_arn }}
  organizational_unit_arn = var.values.organizational_unit_arn
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


output "organization_arn" {
    value = aws_ami_launch_permission.this.organization_arn
}

output "organizational_unit_arn" {
    value = aws_ami_launch_permission.this.organizational_unit_arn
}

