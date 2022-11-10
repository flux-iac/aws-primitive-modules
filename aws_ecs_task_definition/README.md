
# Primitive Module: aws_ecs_task_definition

This is the Weave TF-controller primitive module for the resource `aws_ecs_task_definition`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition). **The example below still needs to be tested and validated**.

## Description

Manages a revision of an ECS task definition to be used in `aws_ecs_service`.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: service
  namespace: flux-system
spec:
  path: aws_ecs_task_definition
  values:
    container_definitions: '[{"cpu":10,"essential":true,"image":"service-first","memory":512,"name":"first","portMappings":[{"containerPort":80,"hostPort":80}]},{"cpu":10,"essential":true,"image":"service-second","memory":256,"name":"second","portMappings":[{"containerPort":443,"hostPort":443}]}]'
    family: service
    placement_constraints:
    - expression: attribute:ecs.availability-zone in [us-west-2a, us-west-2b]
      type: memberOf
    volume:
    - host_path: /ecs/service-storage
      name: service-storage
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition#argument-reference) for the arguments accepted by the `aws_ecs_task_definition` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition#attributes-reference) for the attributes exported by the `aws_ecs_task_definition` resource.
