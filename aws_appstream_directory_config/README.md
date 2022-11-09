
# Primitive Module: aws_appstream_directory_config

This is the Weave TF-controller primitive module for the resource `aws_appstream_directory_config`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_directory_config). **The example below still needs to be tested and validated**.

## Description

Provides an AppStream Directory Config.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appstream_directory_config
  values:
    directory_name: NAME OF DIRECTORY
    service_account_credentials:
      account_name: NAME OF ACCOUNT
      account_password: PASSWORD OF ACCOUNT
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_directory_config#argument-reference) for the arguments accepted by the `aws_appstream_directory_config` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_directory_config#attributes-reference) for the attributes exported by the `aws_appstream_directory_config` resource.
