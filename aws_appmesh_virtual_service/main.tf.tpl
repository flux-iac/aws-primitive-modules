######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appmesh_virtual_service
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
    mesh_name = optional(string)
    mesh_owner = optional(string)
    name = optional(string)
    spec = optional(list(object({
        provider = optional(list(object({
            virtual_node = optional(list(object({
                virtual_node_name = optional(string)
            })))
            virtual_router = optional(list(object({
                virtual_router_name = optional(string)
            })))
        })))
    })))
    tags = optional(map(string))
  })
}

resource "aws_appmesh_virtual_service" "this" {

  {{- if $.Values.mesh_name }}
  mesh_name = var.values.mesh_name
  {{- end }}
  {{- if $.Values.mesh_owner }}
  mesh_owner = var.values.mesh_owner
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.spec }}
  dynamic "spec" {
    for_each = var.values.spec[*]
    content {
      dynamic "provider" {
        for_each = spec.value.provider[*]
        content {
          dynamic "virtual_node" {
            for_each = provider.value.virtual_node[*]
            content {
              virtual_node_name = virtual_node.value.virtual_node_name
            }
          }
          dynamic "virtual_router" {
            for_each = provider.value.virtual_router[*]
            content {
              virtual_router_name = virtual_router.value.virtual_router_name
            }
          }
        }
      }
    }
  }
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
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
    value = aws_appmesh_virtual_service.this.arn
}

output "created_date" {
    value = aws_appmesh_virtual_service.this.created_date
}

output "last_updated_date" {
    value = aws_appmesh_virtual_service.this.last_updated_date
}

output "mesh_owner" {
    value = aws_appmesh_virtual_service.this.mesh_owner
}

output "resource_owner" {
    value = aws_appmesh_virtual_service.this.resource_owner
}

