
# Primitive Module: aws_prometheus_workspace

This is the Weave TF-controller primitive module for the resource `aws_prometheus_workspace`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_workspace). **The example below still needs to be tested and validated**.

## Description

Manages an Amazon Managed Service for Prometheus (AMP) Workspace.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_prometheus_workspace
  values:
    alias: example
    tags:
      Environment: production
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_workspace#argument-reference) for the arguments accepted by the `aws_prometheus_workspace` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_workspace#attributes-reference) for the attributes exported by the `aws_prometheus_workspace` resource.
