######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_dynamodb_table
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
    attribute = optional(set(object({
        name = optional(string)
        type = optional(string)
    })))
    billing_mode = optional(string)
    global_secondary_index = optional(set(object({
        read_capacity = optional(number)
        write_capacity = optional(number)
        hash_key = optional(string)
        name = optional(string)
        non_key_attributes = optional(set(string))
        projection_type = optional(string)
        range_key = optional(string)
    })))
    hash_key = optional(string)
    local_secondary_index = optional(set(object({
        range_key = optional(string)
        name = optional(string)
        non_key_attributes = optional(list(string))
        projection_type = optional(string)
    })))
    name = optional(string)
    range_key = optional(string)
    read_capacity = optional(number)
    replica = optional(set(object({
        region_name = optional(string)
        kms_key_arn = optional(string)
        point_in_time_recovery = optional(bool)
        propagate_tags = optional(bool)
    })))
    restore_date_time = optional(string)
    restore_source_name = optional(string)
    restore_to_latest_time = optional(bool)
    stream_enabled = optional(bool)
    table_class = optional(string)
    tags = optional(map(string))
    write_capacity = optional(number)
  })
}

resource "aws_dynamodb_table" "this" {

  {{- if $.Values.attribute }}
  dynamic "attribute" {
    for_each = var.values.attribute[*]
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }
  {{- end }}
  {{- if $.Values.billing_mode }}
  billing_mode = var.values.billing_mode
  {{- end }}
  {{- if $.Values.global_secondary_index }}
  dynamic "global_secondary_index" {
    for_each = var.values.global_secondary_index[*]
    content {
      hash_key = global_secondary_index.value.hash_key
      name = global_secondary_index.value.name
      non_key_attributes = global_secondary_index.value.non_key_attributes
      projection_type = global_secondary_index.value.projection_type
      range_key = global_secondary_index.value.range_key
      read_capacity = global_secondary_index.value.read_capacity
      write_capacity = global_secondary_index.value.write_capacity
    }
  }
  {{- end }}
  {{- if $.Values.hash_key }}
  hash_key = var.values.hash_key
  {{- end }}
  {{- if $.Values.local_secondary_index }}
  dynamic "local_secondary_index" {
    for_each = var.values.local_secondary_index[*]
    content {
      name = local_secondary_index.value.name
      non_key_attributes = local_secondary_index.value.non_key_attributes
      projection_type = local_secondary_index.value.projection_type
      range_key = local_secondary_index.value.range_key
    }
  }
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.range_key }}
  range_key = var.values.range_key
  {{- end }}
  {{- if $.Values.read_capacity }}
  read_capacity = var.values.read_capacity
  {{- end }}
  {{- if $.Values.replica }}
  dynamic "replica" {
    for_each = var.values.replica[*]
    content {
      kms_key_arn = replica.value.kms_key_arn
      point_in_time_recovery = replica.value.point_in_time_recovery
      propagate_tags = replica.value.propagate_tags
      region_name = replica.value.region_name
    }
  }
  {{- end }}
  {{- if $.Values.restore_date_time }}
  restore_date_time = var.values.restore_date_time
  {{- end }}
  {{- if $.Values.restore_source_name }}
  restore_source_name = var.values.restore_source_name
  {{- end }}
  {{- if $.Values.restore_to_latest_time }}
  restore_to_latest_time = var.values.restore_to_latest_time
  {{- end }}
  {{- if $.Values.stream_enabled }}
  stream_enabled = var.values.stream_enabled
  {{- end }}
  {{- if $.Values.table_class }}
  table_class = var.values.table_class
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.write_capacity }}
  write_capacity = var.values.write_capacity
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
    value = aws_dynamodb_table.this.arn
}

output "hash_key" {
    value = aws_dynamodb_table.this.hash_key
}

output "read_capacity" {
    value = aws_dynamodb_table.this.read_capacity
}

output "stream_arn" {
    value = aws_dynamodb_table.this.stream_arn
}

output "stream_label" {
    value = aws_dynamodb_table.this.stream_label
}

output "stream_view_type" {
    value = aws_dynamodb_table.this.stream_view_type
}

output "write_capacity" {
    value = aws_dynamodb_table.this.write_capacity
}

