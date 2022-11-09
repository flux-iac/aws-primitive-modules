
# Primitive Module: aws_ecs_capacity_provider

This is the Weave TF-controller primitive module for the resource `aws_ecs_capacity_provider`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider). **The example below still needs to be tested and validated**.

## Description

Provides an ECS cluster capacity provider. More information can be found on the [ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-capacity-providers.html).

~> **NOTE:** Associating an ECS Capacity Provider to an Auto Scaling Group will automatically add the `AmazonECSManaged` tag to the Auto Scaling Group. This tag should be included in the `aws_autoscaling_group` resource configuration to prevent Terraform from removing it in subsequent executions as well as ensuring the `AmazonECSManaged` tag is propagated to all EC2 Instances in the Auto Scaling Group if `min_size` is above 0 on creation. Any EC2 Instances in the Auto Scaling Group without this tag must be manually be updated, otherwise they may cause unexpected scaling behavior and metrics.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_ecs_capacity_provider
  values:
    auto_scaling_group_provider:
      auto_scaling_group_arn: << arn of an aws_autoscaling_group >>
      managed_scaling:
        maximum_scaling_step_size: 1000
        minimum_scaling_step_size: 1
        status: ENABLED
        target_capacity: 10
      managed_termination_protection: ENABLED
    name: test
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider#argument-reference) for the arguments accepted by the `aws_ecs_capacity_provider` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider#attributes-reference) for the attributes exported by the `aws_ecs_capacity_provider` resource.
