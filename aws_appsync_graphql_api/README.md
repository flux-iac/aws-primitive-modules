
# Primitive Module: aws_appsync_graphql_api

This is the Weave TF-controller primitive module for the resource `aws_appsync_graphql_api`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_graphql_api). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync GraphQL API.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appsync_graphql_api
  values:
    authentication_type: API_KEY
    name: example
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_graphql_api#argument-reference) for the arguments accepted by the `aws_appsync_graphql_api` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_graphql_api#attributes-reference) for the attributes exported by the `aws_appsync_graphql_api` resource.
