
# Primitive Module: aws_appintegrations_event_integration

This is the Weave TF-controller primitive module for the resource `aws_appintegrations_event_integration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appintegrations_event_integration). **The example below still needs to be tested and validated**.

## Description

Provides an Amazon AppIntegrations Event Integration resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appintegrations_event_integration
  values:
    description: Example Description
    event_filter:
    - source: aws.partner/examplepartner.com
    eventbridge_bus: default
    name: example-name
    tags:
      Name: Example Event Integration
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appintegrations_event_integration#argument-reference) for the arguments accepted by the `aws_appintegrations_event_integration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appintegrations_event_integration#attributes-reference) for the attributes exported by the `aws_appintegrations_event_integration` resource.
