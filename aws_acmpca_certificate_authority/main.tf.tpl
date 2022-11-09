######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_acmpca_certificate_authority
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
    certificate_authority_configuration = optional(list({
        key_algorithm = optional(string)
        signing_algorithm = optional(string)
        subject = optional(list({
            distinguished_name_qualifier = optional(string)
            given_name = optional(string)
            initials = optional(string)
            organizational_unit = optional(string)
            pseudonym = optional(string)
            state = optional(string)
            common_name = optional(string)
            country = optional(string)
            generation_qualifier = optional(string)
            locality = optional(string)
            organization = optional(string)
            surname = optional(string)
            title = optional(string)
        }))
    }))
    enabled = optional(bool)
    permanent_deletion_time_in_days = optional(number)
    revocation_configuration = optional(list({
        crl_configuration = optional(list({
            expiration_in_days = optional(number)
            s3_bucket_name = optional(string)
            s3_object_acl = optional(string)
            custom_cname = optional(string)
            enabled = optional(bool)
        }))
        ocsp_configuration = optional(list({
            enabled = optional(bool)
            ocsp_custom_cname = optional(string)
        }))
    }))
    tags = optional(map(string))
    type = optional(string)
  })
}

resource "aws_acmpca_certificate_authority" "this" {

  {{- if $.Values.certificate_authority_configuration }}
  certificate_authority_configuration = var.values.certificate_authority_configuration
  {{- end }}
  {{- if $.Values.enabled }}
  enabled = var.values.enabled
  {{- end }}
  {{- if $.Values.permanent_deletion_time_in_days }}
  permanent_deletion_time_in_days = var.values.permanent_deletion_time_in_days
  {{- end }}
  {{- if $.Values.revocation_configuration }}
  revocation_configuration = var.values.revocation_configuration
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
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
    value = aws_acmpca_certificate_authority.this.arn
}

output "certificate" {
    value = aws_acmpca_certificate_authority.this.certificate
}

output "certificate_chain" {
    value = aws_acmpca_certificate_authority.this.certificate_chain
}

output "certificate_signing_request" {
    value = aws_acmpca_certificate_authority.this.certificate_signing_request
}

output "not_after" {
    value = aws_acmpca_certificate_authority.this.not_after
}

output "not_before" {
    value = aws_acmpca_certificate_authority.this.not_before
}

output "serial" {
    value = aws_acmpca_certificate_authority.this.serial
}

output "status" {
    value = aws_acmpca_certificate_authority.this.status
}

output "usage_mode" {
    value = aws_acmpca_certificate_authority.this.usage_mode
}

