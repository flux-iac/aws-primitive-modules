
# Primitive Module: aws_appconfig_hosted_configuration_version

This is the Weave TF-controller primitive module for the resource `aws_appconfig_hosted_configuration_version`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_hosted_configuration_version). **The example below still needs to be tested and validated**.

## Description

Provides an AppConfig Hosted Configuration Version resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appconfig_hosted_configuration_version
  values:
    application_id: << id of an aws_appconfig_application >>
    configuration_profile_id: << configuration_profile_id of an aws_appconfig_configuration_profile >>
    content: '{"foo":"bar","fruit":["apple","pear","orange"],"isThingEnabled":true}'
    content_type: application/json
    description: Example Freeform Hosted Configuration Version
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_hosted_configuration_version#argument-reference) for the arguments accepted by the `aws_appconfig_hosted_configuration_version` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_hosted_configuration_version#attributes-reference) for the attributes exported by the `aws_appconfig_hosted_configuration_version` resource.
