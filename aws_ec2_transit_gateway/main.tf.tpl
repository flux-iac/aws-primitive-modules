######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_transit_gateway
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
    amazon_side_asn = optional(number)
    auto_accept_shared_attachments = optional(string)
    default_route_table_association = optional(string)
    default_route_table_propagation = optional(string)
    description = optional(string)
    dns_support = optional(string)
    multicast_support = optional(string)
    tags = optional(map(string))
    transit_gateway_cidr_blocks = optional(set(string))
    vpn_ecmp_support = optional(string)
  })
}

resource "aws_ec2_transit_gateway" "this" {

  {{- if $.Values.amazon_side_asn }}
  amazon_side_asn = var.values.amazon_side_asn
  {{- end }}
  {{- if $.Values.auto_accept_shared_attachments }}
  auto_accept_shared_attachments = var.values.auto_accept_shared_attachments
  {{- end }}
  {{- if $.Values.default_route_table_association }}
  default_route_table_association = var.values.default_route_table_association
  {{- end }}
  {{- if $.Values.default_route_table_propagation }}
  default_route_table_propagation = var.values.default_route_table_propagation
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.dns_support }}
  dns_support = var.values.dns_support
  {{- end }}
  {{- if $.Values.multicast_support }}
  multicast_support = var.values.multicast_support
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.transit_gateway_cidr_blocks }}
  transit_gateway_cidr_blocks = var.values.transit_gateway_cidr_blocks
  {{- end }}
  {{- if $.Values.vpn_ecmp_support }}
  vpn_ecmp_support = var.values.vpn_ecmp_support
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


output "arn" {
    value = aws_ec2_transit_gateway.this.arn
}

output "association_default_route_table_id" {
    value = aws_ec2_transit_gateway.this.association_default_route_table_id
}

output "owner_id" {
    value = aws_ec2_transit_gateway.this.owner_id
}

output "propagation_default_route_table_id" {
    value = aws_ec2_transit_gateway.this.propagation_default_route_table_id
}

