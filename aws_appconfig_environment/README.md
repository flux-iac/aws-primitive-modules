
# Primitive Module: aws_appconfig_environment

This is the Weave TF-controller primitive module for the resource `aws_appconfig_environment`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_environment). **The example below still needs to be tested and validated**.

## Description

Provides an AppConfig Environment resource for an [`aws_appconfig_application` resource](appconfig_application.html.markdown). One or more environments can be defined for an application.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appconfig_environment
  values:
    application_id: << id of an aws_appconfig_application >>
    description: Example AppConfig Environment
    monitor:
    - alarm_arn: << arn of an aws_cloudwatch_metric_alarm >>
      alarm_role_arn: << arn of an aws_iam_role >>
    name: example-environment-tf
    tags:
      Type: AppConfig Environment
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_environment#argument-reference) for the arguments accepted by the `aws_appconfig_environment` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appconfig_environment#attributes-reference) for the attributes exported by the `aws_appconfig_environment` resource.
