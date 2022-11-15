
# Primitive Module: aws_dynamodb_table_item

This is the Weave TF-controller primitive module for the resource `aws_dynamodb_table_item`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_item). **The example below still needs to be tested and validated**.

## Description

Provides a DynamoDB table item resource

-> **Note:** This resource is not meant to be used for managing large amounts of data in your table, it is not designed to scale.
  You should perform **regular backups** of all data in the table, see [AWS docs for more](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/BackupRestore.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_dynamodb_table_item
  values:
    hash_key: << hash_key of an aws_dynamodb_table >>
    item: |
      {
        "exampleHashKey": {"S": "something"},
        "one": {"N": "11111"},
        "two": {"N": "22222"},
        "three": {"N": "33333"},
        "four": {"N": "44444"}
      }
    table_name: << name of an aws_dynamodb_table >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_item#argument-reference) for the arguments accepted by the `aws_dynamodb_table_item` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_item#attributes-reference) for the attributes exported by the `aws_dynamodb_table_item` resource.
