
# Primitive Module: aws_ec2_fleet

This is the Weave TF-controller primitive module for resource `aws_ec2_fleet`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/aws_ec2_fleet). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage EC2 Fleets.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_fleet
  values:
    launch_template_config:
      launch_template_specification:
        launch_template_id: << id of an aws_launch_template >>
        version: << latest_version of an aws_launch_template >>
    target_capacity_specification:
      default_target_capacity_type: spot
      total_target_capacity: 5
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_ec2_fleet` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_fleet` resource.
