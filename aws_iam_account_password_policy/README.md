
# Primitive Module: aws_iam_account_password_policy

This is the Weave TF-controller primitive module for resource `aws_iam_account_password_policy`.

## Description

-> **Note:** There is only a single policy allowed per AWS account. An existing policy will be lost when using this resource as an effect of this limitation.

Manages Password Policy for the AWS Account.
See more about [Account Password Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html)
in the official AWS docs.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: strict
  namespace: flux-system
spec:
  path: aws_iam_account_password_policy
  values:
    allow_users_to_change_password: true
    minimum_password_length: 8
    require_lowercase_characters: true
    require_numbers: true
    require_symbols: true
    require_uppercase_characters: true
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
