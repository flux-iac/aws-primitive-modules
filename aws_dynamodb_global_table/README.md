
# Primitive Module: aws_dynamodb_global_table

This is the Weave TF-controller primitive module for the resource `aws_dynamodb_global_table`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_global_table). **The example below still needs to be tested and validated**.

## Description

Manages [DynamoDB Global Tables V1 (version 2017.11.29)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html). These are layered on top of existing DynamoDB Tables.

~> **NOTE:** To instead manage [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html), use the [`aws_dynamodb_table` resource](/docs/providers/aws/r/dynamodb_table.html) `replica` configuration block.

~> Note: There are many restrictions before you can properly create DynamoDB Global Tables in multiple regions. See the [AWS DynamoDB Global Table Requirements](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables_reqs_bestpractices.html) for more information.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: my-table
  namespace: flux-system
spec:
  path: aws_dynamodb_global_table
  values:
    name: myTable
    provider: ${aws.us-east-1}
    replica:
    - region_name: us-east-1
    - region_name: us-west-2
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_global_table#argument-reference) for the arguments accepted by the `aws_dynamodb_global_table` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_global_table#attributes-reference) for the attributes exported by the `aws_dynamodb_global_table` resource.
