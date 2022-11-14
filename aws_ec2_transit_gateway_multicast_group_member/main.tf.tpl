######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_transit_gateway_multicast_group_member
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
    group_ip_address = optional(string)
    network_interface_id = optional(string)
    transit_gateway_multicast_domain_id = optional(string)
  })
}

resource "aws_ec2_transit_gateway_multicast_group_member" "this" {

  {{- if $.Values.group_ip_address }}
  group_ip_address = var.values.group_ip_address
  {{- end }}
  {{- if $.Values.network_interface_id }}
  network_interface_id = var.values.network_interface_id
  {{- end }}
  {{- if $.Values.transit_gateway_multicast_domain_id }}
  transit_gateway_multicast_domain_id = var.values.transit_gateway_multicast_domain_id
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


