
# Primitive Module: aws_dynamodb_table_replica

This is the Weave TF-controller primitive module for the resource `aws_dynamodb_table_replica`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_replica). **The example below still needs to be tested and validated**.

## Description

Provides a DynamoDB table replica resource for [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html).

~> **Note:** Use `lifecycle` [`ignore_changes`](https://www.terraform.io/docs/configuration/meta-arguments/lifecycle.html#ignore_changes) for `replica` in the associated [aws_dynamodb_table](/docs/providers/aws/r/dynamodb_table.html) configuration.

~> **Note:** Do not use the `replica` configuration block of [aws_dynamodb_table](/docs/providers/aws/r/dynamodb_table.html) together with this resource as the two configuration options are mutually exclusive.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_dynamodb_table_replica
  values:
    global_table_arn: << arn of an aws_dynamodb_table >>
    provider: aws.alt
    tags:
      Name: IZPAWS
      Pozo: Amargo
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_replica#argument-reference) for the arguments accepted by the `aws_dynamodb_table_replica` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_replica#attributes-reference) for the attributes exported by the `aws_dynamodb_table_replica` resource.
