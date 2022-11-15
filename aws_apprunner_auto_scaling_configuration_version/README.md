
# Primitive Module: aws_apprunner_auto_scaling_configuration_version

This is the Weave TF-controller primitive module for the resource `aws_apprunner_auto_scaling_configuration_version`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_auto_scaling_configuration_version). **The example below still needs to be tested and validated**.

## Description

Manages an App Runner AutoScaling Configuration Version.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_apprunner_auto_scaling_configuration_version
  values:
    auto_scaling_configuration_name: example
    max_concurrency: 50
    max_size: 10
    min_size: 2
    tags:
      Name: example-apprunner-autoscaling
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_auto_scaling_configuration_version#argument-reference) for the arguments accepted by the `aws_apprunner_auto_scaling_configuration_version` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_auto_scaling_configuration_version#attributes-reference) for the attributes exported by the `aws_apprunner_auto_scaling_configuration_version` resource.
