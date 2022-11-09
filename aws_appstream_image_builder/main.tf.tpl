######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appstream_image_builder
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
    access_endpoint = optional(set(any))
    appstream_agent_version = optional(string)
    description = optional(string)
    display_name = optional(string)
    domain_join_info = optional(list({
        directory_name = optional(string)
        organizational_unit_distinguished_name = optional(string)
    }))
    enable_default_internet_access = optional(bool)
    iam_role_arn = optional(string)
    image_arn = optional(string)
    image_name = optional(string)
    instance_type = optional(string)
    name = optional(string)
    tags = optional(map(string))
    vpc_config = optional(list({
        security_group_ids = optional(set(string))
        subnet_ids = optional(set(string))
    }))
  })
}

resource "aws_appstream_image_builder" "this" {

  {{- if $.Values.access_endpoint }}
  access_endpoint = var.values.access_endpoint
  {{- end }}
  {{- if $.Values.appstream_agent_version }}
  appstream_agent_version = var.values.appstream_agent_version
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.display_name }}
  display_name = var.values.display_name
  {{- end }}
  {{- if $.Values.domain_join_info }}
  domain_join_info = var.values.domain_join_info
  {{- end }}
  {{- if $.Values.enable_default_internet_access }}
  enable_default_internet_access = var.values.enable_default_internet_access
  {{- end }}
  {{- if $.Values.iam_role_arn }}
  iam_role_arn = var.values.iam_role_arn
  {{- end }}
  {{- if $.Values.image_arn }}
  image_arn = var.values.image_arn
  {{- end }}
  {{- if $.Values.image_name }}
  image_name = var.values.image_name
  {{- end }}
  {{- if $.Values.instance_type }}
  instance_type = var.values.instance_type
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.vpc_config }}
  vpc_config = var.values.vpc_config
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


output "appstream_agent_version" {
    value = aws_appstream_image_builder.this.appstream_agent_version
}

output "arn" {
    value = aws_appstream_image_builder.this.arn
}

output "created_time" {
    value = aws_appstream_image_builder.this.created_time
}

output "description" {
    value = aws_appstream_image_builder.this.description
}

output "display_name" {
    value = aws_appstream_image_builder.this.display_name
}

output "iam_role_arn" {
    value = aws_appstream_image_builder.this.iam_role_arn
}

output "image_arn" {
    value = aws_appstream_image_builder.this.image_arn
}

output "image_name" {
    value = aws_appstream_image_builder.this.image_name
}

output "state" {
    value = aws_appstream_image_builder.this.state
}

