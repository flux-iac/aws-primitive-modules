
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_eks_cluster
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
    enabled_cluster_log_types = optional(set(string))
    encryption_config = optional(object({
        provider = optional(object({
            key_arn = optional(string)
        }))
        resources = optional(set(string))
    }))
    name = optional(string)
    role_arn = optional(string)
    tags = optional(map(string))
    vpc_config = optional(object({
        subnet_ids = optional(set(string))
        vpc_id = optional(string)
        cluster_security_group_id = optional(string)
        endpoint_private_access = optional(bool)
        endpoint_public_access = optional(bool)
        public_access_cidrs = optional(set(string))
        security_group_ids = optional(set(string))
    }))
  })
}

resource "aws_eks_cluster" "this" {
  enabled_cluster_log_types = var.values.enabled_cluster_log_types
  encryption_config = var.values.encryption_config
  name = var.values.name
  role_arn = var.values.role_arn
  tags = var.values.tags
  vpc_config = var.values.vpc_config
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
    value = aws_eks_cluster.this.arn
}

output "created_at" {
    value = aws_eks_cluster.this.created_at
}

output "endpoint" {
    value = aws_eks_cluster.this.endpoint
}

output "platform_version" {
    value = aws_eks_cluster.this.platform_version
}

output "role_arn" {
    value = aws_eks_cluster.this.role_arn
}

output "status" {
    value = aws_eks_cluster.this.status
}

output "version" {
    value = aws_eks_cluster.this.version
}

