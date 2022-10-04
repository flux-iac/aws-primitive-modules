
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
    pgp_key: keybase:some_person_that_exists
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_iam_user_login_profile` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_iam_user_login_profile` resource.
