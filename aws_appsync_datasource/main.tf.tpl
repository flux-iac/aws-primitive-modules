######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appsync_datasource
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
    api_id = optional(string)
    description = optional(string)
    dynamodb_config = optional(list(object({
        region = optional(string)
        table_name = optional(string)
        use_caller_credentials = optional(bool)
        versioned = optional(bool)
        delta_sync_config = optional(list(object({
            base_table_ttl = optional(number)
            delta_sync_table_name = optional(string)
            delta_sync_table_ttl = optional(number)
        })))
    })))
    elasticsearch_config = optional(list(object({
        region = optional(string)
        endpoint = optional(string)
    })))
    http_config = optional(list(object({
        authorization_config = optional(list(object({
            authorization_type = optional(string)
            aws_iam_config = optional(list(object({
                signing_region = optional(string)
                signing_service_name = optional(string)
            })))
        })))
        endpoint = optional(string)
    })))
    lambda_config = optional(list(object({
        function_arn = optional(string)
    })))
    name = optional(string)
    relational_database_config = optional(list(object({
        source_type = optional(string)
        http_endpoint_config = optional(list(object({
            region = optional(string)
            schema = optional(string)
            db_cluster_identifier = optional(string)
            aws_secret_store_arn = optional(string)
            database_name = optional(string)
        })))
    })))
    service_role_arn = optional(string)
    type = optional(string)
  })
}

resource "aws_appsync_datasource" "this" {

  {{- if $.Values.api_id }}
  api_id = var.values.api_id
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.dynamodb_config }}
  dynamic "dynamodb_config" {
    for_each = var.values.dynamodb_config[*]
    content {
      versioned = dynamodb_config.value.versioned
      dynamic "delta_sync_config" {
        for_each = dynamodb_config.value.delta_sync_config[*]
        content {
          delta_sync_table_name = delta_sync_config.value.delta_sync_table_name
          delta_sync_table_ttl = delta_sync_config.value.delta_sync_table_ttl
          base_table_ttl = delta_sync_config.value.base_table_ttl
        }
      }
      region = dynamodb_config.value.region
      table_name = dynamodb_config.value.table_name
      use_caller_credentials = dynamodb_config.value.use_caller_credentials
    }
  }
  {{- end }}
  {{- if $.Values.elasticsearch_config }}
  dynamic "elasticsearch_config" {
    for_each = var.values.elasticsearch_config[*]
    content {
      region = elasticsearch_config.value.region
      endpoint = elasticsearch_config.value.endpoint
    }
  }
  {{- end }}
  {{- if $.Values.http_config }}
  dynamic "http_config" {
    for_each = var.values.http_config[*]
    content {
      endpoint = http_config.value.endpoint
      dynamic "authorization_config" {
        for_each = http_config.value.authorization_config[*]
        content {
          dynamic "aws_iam_config" {
            for_each = authorization_config.value.aws_iam_config[*]
            content {
              signing_region = aws_iam_config.value.signing_region
              signing_service_name = aws_iam_config.value.signing_service_name
            }
          }
          authorization_type = authorization_config.value.authorization_type
        }
      }
    }
  }
  {{- end }}
  {{- if $.Values.lambda_config }}
  dynamic "lambda_config" {
    for_each = var.values.lambda_config[*]
    content {
      function_arn = lambda_config.value.function_arn
    }
  }
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.relational_database_config }}
  dynamic "relational_database_config" {
    for_each = var.values.relational_database_config[*]
    content {
      source_type = relational_database_config.value.source_type
      dynamic "http_endpoint_config" {
        for_each = relational_database_config.value.http_endpoint_config[*]
        content {
          db_cluster_identifier = http_endpoint_config.value.db_cluster_identifier
          aws_secret_store_arn = http_endpoint_config.value.aws_secret_store_arn
          database_name = http_endpoint_config.value.database_name
          region = http_endpoint_config.value.region
          schema = http_endpoint_config.value.schema
        }
      }
    }
  }
  {{- end }}
  {{- if $.Values.service_role_arn }}
  service_role_arn = var.values.service_role_arn
  {{- end }}
  {{- if $.Values.type }}
  type = var.values.type
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
    value = aws_appsync_datasource.this.arn
}

output "service_role_arn" {
    value = aws_appsync_datasource.this.service_role_arn
}

