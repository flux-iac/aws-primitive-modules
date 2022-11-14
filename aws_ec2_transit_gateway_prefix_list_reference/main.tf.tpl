######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_transit_gateway_prefix_list_reference
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
    blackhole = optional(bool)
    prefix_list_id = optional(string)
    transit_gateway_attachment_id = optional(string)
    transit_gateway_route_table_id = optional(string)
  })
}

resource "aws_ec2_transit_gateway_prefix_list_reference" "this" {

  {{- if $.Values.blackhole }}
  blackhole = var.values.blackhole
  {{- end }}
  {{- if $.Values.prefix_list_id }}
  prefix_list_id = var.values.prefix_list_id
  {{- end }}
  {{- if $.Values.transit_gateway_attachment_id }}
  transit_gateway_attachment_id = var.values.transit_gateway_attachment_id
  {{- end }}
  {{- if $.Values.transit_gateway_route_table_id }}
  transit_gateway_route_table_id = var.values.transit_gateway_route_table_id
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


