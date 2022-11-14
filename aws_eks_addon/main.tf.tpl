######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_eks_addon
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
    addon_name = optional(string)
    cluster_name = optional(string)
    preserve = optional(bool)
    resolve_conflicts = optional(string)
    service_account_role_arn = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_eks_addon" "this" {

  {{- if $.Values.addon_name }}
  addon_name = var.values.addon_name
  {{- end }}
  {{- if $.Values.cluster_name }}
  cluster_name = var.values.cluster_name
  {{- end }}
  {{- if $.Values.preserve }}
  preserve = var.values.preserve
  {{- end }}
  {{- if $.Values.resolve_conflicts }}
  resolve_conflicts = var.values.resolve_conflicts
  {{- end }}
  {{- if $.Values.service_account_role_arn }}
  service_account_role_arn = var.values.service_account_role_arn
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


output "addon_version" {
    value = aws_eks_addon.this.addon_version
}

output "arn" {
    value = aws_eks_addon.this.arn
}

output "created_at" {
    value = aws_eks_addon.this.created_at
}

output "modified_at" {
    value = aws_eks_addon.this.modified_at
}

output "service_account_role_arn" {
    value = aws_eks_addon.this.service_account_role_arn
}

