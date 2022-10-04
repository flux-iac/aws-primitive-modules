
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_client_vpn_endpoint
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
    authentication_options = optional(object({
        active_directory_id = optional(string)
        root_certificate_chain_arn = optional(string)
        saml_provider_arn = optional(string)
        self_service_saml_provider_arn = optional(string)
        type = optional(string)
    }))
    client_cidr_block = optional(string)
    connection_log_options = optional(object({
        cloudwatch_log_stream = optional(string)
        enabled = optional(bool)
        cloudwatch_log_group = optional(string)
    }))
    description = optional(string)
    dns_servers = optional(list(string))
    self_service_portal = optional(string)
    server_certificate_arn = optional(string)
    session_timeout_hours = optional(number)
    split_tunnel = optional(bool)
    tags = optional(map(string))
    transport_protocol = optional(string)
    vpn_port = optional(number)
  })
}

resource "aws_ec2_client_vpn_endpoint" "this" {
  authentication_options = var.values.authentication_options
  client_cidr_block = var.values.client_cidr_block
  connection_log_options = var.values.connection_log_options
  description = var.values.description
  dns_servers = var.values.dns_servers
  self_service_portal = var.values.self_service_portal
  server_certificate_arn = var.values.server_certificate_arn
  session_timeout_hours = var.values.session_timeout_hours
  split_tunnel = var.values.split_tunnel
  tags = var.values.tags
  transport_protocol = var.values.transport_protocol
  vpn_port = var.values.vpn_port
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
    value = aws_ec2_client_vpn_endpoint.this.arn
}

output "dns_name" {
    value = aws_ec2_client_vpn_endpoint.this.dns_name
}

output "server_certificate_arn" {
    value = aws_ec2_client_vpn_endpoint.this.server_certificate_arn
}

output "status" {
    value = aws_ec2_client_vpn_endpoint.this.status
}

output "vpc_id" {
    value = aws_ec2_client_vpn_endpoint.this.vpc_id
}

