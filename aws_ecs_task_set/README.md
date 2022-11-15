
# Primitive Module: aws_ecs_task_set

This is the Weave TF-controller primitive module for the resource `aws_ecs_task_set`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_set). **The example below still needs to be tested and validated**.

## Description

Provides an ECS task set - effectively a task that is expected to run until an error occurs or a user terminates it (typically a webserver or a database).

See [ECS Task Set section in AWS developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-external.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ecs_task_set
  values:
    cluster: << id of an aws_ecs_cluster >>
    load_balancer:
    - container_name: mongo
      container_port: 8080
      target_group_arn: << arn of an aws_lb_target_group >>
    service: << id of an aws_ecs_service >>
    task_definition: << arn of an aws_ecs_task_definition >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_set#argument-reference) for the arguments accepted by the `aws_ecs_task_set` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_set#attributes-reference) for the attributes exported by the `aws_ecs_task_set` resource.
