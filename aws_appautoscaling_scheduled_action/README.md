
# Primitive Module: aws_appautoscaling_scheduled_action

This is the Weave TF-controller primitive module for the resource `aws_appautoscaling_scheduled_action`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_scheduled_action). **The example below still needs to be tested and validated**.

## Description

Provides an Application AutoScaling ScheduledAction resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: dynamodb
  namespace: flux-system
spec:
  path: aws_appautoscaling_scheduled_action
  values:
    name: dynamodb
    resource_id: << resource_id of an aws_appautoscaling_target >>
    scalable_dimension: << scalable_dimension of an aws_appautoscaling_target >>
    scalable_target_action:
      max_capacity: 200
      min_capacity: 1
    schedule: at(2006-01-02T15:04:05)
    service_namespace: << service_namespace of an aws_appautoscaling_target >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_scheduled_action#argument-reference) for the arguments accepted by the `aws_appautoscaling_scheduled_action` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_scheduled_action#attributes-reference) for the attributes exported by the `aws_appautoscaling_scheduled_action` resource.
