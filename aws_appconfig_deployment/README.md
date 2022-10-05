
# Primitive Module: aws_appconfig_deployment

This is the Weave TF-controller primitive module for the resource `aws_appconfig_deployment`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_deployment). **The example below still needs to be tested and validated**.

## Description

Provides an AppConfig Deployment resource for an [`aws_appconfig_application` resource](appconfig_application.html.markdown).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appconfig_deployment
  values:
    application_id: << id of an aws_appconfig_application >>
    configuration_profile_id: << configuration_profile_id of an aws_appconfig_configuration_profile >>
    configuration_version: << version_number of an aws_appconfig_hosted_configuration_version >>
    deployment_strategy_id: << id of an aws_appconfig_deployment_strategy >>
    description: My example deployment
    environment_id: << environment_id of an aws_appconfig_environment >>
    tags:
      Type: AppConfig Deployment
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_deployment#argument-reference) for the arguments accepted by the `aws_appconfig_deployment` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_deployment#attributes-reference) for the attributes exported by the `aws_appconfig_deployment` resource.
