
# Primitive Module: aws_ecs_account_setting_default

This is the Weave TF-controller primitive module for the resource `aws_ecs_account_setting_default`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_account_setting_default). **The example below still needs to be tested and validated**.

## Description

Provides an ECS default account setting for a specific ECS Resource name within a specific region. More information can be found on the [ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html).

~> **NOTE:** The AWS API does not delete this resource. When you run `destroy`, the provider will attempt to disable the setting.

~> **NOTE:** Your AWS account may not support disabling `containerInstanceLongArnFormat`, `serviceLongArnFormat`, and `taskLongArnFormat`. If your account does not support disabling these, "destroying" this resource will not disable the setting nor cause a Terraform error. However, the AWS Provider will log an AWS error: `InvalidParameterException: You can no longer disable Long Arn settings`.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_ecs_account_setting_default
  values:
    name: taskLongArnFormat
    value: enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_account_setting_default#argument-reference) for the arguments accepted by the `aws_ecs_account_setting_default` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_account_setting_default#attributes-reference) for the attributes exported by the `aws_ecs_account_setting_default` resource.
