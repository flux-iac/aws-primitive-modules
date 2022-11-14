######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ecs_task_definition
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
    container_definitions = optional(string)
    cpu = optional(string)
    ephemeral_storage = optional(list(object({
        size_in_gib = optional(number)
    })))
    execution_role_arn = optional(string)
    family = optional(string)
    inference_accelerator = optional(set(object({
        device_name = optional(string)
        device_type = optional(string)
    })))
    ipc_mode = optional(string)
    memory = optional(string)
    network_mode = optional(string)
    pid_mode = optional(string)
    placement_constraints = optional(set(object({
        type = optional(string)
        expression = optional(string)
    })))
    proxy_configuration = optional(list(object({
        container_name = optional(string)
        properties = optional(map(string))
        type = optional(string)
    })))
    requires_compatibilities = optional(set(string))
    runtime_platform = optional(list(object({
        cpu_architecture = optional(string)
        operating_system_family = optional(string)
    })))
    skip_destroy = optional(bool)
    tags = optional(map(string))
    task_role_arn = optional(string)
    volume = optional(set(object({
        docker_volume_configuration = optional(list(object({
            autoprovision = optional(bool)
            driver = optional(string)
            driver_opts = optional(map(string))
            labels = optional(map(string))
            scope = optional(string)
        })))
        efs_volume_configuration = optional(list(object({
            authorization_config = optional(list(object({
                access_point_id = optional(string)
                iam = optional(string)
            })))
            file_system_id = optional(string)
            root_directory = optional(string)
            transit_encryption = optional(string)
            transit_encryption_port = optional(number)
        })))
        fsx_windows_file_server_volume_configuration = optional(list(object({
            file_system_id = optional(string)
            root_directory = optional(string)
            authorization_config = optional(list(object({
                credentials_parameter = optional(string)
                domain = optional(string)
            })))
        })))
        host_path = optional(string)
        name = optional(string)
    })))
  })
}

resource "aws_ecs_task_definition" "this" {

  {{- if $.Values.container_definitions }}
  container_definitions = var.values.container_definitions
  {{- end }}
  {{- if $.Values.cpu }}
  cpu = var.values.cpu
  {{- end }}
  {{- if $.Values.ephemeral_storage }}
  dynamic "ephemeral_storage" {
    for_each = var.values.ephemeral_storage[*]
    content {
      size_in_gib = ephemeral_storage.value.size_in_gib
    }
  }
  {{- end }}
  {{- if $.Values.execution_role_arn }}
  execution_role_arn = var.values.execution_role_arn
  {{- end }}
  {{- if $.Values.family }}
  family = var.values.family
  {{- end }}
  {{- if $.Values.inference_accelerator }}
  dynamic "inference_accelerator" {
    for_each = var.values.inference_accelerator[*]
    content {
      device_name = inference_accelerator.value.device_name
      device_type = inference_accelerator.value.device_type
    }
  }
  {{- end }}
  {{- if $.Values.ipc_mode }}
  ipc_mode = var.values.ipc_mode
  {{- end }}
  {{- if $.Values.memory }}
  memory = var.values.memory
  {{- end }}
  {{- if $.Values.network_mode }}
  network_mode = var.values.network_mode
  {{- end }}
  {{- if $.Values.pid_mode }}
  pid_mode = var.values.pid_mode
  {{- end }}
  {{- if $.Values.placement_constraints }}
  dynamic "placement_constraints" {
    for_each = var.values.placement_constraints[*]
    content {
      expression = placement_constraints.value.expression
      type = placement_constraints.value.type
    }
  }
  {{- end }}
  {{- if $.Values.proxy_configuration }}
  dynamic "proxy_configuration" {
    for_each = var.values.proxy_configuration[*]
    content {
      type = proxy_configuration.value.type
      container_name = proxy_configuration.value.container_name
      properties = proxy_configuration.value.properties
    }
  }
  {{- end }}
  {{- if $.Values.requires_compatibilities }}
  requires_compatibilities = var.values.requires_compatibilities
  {{- end }}
  {{- if $.Values.runtime_platform }}
  dynamic "runtime_platform" {
    for_each = var.values.runtime_platform[*]
    content {
      cpu_architecture = runtime_platform.value.cpu_architecture
      operating_system_family = runtime_platform.value.operating_system_family
    }
  }
  {{- end }}
  {{- if $.Values.skip_destroy }}
  skip_destroy = var.values.skip_destroy
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.task_role_arn }}
  task_role_arn = var.values.task_role_arn
  {{- end }}
  {{- if $.Values.volume }}
  dynamic "volume" {
    for_each = var.values.volume[*]
    content {
      dynamic "efs_volume_configuration" {
        for_each = volume.value.efs_volume_configuration[*]
        content {
          file_system_id = efs_volume_configuration.value.file_system_id
          root_directory = efs_volume_configuration.value.root_directory
          transit_encryption = efs_volume_configuration.value.transit_encryption
          transit_encryption_port = efs_volume_configuration.value.transit_encryption_port
          dynamic "authorization_config" {
            for_each = efs_volume_configuration.value.authorization_config[*]
            content {
              access_point_id = authorization_config.value.access_point_id
              iam = authorization_config.value.iam
            }
          }
        }
      }
      dynamic "fsx_windows_file_server_volume_configuration" {
        for_each = volume.value.fsx_windows_file_server_volume_configuration[*]
        content {
          file_system_id = fsx_windows_file_server_volume_configuration.value.file_system_id
          root_directory = fsx_windows_file_server_volume_configuration.value.root_directory
          dynamic "authorization_config" {
            for_each = fsx_windows_file_server_volume_configuration.value.authorization_config[*]
            content {
              credentials_parameter = authorization_config.value.credentials_parameter
              domain = authorization_config.value.domain
            }
          }
        }
      }
      host_path = volume.value.host_path
      name = volume.value.name
      dynamic "docker_volume_configuration" {
        for_each = volume.value.docker_volume_configuration[*]
        content {
          driver = docker_volume_configuration.value.driver
          driver_opts = docker_volume_configuration.value.driver_opts
          labels = docker_volume_configuration.value.labels
          scope = docker_volume_configuration.value.scope
          autoprovision = docker_volume_configuration.value.autoprovision
        }
      }
    }
  }
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
    value = aws_ecs_task_definition.this.arn
}

output "execution_role_arn" {
    value = aws_ecs_task_definition.this.execution_role_arn
}

output "network_mode" {
    value = aws_ecs_task_definition.this.network_mode
}

output "revision" {
    value = aws_ecs_task_definition.this.revision
}

output "task_role_arn" {
    value = aws_ecs_task_definition.this.task_role_arn
}

