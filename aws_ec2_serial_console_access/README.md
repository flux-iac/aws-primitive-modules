
# Primitive Module: aws_ec2_serial_console_access

This is the Weave TF-controller primitive module for resource `aws_ec2_serial_console_access`.

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
  approvalPlan: auto
  interval: 1h0m
```
