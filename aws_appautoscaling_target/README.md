
# Primitive Module: aws_appautoscaling_target

This is the Weave TF-controller primitive module for the resource `aws_appautoscaling_target`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target). **The example below still needs to be tested and validated**.

## Description

Provides an Application AutoScaling ScalableTarget resource. To manage policies which get attached to the target, see the [`aws_appautoscaling_policy` resource](/docs/providers/aws/r/appautoscaling_policy.html).

~> **NOTE:** The [Application Auto Scaling service automatically attempts to manage IAM Service-Linked Roles](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) when registering certain service namespaces for the first time. To manually manage this role, see the [`aws_iam_service_linked_role` resource](/docs/providers/aws/r/iam_service_linked_role.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: dynamodb-table-read-target
  namespace: flux-system
spec:
  path: aws_appautoscaling_target
  values:
    max_capacity: 100
    min_capacity: 5
    resource_id: table/<< name of an aws_dynamodb_table >>
    scalable_dimension: dynamodb:table:ReadCapacityUnits
    service_namespace: dynamodb
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target#argument-reference) for the arguments accepted by the `aws_appautoscaling_target` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target#attributes-reference) for the attributes exported by the `aws_appautoscaling_target` resource.
