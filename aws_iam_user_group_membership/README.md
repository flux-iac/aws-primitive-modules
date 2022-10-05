
# Primitive Module: aws_iam_user_group_membership

This is the Weave TF-controller primitive module for the resource `aws_iam_user_group_membership`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership). **The example below still needs to be tested and validated**.

## Description

Provides a resource for adding an [IAM User][2] to [IAM Groups][1]. This
resource can be used multiple times with the same user for non-overlapping
groups.

To exclusively manage the users in a group, see the
[`aws_iam_group_membership` resource][3].

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-1
  namespace: flux-system
spec:
  path: aws_iam_user_group_membership
  values:
    groups:
    - << name of an aws_iam_group >>
    - << name of an aws_iam_group >>
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-2
  namespace: flux-system
spec:
  path: aws_iam_user_group_membership
  values:
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership#argument-reference) for the arguments accepted by the `aws_iam_user_group_membership` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership#attributes-reference) for the attributes exported by the `aws_iam_user_group_membership` resource.
