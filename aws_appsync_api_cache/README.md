
# Primitive Module: aws_appsync_api_cache

This is the Weave TF-controller primitive module for the resource `aws_appsync_api_cache`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_api_cache). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync API Cache.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appsync_api_cache
  values:
    api_caching_behavior: FULL_REQUEST_CACHING
    api_id: << id of an aws_appsync_graphql_api >>
    ttl: 900
    type: LARGE
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_api_cache#argument-reference) for the arguments accepted by the `aws_appsync_api_cache` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_api_cache#attributes-reference) for the attributes exported by the `aws_appsync_api_cache` resource.
