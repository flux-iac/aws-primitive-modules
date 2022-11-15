
# Primitive Module: aws_iam_user_policy

This is the Weave TF-controller primitive module for the resource `aws_iam_user_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy). **The example below still needs to be tested and validated**.

## Description

Provides an IAM policy attached to a user.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: lb-ro
  namespace: flux-system
spec:
  path: aws_iam_user_policy
  values:
    name: test
    policy: '{"Statement":[{"Action":["ec2:Describe*"],"Effect":"Allow","Resource":"*"}],"Version":"2012-10-17"}'
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy#argument-reference) for the arguments accepted by the `aws_iam_user_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy#attributes-reference) for the attributes exported by the `aws_iam_user_policy` resource.
