
# Primitive Module: aws_iam_account_alias

This is the Weave TF-controller primitive module for the resource `aws_iam_account_alias`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_account_alias). **The example below still needs to be tested and validated**.

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
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_account_alias#argument-reference) for the arguments accepted by the `aws_iam_account_alias` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_account_alias#attributes-reference) for the attributes exported by the `aws_iam_account_alias` resource.
