######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_replication_configuration
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
  type = object({
    bucket = optional(string)
    role = optional(string)
    rule = optional(list(object({
        destination = optional(list(object({
            account = optional(string)
            bucket = optional(string)
            encryption_configuration = optional(list(object({
                replica_kms_key_id = optional(string)
            })))
            metrics = optional(list(object({
                event_threshold = optional(list(object({
                    minutes = optional(number)
                })))
                status = optional(string)
            })))
            replication_time = optional(list(object({
                status = optional(string)
                time = optional(list(object({
                    minutes = optional(number)
                })))
            })))
            storage_class = optional(string)
            access_control_translation = optional(list(object({
                owner = optional(string)
            })))
        })))
        filter = optional(list(object({
            and = optional(list(object({
                prefix = optional(string)
                tags = optional(map(string))
            })))
            prefix = optional(string)
            tag = optional(list(object({
                value = optional(string)
                key = optional(string)
            })))
        })))
        prefix = optional(string)
        source_selection_criteria = optional(list(object({
            replica_modifications = optional(list(object({
                status = optional(string)
            })))
            sse_kms_encrypted_objects = optional(list(object({
                status = optional(string)
            })))
        })))
        status = optional(string)
        delete_marker_replication = optional(list(object({
            status = optional(string)
        })))
        existing_object_replication = optional(list(object({
            status = optional(string)
        })))
        id = optional(string)
        priority = optional(number)
    })))
    token = optional(string)
  })
}

resource "aws_s3_bucket_replication_configuration" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.role }}
  role = var.values.role
  {{- end }}
  {{- if $.Values.rule }}
  rule = var.values.rule
  {{- end }}
  {{- if $.Values.token }}
  token = var.values.token
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


