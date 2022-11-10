
# Primitive Module: aws_apprunner_observability_configuration

This is the Weave TF-controller primitive module for the resource `aws_apprunner_observability_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_observability_configuration). **The example below still needs to be tested and validated**.

## Description

Manages an App Runner Observability Configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_apprunner_observability_configuration
  values:
    observability_configuration_name: example
    tags:
      Name: example-apprunner-observability-configuration
    trace_configuration:
    - vendor: AWSXRAY
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_observability_configuration#argument-reference) for the arguments accepted by the `aws_apprunner_observability_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_observability_configuration#attributes-reference) for the attributes exported by the `aws_apprunner_observability_configuration` resource.
