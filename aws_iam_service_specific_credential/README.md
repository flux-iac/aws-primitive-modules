
# Primitive Module: aws_iam_service_specific_credential

This is the Weave TF-controller primitive module for the resource `aws_iam_service_specific_credential`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_specific_credential). **The example below still needs to be tested and validated**.

## Description

Provides an IAM Service Specific Credential.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_iam_service_specific_credential
  values:
    service_name: codecommit.amazonaws.com
    user_name: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_specific_credential#argument-reference) for the arguments accepted by the `aws_iam_service_specific_credential` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_specific_credential#attributes-reference) for the attributes exported by the `aws_iam_service_specific_credential` resource.
