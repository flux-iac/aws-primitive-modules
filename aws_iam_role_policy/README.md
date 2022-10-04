
# Primitive Module: aws_iam_role_policy

This is the Weave TF-controller primitive module for resource `aws_iam_role_policy`.

## Description

Provides an IAM role inline policy.

~> **NOTE:** For a given role, this resource is incompatible with using the [`aws_iam_role` resource](/docs/providers/aws/r/iam_role.html) `inline_policy` argument. When using that argument and this resource, both will attempt to manage the role's inline policies and Terraform will show a permanent difference.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-policy
  namespace: flux-system
spec:
  path: aws_iam_role_policy
  values:
    name: test_policy
    policy: '{"Statement":[{"Action":["ec2:Describe*"],"Effect":"Allow","Resource":"*"}],"Version":"2012-10-17"}'
    role: << id of an aws_iam_role >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_iam_role_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_iam_role_policy` resource.
