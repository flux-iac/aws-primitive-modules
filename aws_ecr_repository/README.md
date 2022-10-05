
# Primitive Module: aws_ecr_repository

This is the Weave TF-controller primitive module for the resource `aws_ecr_repository`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository). **The example below still needs to be tested and validated**.

## Description

Provides an Elastic Container Registry Repository.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foo
  namespace: flux-system
spec:
  path: aws_ecr_repository
  values:
    image_scanning_configuration:
      scan_on_push: true
    image_tag_mutability: MUTABLE
    name: bar
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#argument-reference) for the arguments accepted by the `aws_ecr_repository` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#attributes-reference) for the attributes exported by the `aws_ecr_repository` resource.
