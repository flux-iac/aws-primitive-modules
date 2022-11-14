######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_eks_node_group
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
    ami_type = optional(string)
    capacity_type = optional(string)
    cluster_name = optional(string)
    disk_size = optional(number)
    force_update_version = optional(bool)
    instance_types = optional(list(string))
    labels = optional(map(string))
    launch_template = optional(list(string))
    node_group_name = optional(string)
    node_group_name_prefix = optional(string)
    node_role_arn = optional(string)
    remote_access = optional(list(object({
        ec2_ssh_key = optional(string)
        source_security_group_ids = optional(set(string))
    })))
    scaling_config = optional(list(object({
        desired_size = optional(number)
        max_size = optional(number)
        min_size = optional(number)
    })))
    subnet_ids = optional(set(string))
    tags = optional(map(string))
    taint = optional(set(object({
        key = optional(string)
        value = optional(string)
        effect = optional(string)
    })))
  })
}

resource "aws_eks_node_group" "this" {

  {{- if $.Values.ami_type }}
  ami_type = var.values.ami_type
  {{- end }}
  {{- if $.Values.capacity_type }}
  capacity_type = var.values.capacity_type
  {{- end }}
  {{- if $.Values.cluster_name }}
  cluster_name = var.values.cluster_name
  {{- end }}
  {{- if $.Values.disk_size }}
  disk_size = var.values.disk_size
  {{- end }}
  {{- if $.Values.force_update_version }}
  force_update_version = var.values.force_update_version
  {{- end }}
  {{- if $.Values.instance_types }}
  instance_types = var.values.instance_types
  {{- end }}
  {{- if $.Values.labels }}
  labels = var.values.labels
  {{- end }}
  {{- if $.Values.launch_template }}
  dynamic "launch_template" {
    for_each = var.values.launch_template[*]
    content {
      id = launch_template.value.id
      name = launch_template.value.name
      version = launch_template.value.version
    }
  }
  {{- end }}
  {{- if $.Values.node_group_name }}
  node_group_name = var.values.node_group_name
  {{- end }}
  {{- if $.Values.node_group_name_prefix }}
  node_group_name_prefix = var.values.node_group_name_prefix
  {{- end }}
  {{- if $.Values.node_role_arn }}
  node_role_arn = var.values.node_role_arn
  {{- end }}
  {{- if $.Values.remote_access }}
  dynamic "remote_access" {
    for_each = var.values.remote_access[*]
    content {
      source_security_group_ids = remote_access.value.source_security_group_ids
      ec2_ssh_key = remote_access.value.ec2_ssh_key
    }
  }
  {{- end }}
  {{- if $.Values.scaling_config }}
  dynamic "scaling_config" {
    for_each = var.values.scaling_config[*]
    content {
      max_size = scaling_config.value.max_size
      min_size = scaling_config.value.min_size
      desired_size = scaling_config.value.desired_size
    }
  }
  {{- end }}
  {{- if $.Values.subnet_ids }}
  subnet_ids = var.values.subnet_ids
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.taint }}
  dynamic "taint" {
    for_each = var.values.taint[*]
    content {
      value = taint.value.value
      effect = taint.value.effect
      key = taint.value.key
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


output "ami_type" {
    value = aws_eks_node_group.this.ami_type
}

output "arn" {
    value = aws_eks_node_group.this.arn
}

output "capacity_type" {
    value = aws_eks_node_group.this.capacity_type
}

output "disk_size" {
    value = aws_eks_node_group.this.disk_size
}

output "node_group_name" {
    value = aws_eks_node_group.this.node_group_name
}

output "node_role_arn" {
    value = aws_eks_node_group.this.node_role_arn
}

output "release_version" {
    value = aws_eks_node_group.this.release_version
}

output "status" {
    value = aws_eks_node_group.this.status
}

output "version" {
    value = aws_eks_node_group.this.version
}

