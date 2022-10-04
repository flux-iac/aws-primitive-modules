
# Primitive Module: aws_iam_user

This is the Weave TF-controller primitive module for resource `aws_iam_user`.

## Description

Provides an IAM user.

~> *NOTE:* If policies are attached to the user via the [`aws_iam_policy_attachment` resource](/docs/providers/aws/r/iam_policy_attachment.html) and you are modifying the user `name` or `path`, the `force_destroy` argument must be set to `true` and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The [`aws_iam_user_policy_attachment` resource (recommended)](/docs/providers/aws/r/iam_user_policy_attachment.html) does not have this requirement.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: lb
  namespace: flux-system
spec:
  path: aws_iam_user
  values:
    name: loadbalancer
    path: /system/
    tags:
      tag-key: tag-value
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by `aws_iam_user` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_iam_user` resource.
