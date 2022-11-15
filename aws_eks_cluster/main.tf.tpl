######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_eks_cluster
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
    enabled_cluster_log_types = optional(set(string))
    encryption_config = optional(list(object({
        provider = optional(list(object({
            key_arn = optional(string)
        })))
        resources = optional(set(string))
    })))
    name = optional(string)
    outpost_config = optional(list(object({
        outpost_arns = optional(set(string))
        control_plane_instance_type = optional(string)
    })))
    role_arn = optional(string)
    tags = optional(map(string))
    vpc_config = optional(list(object({
        public_access_cidrs = optional(set(string))
        security_group_ids = optional(set(string))
        subnet_ids = optional(set(string))
        vpc_id = optional(string)
        cluster_security_group_id = optional(string)
        endpoint_private_access = optional(bool)
        endpoint_public_access = optional(bool)
    })))
  })
}

resource "aws_eks_cluster" "this" {

  {{- if $.Values.enabled_cluster_log_types }}
  enabled_cluster_log_types = var.values.enabled_cluster_log_types
  {{- end }}
  {{- if $.Values.encryption_config }}
  dynamic "encryption_config" {
    for_each = var.values.encryption_config[*]
    content {
      dynamic "provider" {
        for_each = encryption_config.value.provider[*]
        content {
          key_arn = provider.value.key_arn
        }
      }
      resources = encryption_config.value.resources
    }
  }
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.outpost_config }}
  dynamic "outpost_config" {
    for_each = var.values.outpost_config[*]
    content {
      control_plane_instance_type = outpost_config.value.control_plane_instance_type
      outpost_arns = outpost_config.value.outpost_arns
    }
  }
  {{- end }}
  {{- if $.Values.role_arn }}
  role_arn = var.values.role_arn
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.vpc_config }}
  dynamic "vpc_config" {
    for_each = var.values.vpc_config[*]
    content {
      cluster_security_group_id = vpc_config.value.cluster_security_group_id
      endpoint_private_access = vpc_config.value.endpoint_private_access
      endpoint_public_access = vpc_config.value.endpoint_public_access
      public_access_cidrs = vpc_config.value.public_access_cidrs
      security_group_ids = vpc_config.value.security_group_ids
      subnet_ids = vpc_config.value.subnet_ids
      vpc_id = vpc_config.value.vpc_id
    }
  }
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

