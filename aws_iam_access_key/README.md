
# Primitive Module: aws_iam_access_key

This is the Weave TF-controller primitive module for resource `aws_iam_access_key`.

## Description

Provides an IAM access key. This is a set of credentials that allow API requests to be made as an IAM user.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_iam_access_key
  values:
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
