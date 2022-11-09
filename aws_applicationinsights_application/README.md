
# Primitive Module: aws_applicationinsights_application

This is the Weave TF-controller primitive module for the resource `aws_applicationinsights_application`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/applicationinsights_application). **The example below still needs to be tested and validated**.

## Description

Provides a ApplicationInsights Application resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_applicationinsights_application
  values:
    resource_group_name: << name of an aws_resourcegroups_group >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/applicationinsights_application#argument-reference) for the arguments accepted by the `aws_applicationinsights_application` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/applicationinsights_application#attributes-reference) for the attributes exported by the `aws_applicationinsights_application` resource.
