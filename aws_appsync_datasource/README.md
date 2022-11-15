
# Primitive Module: aws_appsync_datasource

This is the Weave TF-controller primitive module for the resource `aws_appsync_datasource`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_datasource). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync Data Source.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appsync_datasource
  values:
    api_id: << id of an aws_appsync_graphql_api >>
    dynamodb_config:
    - table_name: << name of an aws_dynamodb_table >>
    name: tf_appsync_example
    service_role_arn: << arn of an aws_iam_role >>
    type: AMAZON_DYNAMODB
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_datasource#argument-reference) for the arguments accepted by the `aws_appsync_datasource` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_datasource#attributes-reference) for the attributes exported by the `aws_appsync_datasource` resource.
