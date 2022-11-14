######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appmesh_virtual_gateway
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
        backend_defaults = optional(list(object({
            client_policy = optional(list(object({
                tls = optional(list(object({
                    enforce = optional(bool)
                    ports = optional(set(number))
                    validation = optional(list(object({
                        subject_alternative_names = optional(list(object({
                            match = optional(list(object({
                                exact = optional(set(string))
                            })))
                        })))
                        trust = optional(list(object({
                            acm = optional(list(object({
                                certificate_authority_arns = optional(set(string))
                            })))
                            file = optional(list(object({
                                certificate_chain = optional(string)
                            })))
                            sds = optional(list(object({
                                secret_name = optional(string)
                            })))
                        })))
                    })))
                    certificate = optional(list(object({
                        file = optional(list(object({
                            certificate_chain = optional(string)
                            private_key = optional(string)
                        })))
                        sds = optional(list(object({
                            secret_name = optional(string)
                        })))
                    })))
                })))
            })))
        })))
        listener = optional(list(object({
            port_mapping = optional(list(object({
                port = optional(number)
                protocol = optional(string)
            })))
            tls = optional(list(object({
                validation = optional(list(object({
                    subject_alternative_names = optional(list(object({
                        match = optional(list(object({
                            exact = optional(set(string))
                        })))
                    })))
                    trust = optional(list(object({
                        sds = optional(list(object({
                            secret_name = optional(string)
                        })))
                        file = optional(list(object({
                            certificate_chain = optional(string)
                        })))
                    })))
                })))
                certificate = optional(list(object({
                    sds = optional(list(object({
                        secret_name = optional(string)
                    })))
                    acm = optional(list(object({
                        certificate_arn = optional(string)
                    })))
                    file = optional(list(object({
                        private_key = optional(string)
                        certificate_chain = optional(string)
                    })))
                })))
                mode = optional(string)
            })))
            connection_pool = optional(list(object({
                http = optional(list(object({
                    max_connections = optional(number)
                    max_pending_requests = optional(number)
                })))
                http2 = optional(list(object({
                    max_requests = optional(number)
                })))
                grpc = optional(list(object({
                    max_requests = optional(number)
                })))
            })))
            health_check = optional(list(object({
                unhealthy_threshold = optional(number)
                healthy_threshold = optional(number)
                interval_millis = optional(number)
                path = optional(string)
                port = optional(number)
                protocol = optional(string)
                timeout_millis = optional(number)
            })))
        })))
        logging = optional(list(object({
            access_log = optional(list(object({
                file = optional(list(object({
                    path = optional(string)
                })))
            })))
        })))
    })))
    tags = optional(map(string))
  })
}

resource "aws_appmesh_virtual_gateway" "this" {

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
      dynamic "backend_defaults" {
        for_each = spec.value.backend_defaults[*]
        content {
          dynamic "client_policy" {
            for_each = backend_defaults.value.client_policy[*]
            content {
              dynamic "tls" {
                for_each = client_policy.value.tls[*]
                content {
                  dynamic "certificate" {
                    for_each = tls.value.certificate[*]
                    content {
                      dynamic "file" {
                        for_each = certificate.value.file[*]
                        content {
                          certificate_chain = file.value.certificate_chain
                          private_key = file.value.private_key
                        }
                      }
                      dynamic "sds" {
                        for_each = certificate.value.sds[*]
                        content {
                          secret_name = sds.value.secret_name
                        }
                      }
                    }
                  }
                  enforce = tls.value.enforce
                  ports = tls.value.ports
                  dynamic "validation" {
                    for_each = tls.value.validation[*]
                    content {
                      dynamic "subject_alternative_names" {
                        for_each = validation.value.subject_alternative_names[*]
                        content {
                          dynamic "match" {
                            for_each = subject_alternative_names.value.match[*]
                            content {
                              exact = match.value.exact
                            }
                          }
                        }
                      }
                      dynamic "trust" {
                        for_each = validation.value.trust[*]
                        content {
                          dynamic "acm" {
                            for_each = trust.value.acm[*]
                            content {
                              certificate_authority_arns = acm.value.certificate_authority_arns
                            }
                          }
                          dynamic "file" {
                            for_each = trust.value.file[*]
                            content {
                              certificate_chain = file.value.certificate_chain
                            }
                          }
                          dynamic "sds" {
                            for_each = trust.value.sds[*]
                            content {
                              secret_name = sds.value.secret_name
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      dynamic "listener" {
        for_each = spec.value.listener[*]
        content {
          dynamic "tls" {
            for_each = listener.value.tls[*]
            content {
              dynamic "certificate" {
                for_each = tls.value.certificate[*]
                content {
                  dynamic "acm" {
                    for_each = certificate.value.acm[*]
                    content {
                      certificate_arn = acm.value.certificate_arn
                    }
                  }
                  dynamic "file" {
                    for_each = certificate.value.file[*]
                    content {
                      certificate_chain = file.value.certificate_chain
                      private_key = file.value.private_key
                    }
                  }
                  dynamic "sds" {
                    for_each = certificate.value.sds[*]
                    content {
                      secret_name = sds.value.secret_name
                    }
                  }
                }
              }
              mode = tls.value.mode
              dynamic "validation" {
                for_each = tls.value.validation[*]
                content {
                  dynamic "subject_alternative_names" {
                    for_each = validation.value.subject_alternative_names[*]
                    content {
                      dynamic "match" {
                        for_each = subject_alternative_names.value.match[*]
                        content {
                          exact = match.value.exact
                        }
                      }
                    }
                  }
                  dynamic "trust" {
                    for_each = validation.value.trust[*]
                    content {
                      dynamic "file" {
                        for_each = trust.value.file[*]
                        content {
                          certificate_chain = file.value.certificate_chain
                        }
                      }
                      dynamic "sds" {
                        for_each = trust.value.sds[*]
                        content {
                          secret_name = sds.value.secret_name
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          dynamic "connection_pool" {
            for_each = listener.value.connection_pool[*]
            content {
              dynamic "http" {
                for_each = connection_pool.value.http[*]
                content {
                  max_connections = http.value.max_connections
                  max_pending_requests = http.value.max_pending_requests
                }
              }
              dynamic "http2" {
                for_each = connection_pool.value.http2[*]
                content {
                  max_requests = http2.value.max_requests
                }
              }
              dynamic "grpc" {
                for_each = connection_pool.value.grpc[*]
                content {
                  max_requests = grpc.value.max_requests
                }
              }
            }
          }
          dynamic "health_check" {
            for_each = listener.value.health_check[*]
            content {
              healthy_threshold = health_check.value.healthy_threshold
              interval_millis = health_check.value.interval_millis
              path = health_check.value.path
              port = health_check.value.port
              protocol = health_check.value.protocol
              timeout_millis = health_check.value.timeout_millis
              unhealthy_threshold = health_check.value.unhealthy_threshold
            }
          }
          dynamic "port_mapping" {
            for_each = listener.value.port_mapping[*]
            content {
              port = port_mapping.value.port
              protocol = port_mapping.value.protocol
            }
          }
        }
      }
      dynamic "logging" {
        for_each = spec.value.logging[*]
        content {
          dynamic "access_log" {
            for_each = logging.value.access_log[*]
            content {
              dynamic "file" {
                for_each = access_log.value.file[*]
                content {
                  path = file.value.path
                }
              }
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
    value = aws_appmesh_virtual_gateway.this.arn
}

output "created_date" {
    value = aws_appmesh_virtual_gateway.this.created_date
}

output "last_updated_date" {
    value = aws_appmesh_virtual_gateway.this.last_updated_date
}

output "mesh_owner" {
    value = aws_appmesh_virtual_gateway.this.mesh_owner
}

output "resource_owner" {
    value = aws_appmesh_virtual_gateway.this.resource_owner
}

