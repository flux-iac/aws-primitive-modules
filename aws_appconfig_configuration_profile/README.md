
# Primitive Module: aws_appconfig_configuration_profile

This is the Weave TF-controller primitive module for the resource `aws_appconfig_configuration_profile`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_configuration_profile). **The example below still needs to be tested and validated**.

## Description

Provides an AppConfig Configuration Profile resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appconfig_configuration_profile
  values:
    application_id: << id of an aws_appconfig_application >>
    description: Example Configuration Profile
    location_uri: hosted
    name: example-configuration-profile-tf
    tags:
      Type: AppConfig Configuration Profile
    validator:
      content: << arn of an aws_lambda_function >>
      type: LAMBDA
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_configuration_profile#argument-reference) for the arguments accepted by the `aws_appconfig_configuration_profile` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_configuration_profile#attributes-reference) for the attributes exported by the `aws_appconfig_configuration_profile` resource.
