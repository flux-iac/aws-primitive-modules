######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_network_insights_analysis
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
    filter_in_arns = optional(set(string))
    network_insights_path_id = optional(string)
    tags = optional(map(string))
    wait_for_completion = optional(bool)
  })
}

resource "aws_ec2_network_insights_analysis" "this" {

  {{- if $.Values.filter_in_arns }}
  filter_in_arns = var.values.filter_in_arns
  {{- end }}
  {{- if $.Values.network_insights_path_id }}
  network_insights_path_id = var.values.network_insights_path_id
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.wait_for_completion }}
  wait_for_completion = var.values.wait_for_completion
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
    value = aws_ec2_network_insights_analysis.this.arn
}

output "start_date" {
    value = aws_ec2_network_insights_analysis.this.start_date
}

output "status" {
    value = aws_ec2_network_insights_analysis.this.status
}

output "status_message" {
    value = aws_ec2_network_insights_analysis.this.status_message
}

output "warning_message" {
    value = aws_ec2_network_insights_analysis.this.warning_message
}
