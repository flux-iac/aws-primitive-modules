######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3control_multi_region_access_point_policy
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
    account_id = optional(string)
    details = optional(list(string))
  })
}

resource "aws_s3control_multi_region_access_point_policy" "this" {

  {{- if $.Values.account_id }}
  account_id = var.values.account_id
  {{- end }}
  {{- if $.Values.details }}
  details = var.values.details
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


output "account_id" {
    value = aws_s3control_multi_region_access_point_policy.this.account_id
}

output "established" {
    value = aws_s3control_multi_region_access_point_policy.this.established
}

output "proposed" {
    value = aws_s3control_multi_region_access_point_policy.this.proposed
}

