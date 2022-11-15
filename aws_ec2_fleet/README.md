
# Primitive Module: aws_ec2_fleet

This is the Weave TF-controller primitive module for the resource `aws_ec2_fleet`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_fleet). **The example below still needs to be tested and validated**.

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
    - launch_template_specification:
      - launch_template_id: << id of an aws_launch_template >>
        version: << latest_version of an aws_launch_template >>
    target_capacity_specification:
    - default_target_capacity_type: spot
      total_target_capacity: 5
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_fleet#argument-reference) for the arguments accepted by the `aws_ec2_fleet` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_fleet#attributes-reference) for the attributes exported by the `aws_ec2_fleet` resource.
