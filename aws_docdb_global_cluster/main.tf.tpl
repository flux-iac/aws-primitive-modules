######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_docdb_global_cluster
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
    database_name = optional(string)
    deletion_protection = optional(bool)
    engine = optional(string)
    global_cluster_identifier = optional(string)
    source_db_cluster_identifier = optional(string)
    storage_encrypted = optional(bool)
  })
}

resource "aws_docdb_global_cluster" "this" {

  {{- if $.Values.database_name }}
  database_name = var.values.database_name
  {{- end }}
  {{- if $.Values.deletion_protection }}
  deletion_protection = var.values.deletion_protection
  {{- end }}
  {{- if $.Values.engine }}
  engine = var.values.engine
  {{- end }}
  {{- if $.Values.global_cluster_identifier }}
  global_cluster_identifier = var.values.global_cluster_identifier
  {{- end }}
  {{- if $.Values.source_db_cluster_identifier }}
  source_db_cluster_identifier = var.values.source_db_cluster_identifier
  {{- end }}
  {{- if $.Values.storage_encrypted }}
  storage_encrypted = var.values.storage_encrypted
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
    value = aws_docdb_global_cluster.this.arn
}

output "engine" {
    value = aws_docdb_global_cluster.this.engine
}

output "engine_version" {
    value = aws_docdb_global_cluster.this.engine_version
}

output "global_cluster_resource_id" {
    value = aws_docdb_global_cluster.this.global_cluster_resource_id
}

output "source_db_cluster_identifier" {
    value = aws_docdb_global_cluster.this.source_db_cluster_identifier
}

output "status" {
    value = aws_docdb_global_cluster.this.status
}

