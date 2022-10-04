
# Primitive Module: aws_ec2_serial_console_access

This is the Weave TF-controller primitive module for resource `aws_ec2_serial_console_access`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_serial_console_access). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage whether serial console access is enabled for your AWS account in the current AWS region.

~> **NOTE:** Removing this Terraform resource disables serial console access.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_serial_console_access
  values:
    enabled: true
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_serial_console_access#argument-reference) for the arguments accepted by the `aws_ec2_serial_console_access` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_serial_console_access#attributes-reference) for the attributes exported by the `aws_ec2_serial_console_access` resource.
