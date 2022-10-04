
# Primitive Module: aws_iam_group

This is the Weave TF-controller primitive module for resource `aws_iam_group`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group). **The example below still needs to be tested and validated**.

## Description

Provides an IAM group.

~> **NOTE on user management:** Using `aws_iam_group_membership` or `aws_iam_user_group_membership` resources in addition to manually managing user/group membership using the console may lead to configuration drift or conflicts. For this reason, it's recommended to either manage membership entirely with Terraform or entirely within the AWS console.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: developers
  namespace: flux-system
spec:
  path: aws_iam_group
  values:
    name: developers
    path: /users/
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group#argument-reference) for the arguments accepted by the `aws_iam_group` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group#attributes-reference) for the attributes exported by the `aws_iam_group` resource.
