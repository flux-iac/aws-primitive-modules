######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appmesh_route
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
    mesh_name = optional(string)
    mesh_owner = optional(string)
    name = optional(string)
    spec = optional(list(object({
        grpc_route = optional(list(object({
            action = optional(list(object({
                weighted_target = optional(set(object({
                    virtual_node = optional(string)
                    weight = optional(number)
                })))
            })))
            match = optional(list(object({
                metadata = optional(set(object({
                    name = optional(string)
                    invert = optional(bool)
                    match = optional(list(object({
                        range = optional(list(object({
                            end = optional(number)
                            start = optional(number)
                        })))
                        regex = optional(string)
                        suffix = optional(string)
                        exact = optional(string)
                        prefix = optional(string)
                    })))
                })))
                method_name = optional(string)
                prefix = optional(string)
                service_name = optional(string)
            })))
            retry_policy = optional(list(object({
                grpc_retry_events = optional(set(string))
                http_retry_events = optional(set(string))
                max_retries = optional(number)
                per_retry_timeout = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
                tcp_retry_events = optional(set(string))
            })))
            timeout = optional(list(object({
                idle = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
                per_request = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
            })))
        })))
        http2_route = optional(list(object({
            action = optional(list(object({
                weighted_target = optional(set(object({
                    weight = optional(number)
                    virtual_node = optional(string)
                })))
            })))
            match = optional(list(object({
                scheme = optional(string)
                header = optional(set(object({
                    invert = optional(bool)
                    match = optional(list(object({
                        exact = optional(string)
                        prefix = optional(string)
                        range = optional(list(object({
                            end = optional(number)
                            start = optional(number)
                        })))
                        regex = optional(string)
                        suffix = optional(string)
                    })))
                    name = optional(string)
                })))
                method = optional(string)
                prefix = optional(string)
            })))
            retry_policy = optional(list(object({
                http_retry_events = optional(set(string))
                max_retries = optional(number)
                per_retry_timeout = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
                tcp_retry_events = optional(set(string))
            })))
            timeout = optional(list(object({
                idle = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
                per_request = optional(list(object({
                    value = optional(number)
                    unit = optional(string)
                })))
            })))
        })))
        http_route = optional(list(object({
            action = optional(list(object({
                weighted_target = optional(set(object({
                    virtual_node = optional(string)
                    weight = optional(number)
                })))
            })))
            match = optional(list(object({
                prefix = optional(string)
                scheme = optional(string)
                header = optional(set(object({
                    invert = optional(bool)
                    match = optional(list(object({
                        exact = optional(string)
                        prefix = optional(string)
                        range = optional(list(object({
                            end = optional(number)
                            start = optional(number)
                        })))
                        regex = optional(string)
                        suffix = optional(string)
                    })))
                    name = optional(string)
                })))
                method = optional(string)
            })))
            retry_policy = optional(list(object({
                http_retry_events = optional(set(string))
                max_retries = optional(number)
                per_retry_timeout = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
                tcp_retry_events = optional(set(string))
            })))
            timeout = optional(list(object({
                idle = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
                per_request = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
            })))
        })))
        priority = optional(number)
        tcp_route = optional(list(object({
            action = optional(list(object({
                weighted_target = optional(set(object({
                    weight = optional(number)
                    virtual_node = optional(string)
                })))
            })))
            timeout = optional(list(object({
                idle = optional(list(object({
                    unit = optional(string)
                    value = optional(number)
                })))
            })))
        })))
    })))
    tags = optional(map(string))
    virtual_router_name = optional(string)
  })
}

resource "aws_appmesh_route" "this" {

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
  spec = var.values.spec
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.virtual_router_name }}
  virtual_router_name = var.values.virtual_router_name
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
    value = aws_appmesh_route.this.arn
}

output "created_date" {
    value = aws_appmesh_route.this.created_date
}

output "last_updated_date" {
    value = aws_appmesh_route.this.last_updated_date
}

output "mesh_owner" {
    value = aws_appmesh_route.this.mesh_owner
}

output "resource_owner" {
    value = aws_appmesh_route.this.resource_owner
}

