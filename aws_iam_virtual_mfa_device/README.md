
# Primitive Module: aws_iam_virtual_mfa_device

This is the Weave TF-controller primitive module for resource `aws_iam_virtual_mfa_device`.

## Description

Provides an IAM Virtual MFA Device.

~> **Note:** All attributes will be stored in the raw state as plain-text.
[Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_iam_virtual_mfa_device
  values:
    virtual_mfa_device_name: example
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
