
# Primitive Module: aws_iam_instance_profile

This is the Weave TF-controller primitive module for the resource `aws_iam_instance_profile`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile). **The example below still needs to be tested and validated**.

## Description

Provides an IAM instance profile.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-profile
  namespace: flux-system
spec:
  path: aws_iam_instance_profile
  values:
    name: test_profile
    role: << name of an aws_iam_role >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile#argument-reference) for the arguments accepted by the `aws_iam_instance_profile` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile#attributes-reference) for the attributes exported by the `aws_iam_instance_profile` resource.
