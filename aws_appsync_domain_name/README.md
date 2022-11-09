
# Primitive Module: aws_appsync_domain_name

This is the Weave TF-controller primitive module for the resource `aws_appsync_domain_name`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_domain_name). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync Domain Name.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appsync_domain_name
  values:
    certificate_arn: << arn of an aws_acm_certificate >>
    domain_name: api.example.com
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_domain_name#argument-reference) for the arguments accepted by the `aws_appsync_domain_name` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_domain_name#attributes-reference) for the attributes exported by the `aws_appsync_domain_name` resource.
