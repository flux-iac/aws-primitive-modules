######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb_listener_rule
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
    action = optional(list(object({
        order = optional(number)
        target_group_arn = optional(string)
        forward = optional(list(object({
            stickiness = optional(list(object({
                enabled = optional(bool)
                duration = optional(number)
            })))
            target_group = optional(set(object({
                arn = optional(string)
                weight = optional(number)
            })))
        })))
        redirect = optional(list(object({
            path = optional(string)
            port = optional(string)
            protocol = optional(string)
            query = optional(string)
            status_code = optional(string)
            host = optional(string)
        })))
        fixed_response = optional(list(object({
            message_body = optional(string)
            status_code = optional(string)
            content_type = optional(string)
        })))
        authenticate_cognito = optional(list(object({
            scope = optional(string)
            session_cookie_name = optional(string)
            session_timeout = optional(number)
            user_pool_arn = optional(string)
            user_pool_client_id = optional(string)
            user_pool_domain = optional(string)
            authentication_request_extra_params = optional(map(string))
            on_unauthenticated_request = optional(string)
        })))
        authenticate_oidc = optional(list(object({
            authentication_request_extra_params = optional(map(string))
            client_id = optional(string)
            issuer = optional(string)
            on_unauthenticated_request = optional(string)
            session_timeout = optional(number)
            token_endpoint = optional(string)
            authorization_endpoint = optional(string)
            client_secret = optional(string)
            scope = optional(string)
            session_cookie_name = optional(string)
            user_info_endpoint = optional(string)
        })))
        type = optional(string)
    })))
    condition = optional(set(object({
        http_request_method = optional(list(object({
            values = optional(set(string))
        })))
        path_pattern = optional(list(object({
            values = optional(set(string))
        })))
        query_string = optional(set(object({
            key = optional(string)
            value = optional(string)
        })))
        source_ip = optional(list(object({
            values = optional(set(string))
        })))
        host_header = optional(list(object({
            values = optional(set(string))
        })))
        http_header = optional(list(object({
            values = optional(set(string))
            http_header_name = optional(string)
        })))
    })))
    listener_arn = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_lb_listener_rule" "this" {

  {{- if $.Values.action }}
  action = var.values.action
  {{- end }}
  {{- if $.Values.condition }}
  dynamic "condition" {
    for_each = var.values.condition[*]
    content {
      source_ip = condition.value.source_ip
      host_header = condition.value.host_header
      http_header = condition.value.http_header
      http_request_method = condition.value.http_request_method
      path_pattern = condition.value.path_pattern
      dynamic "query_string" {
        for_each = condition.value.query_string[*]
        content {
          key = query_string.value.key
          value = query_string.value.value
        }
      }
    }
  }
  {{- end }}
  {{- if $.Values.listener_arn }}
  listener_arn = var.values.listener_arn
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
    value = aws_lb_listener_rule.this.arn
}

output "listener_arn" {
    value = aws_lb_listener_rule.this.listener_arn
}

output "priority" {
    value = aws_lb_listener_rule.this.priority
}

