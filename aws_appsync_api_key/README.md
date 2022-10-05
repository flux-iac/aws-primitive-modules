
# Primitive Module: aws_appsync_api_key

This is the Weave TF-controller primitive module for the resource `aws_appsync_api_key`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_api_key). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync API Key.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appsync_api_key
  values:
    api_id: << id of an aws_appsync_graphql_api >>
    expires: "2018-05-03T04:00:00Z"
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_api_key#argument-reference) for the arguments accepted by the `aws_appsync_api_key` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_api_key#attributes-reference) for the attributes exported by the `aws_appsync_api_key` resource.
