
# Primitive Module: aws_iam_instance_profile

This is the Weave TF-controller primitive module for resource `aws_iam_instance_profile`.

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
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_iam_instance_profile` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_iam_instance_profile` resource.
