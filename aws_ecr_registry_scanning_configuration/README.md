
# Primitive Module: aws_ecr_registry_scanning_configuration

This is the Weave TF-controller primitive module for the resource `aws_ecr_registry_scanning_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_registry_scanning_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an Elastic Container Registry Scanning Configuration. Can't be completely deleted, instead reverts to the default `BASIC` scanning configuration without rules.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: configuration
  namespace: flux-system
spec:
  path: aws_ecr_registry_scanning_configuration
  values:
    rule:
      repository_filter:
        filter: example
        filter_type: WILDCARD
      scan_frequency: CONTINUOUS_SCAN
    scan_type: ENHANCED
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_registry_scanning_configuration#argument-reference) for the arguments accepted by the `aws_ecr_registry_scanning_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_registry_scanning_configuration#attributes-reference) for the attributes exported by the `aws_ecr_registry_scanning_configuration` resource.
