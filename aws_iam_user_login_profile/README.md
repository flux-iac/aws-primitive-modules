
# Primitive Module: aws_iam_user_login_profile

This is the Weave TF-controller primitive module for resource `aws_iam_user_login_profile`.

## Description

Manages an IAM User Login Profile with limited support for password creation during Terraform resource creation. Uses PGP to encrypt the password for safe transport to the user. PGP keys can be obtained from Keybase.

-> To reset an IAM User login password via Terraform, you can use the [`terraform taint` command](https://www.terraform.io/docs/commands/taint.html) or change any of the arguments.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_iam_user_login_profile
  values:
    lifecycle:
      ignore_changes:
      - ${password_length}
      - ${password_reset_required}
      - ${pgp_key}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
