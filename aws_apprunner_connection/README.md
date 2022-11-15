
# Primitive Module: aws_apprunner_connection

This is the Weave TF-controller primitive module for the resource `aws_apprunner_connection`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_connection). **The example below still needs to be tested and validated**.

## Description

Manages an App Runner Connection.

~> **NOTE:** After creation, you must complete the authentication handshake using the App Runner console.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_apprunner_connection
  values:
    connection_name: example
    provider_type: GITHUB
    tags:
      Name: example-apprunner-connection
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_connection#argument-reference) for the arguments accepted by the `aws_apprunner_connection` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_connection#attributes-reference) for the attributes exported by the `aws_apprunner_connection` resource.
