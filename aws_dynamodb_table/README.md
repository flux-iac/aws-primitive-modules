
# Primitive Module: aws_dynamodb_table

This is the Weave TF-controller primitive module for the resource `aws_dynamodb_table`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table). **The example below still needs to be tested and validated**.

## Description

Provides a DynamoDB table resource.

~> **Note:** We recommend using `lifecycle` [`ignore_changes`](https://www.terraform.io/docs/configuration/meta-arguments/lifecycle.html#ignore_changes) for `read_capacity` and/or `write_capacity` if there's [autoscaling policy](/docs/providers/aws/r/appautoscaling_policy.html) attached to the table.

~> **Note:** When using [aws_dynamodb_table_replica](/docs/providers/aws/r/dynamodb_table_replica.html) with this resource, use `lifecycle` [`ignore_changes`](https://www.terraform.io/docs/configuration/meta-arguments/lifecycle.html#ignore_changes) for `replica`, _e.g._, `lifecycle { ignore_changes = [replica] }`.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: basic-dynamodb-table
  namespace: flux-system
spec:
  path: aws_dynamodb_table
  values:
    attribute:
    - name: UserId
      type: S
    - name: GameTitle
      type: S
    - name: TopScore
      type: "N"
    billing_mode: PROVISIONED
    global_secondary_index:
      hash_key: GameTitle
      name: GameTitleIndex
      projection_type: INCLUDE
      range_key: TopScore
      read_capacity: 10
      write_capacity: 10
    hash_key: UserId
    name: GameScores
    range_key: GameTitle
    read_capacity: 20
    tags:
      Environment: production
      Name: dynamodb-table-1
    ttl:
      attribute_name: TimeToExist
      enabled: false
    write_capacity: 20
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table#argument-reference) for the arguments accepted by the `aws_dynamodb_table` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table#attributes-reference) for the attributes exported by the `aws_dynamodb_table` resource.
