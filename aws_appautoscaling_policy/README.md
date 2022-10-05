
# Primitive Module: aws_appautoscaling_policy

This is the Weave TF-controller primitive module for the resource `aws_appautoscaling_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy). **The example below still needs to be tested and validated**.

## Description

Provides an Application AutoScaling Policy resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: dynamodb-table-read-policy
  namespace: flux-system
spec:
  path: aws_appautoscaling_policy
  values:
    name: DynamoDBReadCapacityUtilization:<< resource_id of an aws_appautoscaling_target >>
    policy_type: TargetTrackingScaling
    resource_id: << resource_id of an aws_appautoscaling_target >>
    scalable_dimension: << scalable_dimension of an aws_appautoscaling_target >>
    service_namespace: << service_namespace of an aws_appautoscaling_target >>
    target_tracking_scaling_policy_configuration:
      predefined_metric_specification:
        predefined_metric_type: DynamoDBReadCapacityUtilization
      target_value: 70
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy#argument-reference) for the arguments accepted by the `aws_appautoscaling_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy#attributes-reference) for the attributes exported by the `aws_appautoscaling_policy` resource.
