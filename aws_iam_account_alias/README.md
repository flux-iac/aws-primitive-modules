
# Primitive Module: aws_iam_account_alias

This is the Weave TF-controller primitive module for resource `aws_iam_account_alias`.

## Description

-> **Note:** There is only a single account alias per AWS account.

Manages the account alias for the AWS Account.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: alias
  namespace: flux-system
spec:
  path: aws_iam_account_alias
  values:
    account_alias: my-account-alias
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```