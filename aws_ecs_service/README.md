
# Primitive Module: aws_ecs_service

This is the Weave TF-controller primitive module for the resource `aws_ecs_service`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service). **The example below still needs to be tested and validated**.

## Description

-> **Note:** To prevent a race condition during service deletion, make sure to set `depends_on` to the related `aws_iam_role_policy`; otherwise, the policy may be destroyed too soon and the ECS service will then get stuck in the `DRAINING` state.

Provides an ECS service - effectively a task that is expected to run until an error occurs or a user terminates it (typically a webserver or a database).

See [ECS Services section in AWS developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: mongo
  namespace: flux-system
spec:
  path: aws_ecs_service
  values:
    cluster: << id of an aws_ecs_cluster >>
    desired_count: 3
    iam_role: << arn of an aws_iam_role >>
    load_balancer:
    - container_name: mongo
      container_port: 8080
      target_group_arn: << arn of an aws_lb_target_group >>
    name: mongodb
    ordered_placement_strategy:
    - field: cpu
      type: binpack
    placement_constraints:
    - expression: attribute:ecs.availability-zone in [us-west-2a, us-west-2b]
      type: memberOf
    task_definition: << arn of an aws_ecs_task_definition >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service#argument-reference) for the arguments accepted by the `aws_ecs_service` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service#attributes-reference) for the attributes exported by the `aws_ecs_service` resource.
