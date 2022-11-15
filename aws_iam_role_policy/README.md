
# Primitive Module: aws_iam_role_policy

This is the Weave TF-controller primitive module for the resource `aws_iam_role_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy). **The example below still needs to be tested and validated**.

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
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy#argument-reference) for the arguments accepted by the `aws_iam_role_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy#attributes-reference) for the attributes exported by the `aws_iam_role_policy` resource.
