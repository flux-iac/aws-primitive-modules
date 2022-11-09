
# Primitive Module: aws_iam_policy_attachment

This is the Weave TF-controller primitive module for the resource `aws_iam_policy_attachment`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment). **The example below still needs to be tested and validated**.

## Description

Attaches a Managed IAM Policy to user(s), role(s), and/or group(s)

!> **WARNING:** The aws_iam_policy_attachment resource creates **exclusive** attachments of IAM policies. Across the entire AWS account, all of the users/roles/groups to which a single policy is attached must be declared by a single aws_iam_policy_attachment resource. This means that even any users/roles/groups that have the attached policy via any other mechanism (including other Terraform resources) will have that attached policy revoked by this resource. Consider `aws_iam_role_policy_attachment`, `aws_iam_user_policy_attachment`, or `aws_iam_group_policy_attachment` instead. These resources do not enforce exclusive attachment of an IAM policy.

~> **NOTE:** The usage of this resource conflicts with the `aws_iam_group_policy_attachment`, `aws_iam_role_policy_attachment`, and `aws_iam_user_policy_attachment` resources and will permanently show a difference if both are defined.

~> **NOTE:** For a given role, this resource is incompatible with using the [`aws_iam_role` resource](/docs/providers/aws/r/iam_role.html) `managed_policy_arns` argument. When using that argument and this resource, both will attempt to manage the role's managed policy attachments and Terraform will show a permanent difference.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-attach
  namespace: flux-system
spec:
  path: aws_iam_policy_attachment
  values:
    name: test-attachment
    policy_arn: << arn of an aws_iam_policy >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment#argument-reference) for the arguments accepted by the `aws_iam_policy_attachment` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment#attributes-reference) for the attributes exported by the `aws_iam_policy_attachment` resource.
