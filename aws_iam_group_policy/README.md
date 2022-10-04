
# Primitive Module: aws_iam_group_policy

This is the Weave TF-controller primitive module for resource `aws_iam_group_policy`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy). **The example below still needs to be tested and validated**.

## Description

Provides an IAM policy attached to a group.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: my-developer-policy
  namespace: flux-system
spec:
  path: aws_iam_group_policy
  values:
    group: << name of an aws_iam_group >>
    name: my_developer_policy
    policy: '{"Statement":[{"Action":["ec2:Describe*"],"Effect":"Allow","Resource":"*"}],"Version":"2012-10-17"}'
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy#argument-reference) for the arguments accepted by the `aws_iam_group_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy#attributes-reference) for the attributes exported by the `aws_iam_group_policy` resource.
