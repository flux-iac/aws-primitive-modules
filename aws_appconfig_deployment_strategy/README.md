
# Primitive Module: aws_appconfig_deployment_strategy

This is the Weave TF-controller primitive module for the resource `aws_appconfig_deployment_strategy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_deployment_strategy). **The example below still needs to be tested and validated**.

## Description

Provides an AppConfig Deployment Strategy resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appconfig_deployment_strategy
  values:
    deployment_duration_in_minutes: 3
    description: Example Deployment Strategy
    final_bake_time_in_minutes: 4
    growth_factor: 10
    growth_type: LINEAR
    name: example-deployment-strategy-tf
    replicate_to: NONE
    tags:
      Type: AppConfig Deployment Strategy
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_deployment_strategy#argument-reference) for the arguments accepted by the `aws_appconfig_deployment_strategy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_deployment_strategy#attributes-reference) for the attributes exported by the `aws_appconfig_deployment_strategy` resource.
