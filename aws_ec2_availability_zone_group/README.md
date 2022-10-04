
# Primitive Module: aws_ec2_availability_zone_group

This is the Weave TF-controller primitive module for resource `aws_ec2_availability_zone_group`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_availability_zone_group). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Availability Zone Group, such as updating its opt-in status.

~> **NOTE:** This is an advanced Terraform resource. Terraform will automatically assume management of the EC2 Availability Zone Group without import and perform no actions on removal from configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_availability_zone_group
  values:
    group_name: us-west-2-lax-1
    opt_in_status: opted-in
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/ec2_availability_zone_group#argument-reference) for the arguments accepted by the `aws_ec2_availability_zone_group` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/ec2_availability_zone_group#attributes-reference) for the attributes exported by the `aws_ec2_availability_zone_group` resource.
